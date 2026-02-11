---
name: review-frontend-quality
description: "Review frontend correctness including race conditions, lifecycle issues, and type safety."
---

# Review Frontend Quality

Use this skill for implementation review before merge, especially after UI changes.

## Token Discipline

- Start from git diff and touched components only.
- Expand scope only if issues imply broader systemic risk.

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
