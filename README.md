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

## Scenario playbooks

| Scenario | Recommended flow |
|---|---|
| Building a new product | `$setup-project-docs` -> `$project-bootstrap` -> `$workflow-plan` -> `$workflow-work` -> `$workflow-review` -> `$workflow-compound` |
| Existing product adoption | `$setup-project-docs` -> `$workflow-plan` -> `$workflow-work` -> `$workflow-review` -> `$workflow-compound` |
| New feature | `$workflow-discovery` (if needed) -> `$workflow-plan` -> `$workflow-work` -> `$workflow-review` -> `$workflow-compound` |
| Bug fix | `$bug-investigation` -> `$workflow-plan` -> `$workflow-work` -> `$workflow-review` -> `$workflow-compound` |
| Frontend design/refactor | `$workflow-discovery` -> `$frontend-design` -> `$workflow-work` -> `$review-frontend-quality` -> `$design-fidelity` -> `$workflow-compound` |

Notes:

- For existing projects, keep legacy `docs/plans`/`todos` as archive and start new work in `docs/sprints/`.
- Skip `$workflow-discovery` when requirements are already explicit.

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
