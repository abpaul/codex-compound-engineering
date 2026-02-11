---
name: workflow-work
description: "Execute plans into production-ready code with task tracking, incremental validation, and progress updates."
---

# Workflow Work

## Workflow

1. Read sprint doc in `docs/sprints/` and clarify ambiguities before coding.
2. Use the sprint doc task board as the single tracker (no separate todo file by default).
3. If sprint tasks are incomplete, refine them in place before implementation:
   - ensure every MVP requirement and critical flow has at least one sprint task
   - encode dependencies directly in the sprint doc
4. Implement in small logical increments.
5. Run focused tests/lint after each increment.
6. Mark completed sprint tasks in the source sprint doc.
7. Record review follow-ups in the sprint's "Review Findings Queue".
8. Prepare concise summary of completed work, tests run, and remaining risks.
