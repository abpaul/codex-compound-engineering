#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_FILE="${SCRIPT_DIR}/../AGENTS.md"
DEST_FILE="${CODEX_HOME:-$HOME/.codex}/AGENTS.md"
FORCE=0
DRY_RUN=0

usage() {
  cat <<'USAGE'
Install global Codex AGENTS.md.

Usage:
  scripts/install-agents.sh [--force] [--dry-run] [--dest PATH]

Options:
  --force     Replace existing destination AGENTS.md
  --dry-run   Print planned operation without writing
  --dest      Destination AGENTS.md path (default: ~/.codex/AGENTS.md)
USAGE
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --force)
      FORCE=1
      ;;
    --dry-run)
      DRY_RUN=1
      ;;
    --dest)
      shift
      DEST_FILE="$1"
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage
      exit 1
      ;;
  esac
  shift
done

if [[ ! -f "$SOURCE_FILE" ]]; then
  echo "Source AGENTS.md not found: $SOURCE_FILE" >&2
  exit 1
fi

mkdir -p "$(dirname "$DEST_FILE")"

if [[ -f "$DEST_FILE" && "$FORCE" -ne 1 ]]; then
  echo "skip  AGENTS.md already exists at ${DEST_FILE} (use --force to replace)"
  exit 0
fi

if [[ "$DRY_RUN" -eq 1 ]]; then
  echo "copy  ${SOURCE_FILE} -> ${DEST_FILE}"
  exit 0
fi

cp "$SOURCE_FILE" "$DEST_FILE"
echo "Installed global AGENTS.md to ${DEST_FILE}"
