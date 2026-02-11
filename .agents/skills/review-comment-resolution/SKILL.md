---
name: review-comment-resolution
description: "Resolve PR/review/todo comments systematically, including parallel resolution workflows."
---

# Review Comment Resolution

## Workflow

1. Gather unresolved review comments/todos.
2. Group by dependency and severity.
3. Resolve independent items in parallel where safe.
4. Re-verify unresolved thread count.
5. Summarize what changed and what remains.

## Scripts

Use scripts in `scripts/` for PR comment fetch/resolve when available.
