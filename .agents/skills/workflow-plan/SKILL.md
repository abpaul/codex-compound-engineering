---
name: workflow-plan
description: "Transform validated requirements into executable implementation plans with milestones and risk controls."
---

# Workflow Plan

## Workflow

1. Pull context from discovery docs and local patterns.
2. Validate architecture baseline assumptions early:
   - Rails server-rendered flow
   - Phlex component model
   - Stimulus behavior model
   - Turbo/Hotwire Native navigation model
   - Tailwind + daisyUI used only through project semantic tokens
   - project-specific brand palette/fonts/illustration mapped to token roles
   - no default daisyUI theme shipping unchanged
   - MD3-inspired token system with project-owned palette/type/illustration
   - MD3 as anatomy/state/accessibility/interaction reference, not visual identity copy
3. Decide whether external research is needed based on risk/novelty.
4. Produce or update a sprint document in `docs/sprints/` with:
   - architecture approach
   - phased milestones
   - verification strategy
   - risks and mitigations
5. Merge planning and execution context in the same sprint file:
   - include an ordered task board with checkboxes and stable task IDs
   - encode dependencies inline so execution does not require separate todo files
   - include explicit acceptance criteria per task/workstream
6. Ensure the sprint includes token-system tasks, reusable Phlex primitive/variant tasks, and screenshot-polish verification across required shells.
7. Deepen weak sections with targeted research.
8. Ensure sprint tasks are actionable, testable, and sized for reviewable increments.
9. Create/refresh `docs/sprints/mvp-requirement-mapping.md` showing PRD requirement -> sprint task IDs.
