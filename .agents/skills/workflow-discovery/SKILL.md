---
name: workflow-discovery
description: "Discover and refine what to build through repo-aware dialogue and structured requirement capture."
---

# Workflow Discovery

Use this skill before planning implementation.

## Workflow

1. Gather feature context and relevant repo patterns.
2. Confirm whether the default architecture baseline applies:
   - Rails server-rendered app
   - Phlex UI components
   - Stimulus client behavior
   - Turbo/Hotwire Native navigation
   - Tailwind + daisyUI usage layered over project semantic tokens (no raw theme shipping)
   - project-specific brand palette/fonts/illustration mapped to tokens
   - MD3-inspired token system with project-owned palette/type/illustration
   - MD3 used as structural guidance only, not copied visual identity
   - screenshot-driven polish loop requirement for changed UI surfaces
3. Ask one question at a time to clarify goals, users, constraints, and success criteria.
4. Propose 2-3 approaches with tradeoffs and recommendation.
5. Write discovery output to `docs/brainstorms/YYYY-MM-DD-<topic>-brainstorm.md`.
6. Validate the document for clarity, scope boundaries, and open questions.
7. Hand off to `workflow-plan`.
