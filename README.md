# Codex Compound Engineering

A streamlined, skill-first engineering workflow for Codex.

This bundle standardizes how teams research, plan, implement, review, and document work so each cycle improves the next one.

## What this repo provides

- A global `AGENTS.md` baseline with routing rules and available skills
- A consolidated skill set in `.agents/skills`
- Legacy command compatibility in `.agents/references/command-map.md`
- A sprint-first working model using `docs/sprints/` as the execution artifact
- Install scripts for skills, references, global AGENTS, and Context7

## Operating model

The default loop is:

`Discovery -> Plan Sprint -> Work Sprint -> Review -> Compound`

Core rules:

- Use canonical commands (`$workflow-*`) as default
- Keep plan + execution + follow-ups in one sprint doc
- Capture reusable solutions in `docs/solutions/` after fixes are verified

## Install

### One-command setup

From the `codex/` directory:

```bash
./scripts/bootstrap.sh
```

This installs:

- skills to `~/.agents/skills`
- references to `~/.agents/references`
- global AGENTS to `${CODEX_HOME:-~/.codex}/AGENTS.md`
- Context7 MCP config in `${CODEX_HOME:-~/.codex}/config.toml`

### Manual setup

```bash
./scripts/install-skills.sh
./scripts/install-references.sh
./scripts/install-agents.sh
./scripts/install-context7.sh
```

`install-agents.sh` behavior:

- skips non-empty destination unless `--force`
- replaces empty/whitespace-only destination automatically
- creates a timestamped backup on replace (disable with `--no-backup`)

## Project bootstrapping

Use `$setup-project-docs` in any target repository.

It scaffolds:

```text
your-project/
├── AGENTS.md
├── docs/
│   ├── brainstorms/
│   ├── solutions/
│   └── sprints/
└── README.md
```

It also enforces that project `AGENTS.md` is either copied from global baseline or regenerated with a complete available-skills section.

## Command reference

| Command | Purpose | Primary artifact |
|---|---|---|
| `$workflow-discovery` | Clarify requirements and scope | `docs/brainstorms/*.md` |
| `$workflow-plan` | Create/update executable sprint plan | `docs/sprints/*.md` |
| `$workflow-work` | Implement sprint tasks and update progress | sprint doc + code |
| `$workflow-review` | Review changes and prioritize findings | sprint follow-up section |
| `$workflow-compound` | Document solved problems | `docs/solutions/**/*.md` |
| `$workflow-autonomous` | Run end-to-end with minimal handoffs | full pipeline output |
| `$frontend-design` | Design and implement distinctive frontend UI systems | UI code + `docs/design-memory.md` |
| `$frontend-ship` | Orchestrate frontend design + quality + browser evidence | end-to-end frontend delivery |
| `$design-fidelity` | Iterate visual parity against design intent | mismatch/fidelity passes + screenshots |
| `$review-frontend-quality` | Review frontend correctness and visual regressions | prioritized findings |
| `$web-automation-testing` | Capture browser evidence for changed UI surfaces | screenshots + interaction checks |

## Token optimization

This repo now uses mode-based and progressive-loading patterns to reduce context bloat:

- `fast` first, escalate to `deep` only when needed
- load only required assets/references for the current mode
- use diff-scoped checks before broad scans

Reference:

- `.agents/references/token-optimization.md`

Lint skill budgets:

```bash
./scripts/lint-skill-tokens.sh
```

Strict mode:

```bash
./scripts/lint-skill-tokens.sh --strict
```

## Scenario playbooks

| Scenario | Recommended flow |
|---|---|
| Building a new product | `$setup-project-docs` -> `$project-bootstrap` -> `$workflow-plan` -> `$workflow-work` -> `$workflow-review` -> `$workflow-compound` |
| Existing product adoption | `$setup-project-docs` -> `$workflow-plan` -> `$workflow-work` -> `$workflow-review` -> `$workflow-compound` |
| New feature | `$workflow-discovery` (if needed) -> `$workflow-plan` -> `$workflow-work` -> `$workflow-review` -> `$workflow-compound` |
| Bug fix | `$bug-investigation` -> `$workflow-plan` -> `$workflow-work` -> `$workflow-review` -> `$workflow-compound` |
| Frontend design/refactor | `$workflow-discovery` -> `$frontend-design` -> `$workflow-work` -> `$review-frontend-quality` -> `$design-fidelity` -> `$workflow-compound` |
| Frontend end-to-end delivery | `$workflow-discovery` -> `$frontend-ship` -> `$workflow-compound` |

Notes:

- For existing projects, keep legacy `docs/plans`/`todos` as archive and start new work in `docs/sprints/`.
- Skip `$workflow-discovery` when requirements are already explicit.

## Using `$frontend-design`

Recommended invocation:

```bash
$frontend-design "Redesign the billing dashboard for finance managers. Keep it data-dense, trustworthy, and calm."
```

What the skill does:

1. Auto-harvests local context (`AGENTS.md`, PRD/design docs, sprint docs, existing tokens/components).
2. Builds a design-input coverage map and asks targeted questions only for missing critical inputs.
3. Produces domain exploration outputs (concepts, color world, signature element, defaults to reject).
4. Defines semantic color/type/spacing tokens and implements component-by-component.
5. Runs a polish loop with:
   - `$design-fidelity`
   - `$review-frontend-quality`
   - `$web-automation-testing`
6. Persists decisions in `docs/design-memory.md` for consistency across future screens.

## Can it create a good project palette automatically?

Short answer: yes, conditionally.

- It can generate a strong, project-specific palette automatically when it can infer enough context from brand/design/product artifacts in the repo.
- If required palette context is missing (brand constraints, audience/tone, references), it asks focused questions before finalizing colors.
- It uses a tokenized palette workflow (semantic tokens + state variants + contrast checks), which improves consistency and accessibility.
- It does not guarantee "perfect" brand fit without source constraints; when brand specificity matters, provide:
  - required/forbidden colors
  - 2-3 reference UIs you like and one you dislike
  - desired tone adjectives (3-5)

## Autonomous mode for rough briefs

If you want one command from rough request to implementation:

```bash
$workflow-autonomous "<rough description>"
```

Example:

```bash
$workflow-autonomous "Add admin SSO with Google + Microsoft, with audit logs and rollback plan."
```

## Legacy command compatibility

Legacy slash commands remain supported via `.agents/references/command-map.md`.

Examples:

- `/workflows:plan` -> `$workflow-plan`
- `/workflows:work` -> `$workflow-work`
- `/workflows:review` -> `$workflow-review`
- `/workflows:compound` -> `$workflow-compound`

## Repository references

- Global baseline: `AGENTS.md`
- Skill catalog: `.agents/references/catalog.md`
- Command aliases: `.agents/references/command-map.md`
- Skills: `.agents/skills/*/SKILL.md`
