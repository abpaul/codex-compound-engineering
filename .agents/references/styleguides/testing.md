# Testing Guide

## General

- Test behavior, not implementation details.
- Add coverage for success path, failure path, and key edge cases.
- Keep tests deterministic; avoid timing-based flakiness.

## Rails

- Prefer Minitest with fixtures in Rails codebases.
- Cover model invariants, controller authorization, and integration flows.
- For bug fixes, add a regression test that fails before the fix.

## Stimulus/Frontend

- Test user-observable behavior (state changes, events, accessibility).
- Verify connect/disconnect cleanup for listeners and timers.

## React Native

- Test screen states: loading, success, empty, error.
- Verify navigation and critical interactions.
- Keep end-to-end smoke tests for core user journeys where available.
