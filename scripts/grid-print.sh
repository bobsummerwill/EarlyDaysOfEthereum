#!/usr/bin/env bash
# Generate a PNG snapshot of the /grid-print page into _site/images/grid.png.
#
# This script produces a high-resolution (200 DPI) image suitable for printing
# at 3' x 6' poster size (7200x14400 pixels).
#
# What it does:
# - Starts the site with `bundle exec jekyll serve` on GRID_PORT (default 4001)
# - Waits for the /grid-print/ page to be reachable
# - Uses headless Chromium/Chrome to capture a full-page screenshot
#
# Tunables (environment variables):
# - GRID_PORT            (default: 4001)
# - GRID_PATH            (default: /grid-print/)
# - GRID_DEST            (default: _site/images/grid.png)
# - BROWSER_BIN          (override browser path)
#
# Usage:
#   ./scripts/grid-print.sh
#   GRID_PORT=4002 ./scripts/grid-print.sh

set -Eeuo pipefail

# Ensure we run from the repository root.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
cd "${ROOT_DIR}"

SITE_DIR="_site"
DEST="${GRID_DEST:-${SITE_DIR}/images/grid.png}"
PORT="${GRID_PORT:-4001}"
GRID_PATH="${GRID_PATH:-/grid-print/}"
URL="http://127.0.0.1:${PORT}${GRID_PATH}"

# Screenshot dimensions: 7200x14400 = 200 DPI at 3'x6'
WINDOW_WIDTH=7200
WINDOW_HEIGHT=14400

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
  echo "A Chromium/Chrome-compatible browser is required for headless capture." >&2
  echo "Install chromium or set BROWSER_BIN environment variable." >&2
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
  echo "ERROR: grid-print.sh failed (exit ${exit_code})." >&2
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

# Wait for server to be ready (up to 30 seconds)
echo "Waiting for Jekyll server to start..."
for _ in {1..60}; do
  # If the server process died, surface its log immediately.
  if ! kill -0 "${SERVER_PID}" 2>/dev/null; then
    echo "Jekyll server exited unexpectedly." >&2
    echo "--- jekyll serve log (tail) ---" >&2
    tail -n 200 "${SERVE_LOG}" >&2 || true
    exit 1
  fi

  if curl -fsS "${URL}" >/dev/null 2>&1; then
    break
  fi
  sleep 0.5
done

if ! curl -fsS "${URL}" >/dev/null 2>&1; then
  echo "Timed out waiting for ${URL} to become reachable." >&2
  echo "--- jekyll serve log (tail) ---" >&2
  tail -n 200 "${SERVE_LOG}" >&2 || true
  exit 1
fi

echo "Server ready at ${URL}"

# Generate QR codes for the footer (after Jekyll builds _site)
echo "Generating QR codes..."
curl -s "https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=https://earlydaysofeth.org" -o "${SITE_DIR}/images/qr-earlydaysofeth.png"
curl -s "https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=https://strato.nexus" -o "${SITE_DIR}/images/qr-strato-nexus.png"
echo "QR codes generated."

echo "Waiting 10 seconds for images to load..."
sleep 10

echo "Capturing screenshot..."
echo "  Browser: ${BROWSER_BIN_RESOLVED}"
echo "  Size: ${WINDOW_WIDTH}x${WINDOW_HEIGHT}"
echo "  Output: ${DEST}"

"${BROWSER_BIN_RESOLVED}" \
  --headless \
  --disable-gpu \
  --no-sandbox \
  --user-data-dir="${TMP_PROFILE}" \
  --window-size="${WINDOW_WIDTH},${WINDOW_HEIGHT}" \
  --screenshot="${DEST}" \
  "${URL}"

echo "Screenshot saved to ${DEST}"
echo "Done!"
