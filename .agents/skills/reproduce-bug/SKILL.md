---
name: reproduce-bug
description: "Reproduce and investigate a bug from an issue using codebase analysis, logs, and optional browser testing."
---

# Reproduce Bug

Use this skill for issue-driven debugging and reproducible bug reports.

Invoke with `$reproduce-bug [issue number or URL]`.

## Workflow

1. Resolve issue context:
   - Read issue title, body, and latest comments.
   - Extract expected behavior, actual behavior, environment, and repro steps.

2. Investigate likely failure points:
   - Search relevant files and recent changes.
   - Inspect logs and error traces.
   - Run targeted commands/tests to validate hypotheses.

3. Reproduce behavior:
   - For backend/data bugs, run the minimal command/test that reproduces failure.
   - For UI bugs, use `$test-browser` for navigation, snapshots, and console checks.

4. Capture evidence:
   - Exact steps to reproduce.
   - Affected files/locations.
   - Error output (or "not reproduced" status with attempted paths).

5. Report findings:
   - Root cause hypothesis.
   - Confidence level.
   - Suggested fix direction.

## Output Template

```markdown
## Bug Reproduction Report

- Issue: #[number]
- Reproduced: [yes/no]
- Environment: [local details]

### Reproduction Steps
1. ...
2. ...

### Observed Result
...

### Expected Result
...

### Evidence
- Logs/errors:
- Screenshots (if UI):
- Relevant files:

### Root Cause (Hypothesis)
...

### Proposed Fix
...
```
