---
name: setup-project-docs
description: "Scaffold a repository with AGENTS.md + docs/brainstorms + docs/solutions + docs/sprints, and enforce a full available-skills section in AGENTS."
---

# Setup Project Docs

Use this skill to initialize a repository for streamlined compound engineering.

## Required Output Layout

```text
your-project/
├── AGENTS.md
├── docs/
│   ├── brainstorms/
│   ├── solutions/
│   └── sprints/
└── README.md
```

## Critical Requirements

1. `AGENTS.md` must be created if missing.
2. `AGENTS.md` must either:
   - copy the global baseline (`${CODEX_HOME:-~/.codex}/AGENTS.md`), or
   - be generated fresh with equivalent baseline rules.
3. `AGENTS.md` must include a complete "Available Skills" section that lists all skills currently installed/available to the project.
4. Sprint-first structure is mandatory: use `docs/sprints/` (not split `docs/plans/` + `todos/`).
5. Starter docs must reflect the default architecture baseline: Rails server-rendered + Phlex + Stimulus + Turbo/Hotwire Native + token-first design system.

## Inputs

- Target repository path (default: current directory)
- Optional project summary/context

## Workflow

1. Confirm target path and detect existing docs structure.
2. Create missing directories:
   - `docs/brainstorms`
   - `docs/solutions`
   - `docs/sprints`
3. Create or update `AGENTS.md`:
   - Prefer copying `${CODEX_HOME:-~/.codex}/AGENTS.md` when available.
   - If no global file exists, generate from the bundled baseline conventions.
   - Add project-specific sections (repo map, commands, risk areas).
   - Include project architecture defaults and approved deviations if known.
   - Build/update "Available Skills" from `.agents/skills/*/SKILL.md` metadata.
4. Create a starter sprint doc if none exists:
   - `docs/sprints/YYYY-MM-DD-sprint-001-bootstrap.md`
   - Use `assets/sprint-template.md`.
5. Print concise summary:
   - created vs existing paths
   - AGENTS source used (copied vs generated)
   - count of skills indexed in AGENTS

## AGENTS Skill Index Rules

- Include every skill visible under `.agents/skills` (folder with `SKILL.md`).
- For each skill, capture:
  - skill invocation (`$skill-name`)
  - description
  - when-to-use guidance
- Keep the section readable as a single table.
- Do not omit skills because they look niche.

## Success Criteria

- Repo has the required directory layout.
- `AGENTS.md` exists at repo root.
- `AGENTS.md` includes a complete available-skills table.
- A starter sprint file exists in `docs/sprints/`.
