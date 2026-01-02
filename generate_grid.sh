#!/usr/bin/env bash
# Generate a large PNG snapshot of the /grid page into _site/images/grid.png.
#
# What it does:
# - Starts the site with `bundle exec jekyll serve` on GRID_PORT (default 4001)
# - Waits for the /grid/ page to be reachable
# - Uses headless Chromium/Chrome to capture http://127.0.0.1:$GRID_PORT/grid/
#
# Tunables:
# - GRID_PORT            (default: 4001)
# - GRID_WIDTH           (default: 3840)   Output width in pixels (after cropping)
# - GRID_HEIGHT          (default: 16000)  Output height in pixels (after cropping)
# - GRID_SCALE           (default: 4)      Device scale factor; higher scales zoom in while keeping the output size
# - GRID_VIEW_MIN        (default: 1600)   Minimum CSS viewport width to avoid squeezing the grid
# - GRID_CROP_WHITESPACE (default: 1)      Auto-crop whitespace after capture (0 to disable)
# - GRID_PATH            (default: /grid/)
# - GRID_DEST            (default: _site/images/grid.png)

set -Eeuo pipefail

# Ensure we run from the repository root (this script lives at repo root).
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${ROOT_DIR}"

SITE_DIR="_site"
DEST="${GRID_DEST:-${SITE_DIR}/images/grid.png}"
WIDTH="${GRID_WIDTH:-3840}"
HEIGHT="${GRID_HEIGHT:-16000}"
SCALE="${GRID_SCALE:-4}"
VIEW_MIN="${GRID_VIEW_MIN:-1600}"
CROP_WHITESPACE="${GRID_CROP_WHITESPACE:-1}"
PORT="${GRID_PORT:-4001}"
GRID_PATH="${GRID_PATH:-/grid/}"
URL="http://127.0.0.1:${PORT}${GRID_PATH}"

# Derive viewport (CSS) size so that device scale factor can zoom content to the target output size.
CSS_WIDTH=$(( (WIDTH + SCALE - 1) / SCALE ))
CSS_HEIGHT=$(( (HEIGHT + SCALE - 1) / SCALE ))
if (( CSS_WIDTH < VIEW_MIN )); then
  CSS_WIDTH=${VIEW_MIN}
fi

mkdir -p "${SITE_DIR}/images"

# Prefer Chromium/Chrome for headless capture; allow override via BROWSER_BIN.
browser_candidates=(
  "${BROWSER_BIN:-}"
  chromium
  chromium-browser
  google-chrome
  google-chrome-stable
)

BROWSER_BIN_RESOLVED=""
for candidate in "${browser_candidates[@]}"; do
  [[ -z "${candidate}" ]] && continue
  if command -v "${candidate}" >/dev/null 2>&1; then
    BROWSER_BIN_RESOLVED="$(command -v "${candidate}")"
    break
  fi
done

if [[ -z "${BROWSER_BIN_RESOLVED}" ]]; then
  echo "A Chromium/Chrome-compatible browser is required for headless capture. Install chromium or set BROWSER_BIN." >&2
  exit 1
fi

if ! command -v bundle >/dev/null 2>&1; then
  echo "Bundler (bundle) is required to run jekyll; please install bundler and project gems." >&2
  exit 1
fi

if ! command -v curl >/dev/null 2>&1; then
  echo "curl is required to poll the local server; please install curl." >&2
  exit 1
fi

echo "Starting jekyll serve on port ${PORT}..."
SERVE_LOG=$(mktemp)
bundle exec jekyll serve --config _config.yml --incremental --host 127.0.0.1 --port "${PORT}" >"${SERVE_LOG}" 2>&1 &
SERVER_PID=$!
TMP_PROFILE=$(mktemp -d)

on_error() {
  local exit_code=$?
  echo "ERROR: generate_grid.sh failed (exit ${exit_code})." >&2
  if [[ -f "${SERVE_LOG}" ]]; then
    echo "--- jekyll serve log (tail) ---" >&2
    tail -n 200 "${SERVE_LOG}" >&2 || true
    echo "--- end log ---" >&2
  fi
  exit "${exit_code}"
}
trap on_error ERR

cleanup() {
  kill "${SERVER_PID}" 2>/dev/null || true
  rm -rf "${TMP_PROFILE}" 2>/dev/null || true
  rm -f "${SERVE_LOG}" 2>/dev/null || true
}
trap cleanup EXIT

# Wait for server to be ready
for _ in {1..60}; do
  # If the server process died, surface its log immediately.
  if ! kill -0 "${SERVER_PID}" 2>/dev/null; then
    echo "Jekyll server exited unexpectedly." >&2
    echo "--- jekyll serve log (tail) ---" >&2
    tail -n 200 "${SERVE_LOG}" >&2 || true
    exit 1
  fi

  if curl -fsS "${URL}" >/dev/null; then
    break
  fi
  sleep 0.5
done

if ! curl -fsS "${URL}" >/dev/null; then
  echo "Timed out waiting for ${URL} to become reachable." >&2
  echo "--- jekyll serve log (tail) ---" >&2
  tail -n 200 "${SERVE_LOG}" >&2 || true
  exit 1
fi

echo "Capturing ${URL} at ${WIDTH}x${HEIGHT} to ${DEST}..."
echo "Using browser: ${BROWSER_BIN_RESOLVED}"
echo "Viewport (CSS): ${CSS_WIDTH}x${CSS_HEIGHT} @ scale ${SCALE}"
"${BROWSER_BIN_RESOLVED}" \
  --headless \
  --disable-gpu \
  --no-sandbox \
  --user-data-dir="${TMP_PROFILE}" \
  --force-device-scale-factor="${SCALE}" \
  --window-size="${CSS_WIDTH},${CSS_HEIGHT}" \
  --screenshot="${DEST}" \
  "${URL}"
echo "Saved screenshot to ${DEST}"

if [[ "${CROP_WHITESPACE}" -eq 1 ]]; then
  echo "Cropping whitespace..."
  python3 - <<'PY'
from PIL import Image
import math, sys
path = "_site/images/grid.png"
im = Image.open(path).convert("RGB")
w, h = im.size
# Estimate background color from edges (corners + midpoints top/bottom).
edge_coords = [(0,0),(w-1,0),(0,h-1),(w-1,h-1),(w//2,0),(w//2,h-1)]
bg = [sum(im.getpixel(c)[i] for c in edge_coords)//len(edge_coords) for i in range(3)]
tol = 18  # color distance threshold for considering a pixel as background
pixels = im.load()
xs, ys = [], []
thr2 = tol * tol
for y in range(h):
    for x in range(w):
        r, g, b = pixels[x, y]
        dr, dg, db = r - bg[0], g - bg[1], b - bg[2]
        if dr*dr + dg*dg + db*db > thr2:
            xs.append(x); ys.append(y)
if xs and ys:
    bbox = (min(xs), min(ys), max(xs)+1, max(ys)+1)
    cropped = im.crop(bbox)
    cropped.save(path)
    print(f"Cropped to {cropped.size} from {w}x{h}")
else:
    print("No content detected to crop.")
PY
fi
