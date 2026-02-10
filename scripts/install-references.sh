#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_ROOT="${SCRIPT_DIR}/../.agents/references"
DEST_ROOT="${CODEX_REFERENCES_DEST:-${HOME}/.agents/references}"
FORCE=0
DRY_RUN=0

usage() {
  cat <<'USAGE'
Install shared references (style guides and mappings).

Usage:
  scripts/install-references.sh [--force] [--dry-run] [--dest PATH]

Options:
  --force     Replace existing destination references
  --dry-run   Print planned operations without writing
  --dest      Destination root (default: ~/.agents/references)
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
      DEST_ROOT="$1"
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

if [[ ! -d "$SOURCE_ROOT" ]]; then
  echo "Source references directory not found: $SOURCE_ROOT" >&2
  exit 1
fi

mkdir -p "$(dirname "$DEST_ROOT")"

if [[ -e "$DEST_ROOT" ]]; then
  if [[ "$FORCE" -ne 1 ]]; then
    echo "skip  references already exist at ${DEST_ROOT} (use --force to replace)"
    exit 0
  fi

  if [[ "$DRY_RUN" -eq 1 ]]; then
    echo "rm    ${DEST_ROOT}"
  else
    rm -rf "$DEST_ROOT"
  fi
fi

if [[ "$DRY_RUN" -eq 1 ]]; then
  echo "copy  ${SOURCE_ROOT} -> ${DEST_ROOT}"
  exit 0
fi

cp -R "$SOURCE_ROOT" "$DEST_ROOT"
echo "Installed references to ${DEST_ROOT}"
