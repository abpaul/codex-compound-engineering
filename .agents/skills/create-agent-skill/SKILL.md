---
name: create-agent-skill
description: "Create or edit Codex skills with practical structure and naming guidance"
---

# Codex Command Skill

This skill is the Codex equivalent of `/create-agent-skill` from Every's compound-engineering plugin.
Invoke it with `$create-agent-skill`.
Argument hint: `[skill description or requirements]`

Create or update a skill for: `$ARGUMENTS`.

Use this checklist:

1. Pick a kebab-case skill name.
2. Create `.agents/skills/<name>/SKILL.md`.
3. Add frontmatter with `name` and a concrete `description` (what + when to use).
4. Keep instructions action-oriented with clear workflow steps.
5. Reference supporting docs in `.agents/references/` when detail is large.
6. Validate the skill by invoking it once and checking for missing files or ambiguous instructions.
