---
name: web-automation-testing
description: "Automate browser workflows and run browser-based regression checks for affected surfaces."
---

# Web Automation Testing

Use this skill to gather visual and interaction evidence for frontend work.

## Modes

- `smoke`: changed pages only, desktop screenshots, critical interaction checks
- `full`: desktop + mobile screenshots, broader interaction flows, optional accessibility smoke checks

## Coverage

- scripted browser interactions
- screenshots and DOM checks
- branch/PR-focused browser regression checks
- desktop + mobile viewport capture for changed screens
- optional accessibility smoke checks (focus navigation, obvious contrast failures)

Use `smoke` by default unless risk is high or the user requests full coverage.
