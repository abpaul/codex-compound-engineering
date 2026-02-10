# Stimulus Style Guide

## Controller Design

- One controller should own one cohesive UI responsibility.
- Use `static targets`, `static values`, and `static classes` consistently.
- Keep controller state minimal; derive from DOM when practical.

## Events and Lifecycle

- Bind behavior through declarative `data-action` whenever possible.
- Use `connect` for setup and `disconnect` for cleanup.
- Always remove listeners/timers in `disconnect` to avoid leaks.

## DOM and Accessibility

- Prefer target-based selection over broad queries.
- Preserve semantic HTML and keyboard accessibility.
- Keep ARIA/state updates explicit when behavior changes visibility or focus.

## Turbo Interop

- Assume Turbo can replace parts of the DOM at any time.
- Rehydrate behavior via controller lifecycle, not global scripts.
- Avoid brittle cross-frame coupling; communicate through events when needed.
