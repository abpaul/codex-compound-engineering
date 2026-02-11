#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_FILE="${SCRIPT_DIR}/../AGENTS.md"
DEST_FILE="${CODEX_HOME:-$HOME/.codex}/AGENTS.md"
FORCE=0
DRY_RUN=0
BACKUP=1

usage() {
  cat <<'USAGE'
Install global Codex AGENTS.md.

Usage:
  scripts/install-agents.sh [--force] [--dry-run] [--no-backup] [--dest PATH]

Options:
  --force     Replace existing destination AGENTS.md
  --dry-run   Print planned operation without writing
  --no-backup Do not create a timestamped .bak before replacing
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
    --no-backup)
      BACKUP=0
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

dest_has_non_whitespace=0
if [[ -f "$DEST_FILE" ]]; then
  if grep -q '[^[:space:]]' "$DEST_FILE"; then
    dest_has_non_whitespace=1
  fi
fi

if [[ -f "$DEST_FILE" && "$FORCE" -ne 1 && "$dest_has_non_whitespace" -eq 1 ]]; then
  echo "skip  AGENTS.md already exists at ${DEST_FILE} (use --force to replace)"
  exit 0
fi

if [[ -f "$DEST_FILE" && "$FORCE" -ne 1 && "$dest_has_non_whitespace" -eq 0 ]]; then
  echo "info  AGENTS.md exists but is empty at ${DEST_FILE}; replacing"
fi

if [[ "$DRY_RUN" -eq 1 ]]; then
  echo "copy  ${SOURCE_FILE} -> ${DEST_FILE}"
  exit 0
fi

if [[ -f "$DEST_FILE" && "$BACKUP" -eq 1 ]]; then
  timestamp="$(date -u +"%Y%m%dT%H%M%SZ")"
  backup_path="${DEST_FILE}.bak.${timestamp}"
  cp "$DEST_FILE" "$backup_path"
  echo "backup ${DEST_FILE} -> ${backup_path}"
fi

cp "$SOURCE_FILE" "$DEST_FILE"
echo "Installed global AGENTS.md to ${DEST_FILE}"
