---
name: workflow-plan
description: "Transform validated requirements into executable implementation plans with milestones and risk controls."
---

# Workflow Plan

## Workflow

1. Pull context from discovery docs and local patterns.
2. Decide whether external research is needed based on risk/novelty.
3. Produce or update a sprint document in `docs/sprints/` with:
   - architecture approach
   - phased milestones
   - verification strategy
   - risks and mitigations
4. Merge planning and execution context in the same sprint file:
   - include an ordered task board with checkboxes and stable task IDs
   - encode dependencies inline so execution does not require separate todo files
   - include explicit acceptance criteria per task/workstream
5. Deepen weak sections with targeted research.
6. Ensure sprint tasks are actionable, testable, and sized for reviewable increments.
7. Create/refresh `docs/sprints/mvp-requirement-mapping.md` showing PRD requirement -> sprint task IDs.
