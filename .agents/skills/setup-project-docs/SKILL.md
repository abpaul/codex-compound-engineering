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
    ├── 001-ready-p1-create-in-depth-prd.md
    └── 002-pending-p1-create-implementation-plan.md
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
   - Start from the global baseline (`.codex/AGENTS.md` when available, otherwise top-level `AGENTS.md`).
   - Do not leave it as a generic copy. Tailor it to the target repository by inspecting local context (`README.md`, `Gemfile`, `package.json`, `pyproject.toml`, `go.mod`, `Dockerfile`, CI config, and key app directories).
   - Include project-specific sections:
     - project overview and goals
     - actual stack and runtime commands
     - repo map (where key code, tests, docs, and scripts live)
     - domain and safety constraints (auth, billing, data, production-risk areas)
     - workflow expectations (plan/work/review/compound) adapted to the repo
   - If `AGENTS.md` already exists, keep it and only add missing project-specific context when requested.
4. Create starter todo files if missing:
   - `todos/001-ready-p1-create-in-depth-prd.md`
   - `todos/002-pending-p1-create-implementation-plan.md`
5. Verify final structure and report created vs pre-existing paths.

## Repo-Specific AGENTS Template

When generating a new project `AGENTS.md`, use the global style as a base but anchor it in repo facts. A good minimum structure is:

```markdown
# AGENTS

## Project Overview
- What this project does
- Who it serves
- Current project phase or priorities

## Tech Stack
- Frameworks/languages actually used in this repo
- Data stores and infra dependencies

## Repo Map
- `app/` or `src/`: product code
- `test/`, `spec/`, or `__tests__/`: automated tests
- `docs/`: plans, brainstorms, solutions
- `scripts/`: automation and setup

## Commands
- Setup command(s)
- Test command(s)
- Lint/format command(s)
- Dev/run command(s)

## Engineering Defaults
- Small reviewable diffs
- Follow existing patterns
- Validate inputs and edge cases
- Run focused verification before finishing

## Workflow
- Plan -> Work -> Review -> Compound
- Where to write plans and learnings in this repo

## Safety
- No destructive git actions unless requested
- No secrets in commits
- Ask before production-sensitive changes
```

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

# Create in-depth PRD

## Problem Statement
Establish a complete product requirements document so implementation can proceed with clear scope, priorities, and success metrics.

## Acceptance Criteria
- [ ] Document target users, jobs-to-be-done, and non-goals
- [ ] Define requirements, constraints, and edge cases
- [ ] Include measurable success metrics and rollout considerations
- [ ] Capture open questions and decision owners
```

For the second file, set:

- `status: pending`
- `priority: p1`
- `issue_id: "002"`
- title `# Create implementation plan`

Starter content should be realistic and actionable. For example:

- File `001-ready-p1-create-in-depth-prd.md`
  - title `# Create in-depth PRD`
  - problem statement focused on defining users, goals, non-goals, constraints, and measurable success metrics
  - acceptance criteria that include current-state analysis, detailed requirements, edge cases, rollout considerations, and open questions
- File `002-pending-p1-create-implementation-plan.md`
  - title `# Create implementation plan`
  - problem statement focused on converting the PRD into milestones, dependencies, risks, and test strategy
  - acceptance criteria that include architecture notes, phased delivery plan, verification approach, and handoff checklist

## Success Criteria

- Standard directory layout exists
- `AGENTS.md` exists at project root and includes repo-specific context (not generic placeholders)
- Two starter todo files exist in `todos/`
- Output includes a concise tree and next steps
