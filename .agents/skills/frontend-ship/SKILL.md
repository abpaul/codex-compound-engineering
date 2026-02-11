---
name: frontend-ship
description: "Orchestrate frontend design, implementation, review, and browser evidence with conditional depth."
---

# Frontend Ship

Use this skill when you want a single command to deliver a frontend change end-to-end.

## Inputs

- scope description
- target mode (`fast` or `deep`)

If no mode is provided, default to `fast`.

## Workflow

1. Confirm scope and choose mode using `frontend-design/assets/mode-matrix.md`.
2. Run `$frontend-design` with selected mode.
3. Always run `$review-frontend-quality`.
4. If mode is `deep` or change is high-visibility, also run:
   - `$design-fidelity`
   - `$web-automation-testing`
5. Summarize:
   - what changed
   - quality checks run
   - unresolved risks and follow-ups

## Token Discipline

- Do not preload all design references.
- Load only the assets needed by current mode.
- Escalate from `fast` to `deep` only when required.
