#!/usr/bin/env bash
# ESL Bomb Squad DEMO (6 easy modules). Served on the Tailscale IP only: not reachable off-tailnet.
set -euo pipefail
cd "$(dirname "$0")"
TS_IP="$(tailscale ip -4 | head -n1)"
PORT="${PORT:-8735}"
echo "Starting ESL Bomb Squad DEMO on http://${TS_IP}:${PORT}/ (tailnet-only)"
exec python3 -m http.server "$PORT" --bind "$TS_IP" --directory web
