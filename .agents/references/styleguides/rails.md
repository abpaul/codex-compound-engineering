# Rails Style Guide

## Architecture

- Keep controllers thin; push domain logic into models and focused POROs only when needed.
- Prefer Rails conventions over custom abstractions.
- Use RESTful routes and resourceful controllers.

## Data Layer

- Use ActiveRecord relations/scopes over raw SQL where possible.
- Prevent N+1 with `includes`, `preload`, or `eager_load`.
- Add indexes for foreign keys and hot query paths.
- Use database constraints for integrity-critical invariants.

## Validation and Security

- Require strong params for all controller inputs.
- Authorize access in every write/read boundary.
- Never trust client-provided identifiers without ownership checks.

## Background Work

- Keep jobs idempotent and retry-safe.
- Pass ids, not large serialized objects.
- Keep jobs as orchestration wrappers around model/service methods.

## Hotwire

- Prefer Turbo Frames/Streams for CRUD-level interactivity.
- Keep Stimulus controllers small and event-focused.
- Return useful Turbo fallbacks for non-JS flows when practical.
