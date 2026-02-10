# Codex Compound Engineering Setup

This setup is inspired by [Every's compound engineering](https://github.com/EveryInc/compound-engineering-plugin) system, but streamlined for Codex and tuned for a Rails-first stack.

It is self-contained and skill-first (no deprecated custom prompts).

## Target Tech Stack

- Ruby on Rails 7+
- Hotwire + Turbo + Stimulus
- Next.js/React + TypeScript
- Expo React Native
- PostgreSQL + Redis
- Docker + Coolify

## Included

- `.agents/skills` with workflow, review, research, and utility skills
- `.agents/references/command-map.md` for legacy command compatibility
- `.agents/references/catalog.md` inventory of installed skills
- `AGENTS.md` designed as a global Codex baseline
- stack-specific style guides in `.agents/references/styleguides`

## One-Command Setup

From this `codex/` directory:

```bash
./scripts/bootstrap.sh
```

This will:

- install skills to `~/.agents/skills`
- install shared references to `~/.agents/references`
- install global AGENTS to `${CODEX_HOME:-~/.codex}/AGENTS.md`
- configure Context7 MCP in `${CODEX_HOME:-~/.codex}/config.toml`

## Manual Setup

Install skills:

```bash
./scripts/install-skills.sh
```

Install global AGENTS:

```bash
./scripts/install-agents.sh
```

Install shared references:

```bash
./scripts/install-references.sh
```

Install Context7 MCP:

```bash
./scripts/install-context7.sh
```

## Legacy Command Mapping

Legacy command names are mapped to Codex skill invocations in:

- `.agents/references/command-map.md`

Examples:

- `/workflows:plan` -> `$workflows-plan`
- `/workflows:work` -> `$workflows-work`
- `/workflows:review` -> `$workflows-review`
- `/workflows:compound` -> `$workflows-compound`

## Project Structure Skill

Use `$setup-project-docs` to scaffold a project into the compound loop layout:

```text
your-project/
├── AGENTS.md
├── docs/
│   ├── brainstorms/
│   ├── solutions/
│   └── plans/
└── todos/
```
