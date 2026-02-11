---
name: workflow-review
description: "Run comprehensive multi-dimensional code reviews and synthesize findings by severity."
---

# Workflow Review

## Review Dimensions

- Architecture and design integrity
- Simplicity and maintainability
- Security and data integrity
- Performance and scalability
- Frontend race/timing risks when applicable

## Workflow

1. Determine review target (branch/PR/files).
2. Analyze changed code across all applicable dimensions.
3. Prioritize findings by severity with file references.
4. Capture unresolved items in the active sprint doc (`docs/sprints/*.md`) under a findings/follow-up section.
5. If scope exceeds current sprint, create a new sprint doc instead of scattered todo files.
