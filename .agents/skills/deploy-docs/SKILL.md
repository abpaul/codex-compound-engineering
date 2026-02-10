---
name: deploy-docs
description: "Validate documentation assets and prepare GitHub Pages deployment for this Codex skills repository"
---

# Codex Command Skill

This skill is the Codex equivalent of `/deploy-docs` from Every's compound-engineering workflow.
Invoke it with `$deploy-docs`.

## Purpose

Validate docs artifacts in this repository and provide deploy-ready instructions for GitHub Pages.

## Step 1: Validate Repository Docs Surface

Run these checks:

```bash
# Core docs
test -f README.md && echo "ok README.md"
test -f AGENTS.md && echo "ok AGENTS.md"

# Skills inventory
ls -1 .agents/skills/*/SKILL.md >/dev/null && echo "ok skills present"
echo "skills: $(ls -1 .agents/skills/*/SKILL.md | wc -l | tr -d ' ')"

# References
test -f .agents/references/catalog.md && echo "ok catalog.md"
test -f .agents/references/command-map.md && echo "ok command-map.md"
```

If a `docs/` folder exists, also validate static pages:

```bash
if [ -d docs ]; then
  find docs -name "*.html" -type f | wc -l | awk '{print "html pages: "$1}'
fi
```

## Step 2: Check Working Tree

```bash
git status --porcelain
```

If there are uncommitted docs changes, call them out before deployment.

## Step 3: GitHub Pages Deployment Guidance

If `docs/` exists and you want Pages from this repo, use a workflow that uploads `docs/` as the Pages artifact.

If this repo is markdown-only, recommend publishing the repository directly (README + references) or adding a docs build pipeline first.

## Step 4: Report Readiness

Provide a concise summary:

```markdown
## Deployment Readiness

- Core docs present: [yes/no]
- Skills indexed: [count]
- References present: [yes/no]
- Working tree clean: [yes/no]
- `docs/` static site available: [yes/no]

### Next Steps
1. Commit pending docs changes (if any)
2. Ensure GitHub Pages workflow points to `docs/` artifact
3. Trigger workflow on `main` (or manual dispatch)
```
