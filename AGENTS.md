# Global AGENTS (Codex)

This file is intended to be used as a global `AGENTS.md` for Codex across devices.

## Core Defaults

- Prefer the smallest reviewable diff that fully solves the task.
- Read existing code paths before writing new code.
- Match local conventions over personal preference.
- Validate external input at boundaries and test edge cases.
- Run focused verification before finishing.

## Streamlined Loop

- Follow the compound loop: `Discovery -> Plan Sprint -> Work Sprint -> Review -> Compound`.
- Canonical workflow skills:
  - `$workflow-discovery` refines requirements into a concrete brainstorm doc.
  - `$workflow-plan` creates/updates a sprint plan in `docs/sprints/`.
  - `$workflow-work` executes directly from the sprint doc and updates progress in-place.
  - `$workflow-review` reviews code and writes prioritized follow-up items into the sprint doc.
  - `$workflow-compound` captures solved problems in `docs/solutions/`.
- Legacy slash aliases remain valid through command mapping:
  - `/workflows:plan` -> `$workflow-plan`
  - `/workflows:work` -> `$workflow-work`
  - `/workflows:review` -> `$workflow-review`
  - `/workflows:compound` -> `$workflow-compound`

## Model Defaults

- Default model for coding work: `gpt-5.3-codex`.
- Use smaller models for cost-sensitive, low-risk iterations (`gpt-5.1-codex-mini`).
- Use long-horizon alternatives only when necessary for extended agentic tasks (`gpt-5.1-codex-max`).

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
- Always prefer canonical workflow skills (`$workflow-*`) over historical `$workflows-*` names.
- Keep `docs/sprints/` as the single source of truth for plan + task execution.
- Document durable learnings in `docs/solutions/` immediately after fixes are verified.
- Follow token discipline:
  - load only required skill references first (progressive disclosure)
  - prefer `fast` mode and escalate to `deep` only when quality/risk demands it
  - run `scripts/lint-skill-tokens.sh` before major skill changes
- Load only needed references to keep context lean:
  - `.agents/references/command-map.md`
  - `.agents/references/catalog.md`
  - `.agents/references/token-optimization.md`
  - `.agents/references/styleguides/rails.md`
  - `.agents/references/styleguides/stimulus.md`
  - `.agents/references/styleguides/hotwire-turbo.md`
  - `.agents/references/styleguides/react-native.md`
  - `.agents/references/styleguides/testing.md`

## Project Layout Standard

```text
your-project/
├── AGENTS.md
├── docs/
│   ├── brainstorms/
│   ├── solutions/
│   └── sprints/
└── README.md
```

- `docs/sprints/` replaces split `docs/plans/` + `todos/` in this streamlined setup.
- Keep one sprint doc per active scope to preserve context and reduce fragmentation.
- Use `$setup-project-docs` to scaffold this layout and generate a repo-aware `AGENTS.md`.

## Skill Router

- If a user explicitly names a skill, use it.
- If a task matches multiple skills, choose the smallest set that covers the task.
- Prefer these routing defaults:
  - Discovery/requirements ambiguity -> `$workflow-discovery`
  - Planning/prioritization -> `$workflow-plan`
  - Implementation/execution -> `$workflow-work`
  - Code review/risk analysis -> `$workflow-review`
  - Post-fix documentation -> `$workflow-compound`
  - End-to-end orchestration -> `$workflow-autonomous`
- For repo-aware setup and onboarding, run `$setup-project-docs` first.

## Available Skills

The repository ships with these skills. Use the "use when" guidance to route quickly and consistently.

| Skill | Use when | Primary output |
|---|---|---|
| `$setup-project-docs` | Initializing a repo layout and AGENTS baseline | `AGENTS.md` + docs scaffold |
| `$project-bootstrap` | Running a full PRD/design/bootstrap interview | `docs/prd.md`, `docs/design-guidelines.md`, `docs/sprints/initial-implementation-sprint.md` |
| `$workflow-discovery` | Requirements are unclear or under-specified | `docs/brainstorms/*.md` |
| `$workflow-plan` | Converting validated requirements into executable work | `docs/sprints/*.md` |
| `$workflow-work` | Executing sprint tasks into production code | Updated sprint doc + code changes |
| `$workflow-review` | Comprehensive review before merge/release | Prioritized findings + sprint follow-ups |
| `$workflow-compound` | Capturing solved problems as reusable knowledge | `docs/solutions/**/*.md` |
| `$workflow-autonomous` | Running discovery->compound pipeline with minimal handoffs | Coordinated multi-step workflow |
| `$research-local` | Understanding local patterns/history first | File-referenced research notes |
| `$research-external` | Pulling external best practices/docs | External references + recommendations |
| `$review-security-performance` | Security/performance-sensitive changes | Risk findings and mitigations |
| `$review-data-release` | Migrations/backfills/data-shape changes | Deployment safety checklist |
| `$review-frontend-quality` | Frontend lifecycle/race/type-risk review | Frontend quality findings |
| `$review-comment-resolution` | Resolving PR/review follow-up backlog | Batched resolution plan |
| `$bug-investigation` | Reproducing and isolating bugs | Repro steps + likely root cause |
| `$frontend-design` | Building production-grade UI fast | Implemented UI + design rationale |
| `$frontend-ship` | Orchestrating frontend design->review->evidence in one flow | End-to-end frontend delivery summary |
| `$design-fidelity` | Closing gaps between design intent and implementation | Diff/fix recommendations |
| `$agent-native-suite` | Designing/auditing agent-native capabilities | Agent parity audit + design guidance |
| `$ruby-rails-authoring` | Rails/gem authoring with strong conventions | Rails-aligned code patterns |
| `$docs-publishing` | Changelog/release walkthrough/documentation outputs | Published docs artifacts |
| `$skill-authoring` | Creating/fixing/evolving skills and commands | Updated skill packages |
| `$web-automation-testing` | Browser-based regression checks | Test results + screenshots/logs |
| `$mobile-testing` | Simulator-driven iOS/mobile verification | Build/run evidence + findings |
| `$repo-tooling` | Worktree/lint/tooling operations | Cleaner repo workflow |
| `$cloud-transfer` | Reproducible upload/sync tasks | Synced cloud artifacts |

## Safety

- Do not run destructive git commands unless explicitly requested.
- Never commit credentials, tokens, or secrets.
- Ask before changes affecting production, billing, auth, or security posture.
