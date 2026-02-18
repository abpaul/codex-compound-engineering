---
name: workflow-compound
description: "Capture solved problems as reusable solution docs and update institutional knowledge artifacts."
---

# Workflow Compound

Use this skill after fixes are verified and lessons should be preserved for reuse.

## Workflow

1. Identify a recently solved issue.
2. Write structured solution docs in `docs/solutions/`.
3. Include root cause, resolution, prevention, and verification.
4. Link related sprint docs/issues where relevant.
5. Validate frontmatter/schema before finalizing.

## Rails Touchpoints

When the solution impacts Rails surfaces, record:

- affected controllers/models/jobs/services
- Turbo/Stimulus interaction implications
- Phlex primitive/variant API decisions and reuse impact
- Tailwind + daisyUI token-layering decisions and theme overrides (including default-theme rejection)
- custom brand palette/fonts/illustration token mappings
- MD3 structural guidance decisions (anatomy/state/accessibility/interaction) without visual identity cloning
- screenshot-polish evidence outcomes across affected web/native shells
- migration/data implications and rollout constraints
- test coverage added (model/request/system/job)

## Context Discipline

- Capture only durable learnings; avoid copying transient debug logs or one-off local commands.
