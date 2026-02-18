---
name: repo-tooling
description: "Manage repository workflow utilities including worktrees and linting quality gates."
---

# Repo Tooling

Use this skill when repository operations (worktrees, quality gates, CI-prep checks) need a repeatable operational workflow.

## Coverage

- worktree lifecycle management
- lint and quality checks before merge
- skill token budget linting via `scripts/lint-skill-tokens.sh`

## Workflow

1. Confirm branch/worktree intent and current git state.
2. Create/switch worktree with deterministic naming and path conventions.
3. Run focused quality gates for touched surfaces first, then broader gates if risk requires.
4. Run repository policy checks (formatting, lint, tests, token lint where relevant).
5. Summarize pass/fail results with exact failing commands and next actions.
6. Remove temporary worktrees only after work is merged or explicitly abandoned.

## Rails Touchpoints

When the repo includes Rails surfaces, include these checks where applicable:

- `bin/rails zeitwerk:check`
- `bin/rails db:migrate:status` for migration-heavy changes
- targeted model/controller/system tests for touched paths
- Turbo/Stimulus smoke checks for UI-affecting diffs

## Context Discipline

- Start from changed files + CI failures; avoid full-repo command storms by default.
- Escalate from focused checks to full suites only when failures suggest systemic risk.
