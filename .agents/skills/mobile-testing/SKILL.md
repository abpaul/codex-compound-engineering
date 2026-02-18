---
name: mobile-testing
description: "Build and test iOS/mobile flows via simulator-driven verification workflows."
---

# Mobile Testing

Use this skill when validating mobile simulator flows after product or UI changes.

## Workflow

1. Build target app for simulator.
2. Run focused test suites.
3. Capture failures with reproducible steps and logs.
4. Attach screenshots/video evidence for user-visible regressions.

## Rails Touchpoints

For Rails + Hotwire Native apps, verify:

- route navigation parity with server-rendered web flows
- Turbo frame/stream updates under mobile latency
- auth/session behavior and CSRF-sensitive flows
- error, empty, and retry states for critical screens
- token/theme parity with web surfaces (including Tailwind/daisyUI token mapping and non-default theme application)

## Context Discipline

- Start with changed screens/flows and recent regressions; expand to broader suites only on signal.
