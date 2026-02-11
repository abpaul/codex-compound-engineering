---
name: review-frontend-quality
description: "Review frontend correctness including race conditions, lifecycle issues, and type safety."
---

# Review Frontend Quality

Use this skill for implementation review before merge, especially after UI changes.

## Data Gathering Workflow

1. Auto-harvest affected files from git diff.
2. Identify impacted user flows and component states.
3. Pull existing accessibility and design constraints from AGENTS/design docs.
4. If critical review context is missing (for example, expected behavior for a state), ask the user for clarification.

## Checklist

- DOM lifecycle/timing hazards
- Async race conditions and stale state updates
- Event listener cleanup and resource leaks
- Type safety and unsafe casts
- Accessibility and keyboard interaction regressions
- Contrast and token usage regressions in updated UI
- Missing interactive states (hover/focus/disabled/loading/error)
- Visual consistency drift from declared design memory/tokens

## Escalation Rule

If visual quality issues are structural (not isolated bugs), route findings to `$frontend-design` for system-level correction instead of patching isolated CSS lines.
