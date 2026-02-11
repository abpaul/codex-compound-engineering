---
name: workflow-plan
description: "Transform validated requirements into executable implementation plans with milestones and risk controls."
---

# Workflow Plan

## Workflow

1. Pull context from discovery docs and local patterns.
2. Decide whether external research is needed based on risk/novelty.
3. Produce plan document in `docs/plans/` with:
   - architecture approach
   - phased milestones
   - verification strategy
   - risks and mitigations
4. Deepen weak sections with targeted research.
5. Derive MVP todo backlog from PRD and plan:
   - generate todo files in `todos/` for each deliverable/workstream
   - ensure all MVP requirements and critical flows are covered
   - assign priorities and dependencies
   - keep tasks small enough for reviewable implementation increments
6. Ensure plan tasks and todos are actionable and testable.
7. Create/refresh `docs/plans/mvp-todo-mapping.md` showing PRD requirement -> todo IDs.
