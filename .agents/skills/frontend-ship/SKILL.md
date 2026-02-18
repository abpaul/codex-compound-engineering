---
name: frontend-ship
description: "Orchestrate frontend design, implementation, review, and browser evidence with conditional depth."
---

# Frontend Ship

Use this skill when you want a single command to deliver a frontend change end-to-end.

## Inputs

- scope description
- target mode (`fast` or `deep`)
- shell coverage (`desktop-web`, `mobile-web`, `ios-native-shell`, `android-native-shell`)

If no mode is provided, default to `fast`.
If no shell coverage is provided, include desktop + mobile web at minimum and flag native shell coverage as follow-up.

## Workflow

1. Confirm scope and choose mode using `frontend-design/assets/mode-matrix.md`.
2. Run `$frontend-design` with selected mode.
3. Run `$material3-ui-craft` to enforce token/anatomy/state consistency.
4. Run screenshot polish evidence collection for requested shells.
5. Always run `$review-frontend-quality`.
6. If mode is `deep` or change is high-visibility, also run:
   - `$design-fidelity`
   - `$web-automation-testing`
7. Summarize:
   - what changed
   - quality checks run
   - screenshot evidence captured
   - unresolved risks and follow-ups

## Token Discipline

- Do not preload all design references.
- Load only the assets needed by current mode.
- Escalate from `fast` to `deep` only when required.
- Ensure Tailwind + daisyUI are token-layered and default daisyUI themes are not shipped unchanged.
- Reject ad-hoc styling that bypasses shared tokens/components.
