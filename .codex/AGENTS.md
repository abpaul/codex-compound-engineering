# Global AGENTS (Codex)

This file is intended to be used as a global `AGENTS.md` for Codex across devices.

## Core Defaults

- Prefer the smallest reviewable diff that fully solves the task.
- Read existing code paths before writing new code.
- Match local conventions over personal preference.
- Validate external input at boundaries and test edge cases.
- Run focused verification before finishing.

## Main Loop

- Follow the compound loop: `Plan -> Work -> Review -> Compound`.
- Use `$workflows-plan` to produce implementation plans in `docs/plans/`.
- Use `$workflows-work` to execute plans and validate changes.
- Use `$workflows-review` and `$triage` to capture and prioritize findings.
- Use `$workflows-compound` to document reusable learnings in `docs/solutions/`.

## Rails (Primary)

- Keep controllers thin and push domain behavior into models or focused POROs when needed.
- Use resourceful routes and conventional Rails patterns first.
- Prevent N+1 queries with eager loading and verify hot paths.
- Prefer background jobs for async side effects; keep jobs idempotent.
- Enforce strong params, authorization checks, and secure defaults.

## Stimulus

- Keep each controller focused on one UI responsibility.
- Use `targets`, `values`, and declarative `data-action` patterns consistently.
- Clean up listeners and timers in `disconnect`.
- Prefer event-driven coordination over brittle DOM coupling.

## Hotwire + Turbo

- Default to Turbo Drive/Frames/Streams for interactive CRUD flows.
- Favor server-rendered HTML updates over custom client state when possible.
- Ensure Turbo interactions degrade safely when partial updates fail.
- Keep streaming updates scoped, predictable, and authorized.

## React Native (Expo)

- Keep TypeScript strict; avoid unsafe casts.
- Handle loading, empty, success, and error states explicitly.
- Use stable list keys and efficient rendering patterns for long lists.
- Keep styling token-driven and consistent across screens.
- Store secrets in secure storage, never in source or insecure caches.

## Skill and Reference Usage

- Use skills from `.agents/skills` for repeatable workflows.
- Legacy command mapping is documented in `~/.agents/references/command-map.md`.
- Load only needed references to keep context lean:
  - `~/.agents/references/styleguides/rails.md`
  - `~/.agents/references/styleguides/stimulus.md`
  - `~/.agents/references/styleguides/hotwire-turbo.md`
  - `~/.agents/references/styleguides/react-native.md`
  - `~/.agents/references/styleguides/testing.md`

## Safety

- Do not run destructive git commands unless explicitly requested.
- Never commit credentials, tokens, or secrets.
- Ask before changes affecting production, billing, auth, or security posture.
