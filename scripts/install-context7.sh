#!/usr/bin/env bash
set -euo pipefail

CONFIG_FILE="${CODEX_HOME:-$HOME/.codex}/config.toml"

SNIPPET='[mcp_servers.context7]
url = "https://mcp.context7.com/mcp"'

mkdir -p "$(dirname "$CONFIG_FILE")"
touch "$CONFIG_FILE"

if grep -q "\[mcp_servers\.context7\]" "$CONFIG_FILE"; then
  echo "context7 already configured in ${CONFIG_FILE}"
  exit 0
fi

{
  echo
  echo "# Added by codex-compound-engineering installer"
  echo "$SNIPPET"
} >> "$CONFIG_FILE"

echo "Added context7 MCP server to ${CONFIG_FILE}"
