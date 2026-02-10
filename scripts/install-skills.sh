#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_ROOT="${SCRIPT_DIR}/../.agents/skills"
DEST_ROOT="${CODEX_SKILLS_DEST:-${HOME}/.agents/skills}"

MODE="link"
FORCE=0
DRY_RUN=0

usage() {
  cat <<'USAGE'
Install compound-engineering Codex skills.

Usage:
  scripts/install-skills.sh [--copy] [--force] [--dry-run] [--dest PATH]

Options:
  --copy      Copy skill folders instead of symlinking
  --force     Replace existing destination skills with same name
  --dry-run   Print planned operations without writing
  --dest      Destination root (default: ~/.agents/skills)
USAGE
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --copy)
      MODE="copy"
      ;;
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
  echo "Source skills directory not found: $SOURCE_ROOT" >&2
  exit 1
fi

mkdir -p "$DEST_ROOT"

installed=0
skipped=0

for skill_dir in "$SOURCE_ROOT"/*; do
  [[ -d "$skill_dir" ]] || continue
  [[ -f "$skill_dir/SKILL.md" ]] || continue

  skill_name="$(basename "$skill_dir")"
  target="${DEST_ROOT}/${skill_name}"

  if [[ -e "$target" || -L "$target" ]]; then
    if [[ "$FORCE" -ne 1 ]]; then
      echo "skip  ${skill_name} (already exists; use --force to replace)"
      skipped=$((skipped + 1))
      continue
    fi

    if [[ "$DRY_RUN" -eq 1 ]]; then
      echo "rm    ${target}"
    else
      rm -rf "$target"
    fi
  fi

  if [[ "$MODE" == "copy" ]]; then
    if [[ "$DRY_RUN" -eq 1 ]]; then
      echo "copy  ${skill_name} -> ${target}"
    else
      cp -R "$skill_dir" "$target"
    fi
  else
    if [[ "$DRY_RUN" -eq 1 ]]; then
      echo "link  ${skill_name} -> ${target}"
    else
      ln -s "$skill_dir" "$target"
    fi
  fi

  installed=$((installed + 1))
done

echo
echo "Done."
echo "Installed: ${installed}"
echo "Skipped:   ${skipped}"
echo "Destination: ${DEST_ROOT}"
