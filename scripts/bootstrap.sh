#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

INSTALL_MODE_ARGS=()
FORCE=0
SKIP_CONTEXT7=0
SKIP_AGENTS=0
SKIP_REFERENCES=0
DEST_OVERRIDE=""

usage() {
  cat <<'USAGE'
Bootstrap codex-compound-engineering on this machine.

Usage:
  scripts/bootstrap.sh [--copy] [--force] [--skip-context7] [--skip-agents] [--skip-references] [--dest PATH]

Options:
  --copy            Copy skills instead of symlinking
  --force           Replace existing skills with same names
  --skip-context7   Skip adding Context7 to Codex config.toml
  --skip-agents     Skip installing global AGENTS.md
  --skip-references Skip installing shared references to ~/.agents/references
  --dest PATH       Install skills to PATH instead of ~/.agents/skills
USAGE
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --copy)
      INSTALL_MODE_ARGS+=("--copy")
      ;;
    --force)
      FORCE=1
      ;;
    --skip-context7)
      SKIP_CONTEXT7=1
      ;;
    --skip-agents)
      SKIP_AGENTS=1
      ;;
    --skip-references)
      SKIP_REFERENCES=1
      ;;
    --dest)
      shift
      DEST_OVERRIDE="$1"
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

if [[ "$FORCE" -eq 1 ]]; then
  INSTALL_MODE_ARGS+=("--force")
fi

if [[ -n "$DEST_OVERRIDE" ]]; then
  INSTALL_MODE_ARGS+=("--dest" "$DEST_OVERRIDE")
fi

"${SCRIPT_DIR}/install-skills.sh" "${INSTALL_MODE_ARGS[@]}"

if [[ "$SKIP_REFERENCES" -eq 1 ]]; then
  echo "Skipping shared reference installation."
else
  REF_ARGS=()
  if [[ "$FORCE" -eq 1 ]]; then
    REF_ARGS+=("--force")
  fi
  "${SCRIPT_DIR}/install-references.sh" "${REF_ARGS[@]}"
fi

if [[ "$SKIP_AGENTS" -eq 1 ]]; then
  echo "Skipping global AGENTS.md installation."
else
  AGENTS_ARGS=()
  if [[ "$FORCE" -eq 1 ]]; then
    AGENTS_ARGS+=("--force")
  fi
  "${SCRIPT_DIR}/install-agents.sh" "${AGENTS_ARGS[@]}"
fi

if [[ "$SKIP_CONTEXT7" -eq 1 ]]; then
  echo "Skipping Context7 MCP configuration."
else
  "${SCRIPT_DIR}/install-context7.sh"
fi

echo
echo "Bootstrap complete."
