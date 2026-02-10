---
name: setup-project-docs
description: "Scaffold a project to the compound loop layout with AGENTS.md, docs/brainstorms, docs/solutions, docs/plans, and todos files. Use when initializing a repo for plan/work/review/compound workflows."
---

# Setup Project Docs

Use this skill to initialize a repository with the standard structure:

```text
your-project/
├── AGENTS.md
├── docs/
│   ├── brainstorms/
│   ├── solutions/
│   └── plans/
└── todos/
    ├── 001-ready-p1-fix-auth.md
    └── 002-pending-p2-add-tests.md
```

## Inputs

- Target project path (default: current directory)
- Optional project summary (for AGENTS.md context)

## Workflow

1. Ensure target directory exists.
2. Create missing directories:
   - `docs/brainstorms`
   - `docs/solutions`
   - `docs/plans`
   - `todos`
3. Create `AGENTS.md` if missing:
   - If local repository has a top-level `AGENTS.md`, copy it.
   - Otherwise create a concise baseline with stack defaults and safety notes.
4. Create starter todo files if missing:
   - `todos/001-ready-p1-fix-auth.md`
   - `todos/002-pending-p2-add-tests.md`
5. Verify final structure and report created vs pre-existing paths.

## Starter Todo Template

Use this structure for starter files:

```markdown
---
status: ready
priority: p1
issue_id: "001"
tags: [bootstrap]
dependencies: []
---

# Fix auth flow

## Problem Statement
Placeholder bootstrap todo.

## Acceptance Criteria
- [ ] Replace placeholder content with real issue details
```

For the second file, set:

- `status: pending`
- `priority: p2`
- `issue_id: "002"`
- title `# Add test coverage`

## Success Criteria

- Standard directory layout exists
- `AGENTS.md` exists at project root
- Two starter todo files exist in `todos/`
- Output includes a concise tree and next steps
