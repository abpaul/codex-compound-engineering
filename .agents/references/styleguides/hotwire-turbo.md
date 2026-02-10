# Hotwire Turbo Guide

## Turbo Defaults

- Prefer Turbo Drive and server-rendered HTML for standard navigation.
- Use Turbo Frames for local UI updates within a page region.
- Use Turbo Streams for multi-target updates and realtime UX.

## Controller and Response Patterns

- Keep controller actions conventional and response-focused.
- Return explicit Turbo Stream responses for create/update/destroy flows.
- Keep fallback HTML responses functional when JS is unavailable.

## Streams and Broadcasting

- Scope broadcasts to the smallest relevant audience.
- Authorize access before exposing stream subscriptions.
- Keep stream payloads small and deterministic.

## UX and Resilience

- Show optimistic feedback only when rollback behavior is defined.
- Keep forms idempotent where retries are possible.
- Handle validation failures inline and preserve user input.

## Integration with Stimulus

- Use Stimulus for local behavior and lightweight state.
- Prefer event-driven interactions over direct cross-controller coupling.
- Re-initialize behavior through controller lifecycle hooks after Turbo updates.
