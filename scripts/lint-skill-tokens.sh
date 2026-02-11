#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
STRICT=0

if [[ "${1:-}" == "--strict" ]]; then
  STRICT=1
fi

default_budget=800
orchestrator_budget=1000
high_complexity_budget=1200

violations=0
echo "Skill token lint (approx tokens = chars/4)"
echo
printf "%-45s %10s %10s %8s\n" "Skill" "Tokens~" "Budget" "Status"
printf "%-45s %10s %10s %8s\n" "-----" "------" "------" "------"

while IFS= read -r -d '' file; do
  rel="${file#$ROOT_DIR/}"
  chars=$(wc -c < "$file")
  tokens=$(( (chars + 3) / 4 ))
  budget=$default_budget

  case "$rel" in
    .agents/skills/workflow-autonomous/SKILL.md)
      budget=$orchestrator_budget
      ;;
    .agents/skills/frontend-design/SKILL.md)
      budget=$high_complexity_budget
      ;;
  esac

  status="OK"
  if (( tokens > budget )); then
    status="OVER"
    violations=$((violations + 1))
  fi

  printf "%-45s %10d %10d %8s\n" "$rel" "$tokens" "$budget" "$status"
done < <(find "$ROOT_DIR/.agents/skills" -maxdepth 2 -type f -name "SKILL.md" -print0 | sort -z)

echo
echo "Violations: $violations"

if (( STRICT == 1 && violations > 0 )); then
  echo "Token lint failed in strict mode."
  exit 1
fi
