#!/usr/bin/env bash
# Generate a PNG snapshot of the /grid-print page into _site/images/grid.png.
#
# What it does:
# - Starts the site with `bundle exec jekyll serve` on GRID_PORT (default 4001)
# - Waits for the /grid-print/ page to be reachable
# - Uses headless Chromium/Chrome to capture a full-page screenshot
#
# Tunables:
# - GRID_PORT            (default: 4001)
# - GRID_PATH            (default: /grid-print/)
# - GRID_DEST            (default: _site/images/grid.png)

set -Eeuo pipefail

# Ensure we run from the repository root (this script lives at repo root).
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${ROOT_DIR}"

SITE_DIR="_site"
DEST="${GRID_DEST:-${SITE_DIR}/images/grid.png}"
PORT="${GRID_PORT:-4001}"
GRID_PATH="${GRID_PATH:-/grid-print/}"
URL="http://127.0.0.1:${PORT}${GRID_PATH}"

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

echo "Capturing ${URL} to ${DEST}..."
echo "Using browser: ${BROWSER_BIN_RESOLVED}"
echo "Waiting 10 seconds for images to load..."
sleep 10
"${BROWSER_BIN_RESOLVED}" \
  --headless \
  --disable-gpu \
  --no-sandbox \
  --user-data-dir="${TMP_PROFILE}" \
  --window-size=7200,14400 \
  --screenshot="${DEST}" \
  "${URL}"
echo "Saved screenshot to ${DEST}"
