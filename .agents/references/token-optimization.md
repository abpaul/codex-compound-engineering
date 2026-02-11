# Skill Token Optimization Guide

Use this guide to keep skill-driven context lean.

## Principles

1. Progressive disclosure: read only core skill instructions first.
2. Load references/assets only when blocked or explicitly required.
3. Prefer mode-based workflows (`fast` then escalate to `deep`).
4. Keep shared repeated instructions in references, not duplicated across many skills.
5. Favor diff-scoped review over broad repository scans unless risk requires expansion.

## Budget Targets (Approximate)

Approximate tokens are `chars / 4`.

- Regular `SKILL.md`: <= 800 tokens
- Orchestrator `SKILL.md`: <= 1000 tokens
- High-complexity skills (temporary exception): <= 1200 tokens

## Operational Rules

1. Default to fast mode for UI and testing workflows.
2. Ask targeted questions instead of loading many context files.
3. Escalate to deep mode only when:
   - quality gates fail,
   - risk is high,
   - user explicitly requests depth.

## Linting

Run:

```bash
./scripts/lint-skill-tokens.sh
```

Strict CI mode:

```bash
./scripts/lint-skill-tokens.sh --strict
```
