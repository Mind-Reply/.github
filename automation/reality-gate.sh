#!/usr/bin/env bash
set -euo pipefail

# Read-only production probe. Configure TARGET_URL in the calling workflow.
# This intentionally never mutates DNS, deployments, billing or data.
TARGET_URL="${TARGET_URL:?TARGET_URL is required}"
EXPECTED_STATUS="${EXPECTED_STATUS:-200}"

response="$(curl -sS -L -o /dev/null -w '%{http_code} %{url_effective}' --connect-timeout 10 --max-time 30 "$TARGET_URL")"
status="${response%% *}"
final_url="${response#* }"

if [[ "$status" != "$EXPECTED_STATUS" ]]; then
  echo "REALITY_GATE=BLOCKED status=$status target=$TARGET_URL final=$final_url"
  exit 1
fi

echo "REALITY_GATE=VERIFIED status=$status target=$TARGET_URL final=$final_url checked_at=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
