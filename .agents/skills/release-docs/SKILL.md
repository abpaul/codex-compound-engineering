---
name: release-docs
description: "Refresh catalog and command mapping docs so repository documentation matches the current Codex skills set"
---

# Codex Command Skill

This skill is the Codex equivalent of `/release-docs` from Every's utility workflow.
Invoke it with `$release-docs`.
Argument hint: `[optional: --dry-run]`

## Purpose

Regenerate repository documentation artifacts that describe installed skills:

- `.agents/references/catalog.md`
- `.agents/references/command-map.md`
- README counts/snippets (if stale)

## Step 1: Inventory Skills

Collect all skills from `.agents/skills/*/SKILL.md` and extract frontmatter `name` + `description`.

Minimum checks:

```bash
ls -1 .agents/skills/*/SKILL.md >/dev/null
echo "skills: $(ls -1 .agents/skills/*/SKILL.md | wc -l | tr -d ' ')"
```

## Step 2: Rebuild Catalog

Update `.agents/references/catalog.md` to include:

1. total skill count
2. command skills list
3. converted agent skills list
4. native skill count

Keep markdown concise and scan-friendly.

## Step 3: Rebuild Command Map

Update `.agents/references/command-map.md` to map legacy command names to Codex skill invocations.

Must include workflow + utility commands and legacy aliases where applicable (for example `/xcode-test`, `/resolve_pr_parallel`).

## Step 4: Validate Consistency

Verify:

- counts in `README.md` match catalog totals
- all mapped target skills exist in `.agents/skills`
- no duplicate legacy command rows in command map

## Step 5: Output Summary

Return:

```markdown
## Documentation Release Summary

- Total skills: X
- Command skills: Y
- Agent skills: Z
- Native skills: N

Updated files:
- .agents/references/catalog.md
- .agents/references/command-map.md
- README.md (if counts were stale)
```

## Dry Run Mode

If `--dry-run` is provided:

- compute inventory and proposed changes
- show what would change
- do not modify files
