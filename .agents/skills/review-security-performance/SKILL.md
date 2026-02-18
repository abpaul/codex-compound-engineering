---
name: review-security-performance
description: "Assess security vulnerabilities and performance bottlenecks in code/design changes."
---

# Review Security Performance

Use this skill for pre-merge or pre-release risk review on sensitive code paths.

## Checklist

- Auth/authz boundary correctness
- Input validation and unsafe deserialization risks
- Secret handling and sensitive data exposure
- Query efficiency and N+1 hotspots
- Time/space complexity regressions
- Caching and concurrency concerns

## Rails Touchpoints

- Strong params enforcement and ownership checks on read/write boundaries.
- Policy/authorization coverage for controller and service entry points.
- ActiveRecord query plans, eager loading, and index-fit for hot paths.
- Turbo/Stimulus endpoints protected against unauthorized stream/subscription access.
- Background jobs idempotent, retry-safe, and free of sensitive logging.

## Context Discipline

- Review the diff and touched execution paths first; widen scope only when findings imply systemic risk.
