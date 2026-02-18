# Compound Engineering Skill Catalog (Consolidated)

- Previous skill count: 63
- Consolidated skill count: 28
- Reduction: 35 skills (~56%)

## Canonical Skills

1. `$setup-project-docs`
2. `$project-bootstrap`
3. `$workflow-discovery`
4. `$workflow-plan`
5. `$workflow-work`
6. `$workflow-review`
7. `$workflow-compound`
8. `$workflow-autonomous`
9. `$frontend-ship`
10. `$review-security-performance`
11. `$review-data-release`
12. `$review-frontend-quality`
13. `$review-comment-resolution`
14. `$bug-investigation`
15. `$research-local`
16. `$research-external`
17. `$conversion-optimization`
18. `$frontend-design`
19. `$material3-ui-craft`
20. `$design-fidelity`
21. `$agent-native-suite`
22. `$ruby-rails-authoring`
23. `$docs-publishing`
24. `$skill-authoring`
25. `$web-automation-testing`
26. `$mobile-testing`
27. `$repo-tooling`
28. `$cloud-transfer`

## Consolidation Notes

- Narrow overlapping specialist skills were merged into broader composable workflows.
- CRO skills were streamlined into `$conversion-optimization` (layout + copy).
- UI polish skills were consolidated into `$material3-ui-craft` (Material Design 3 token contract + verification loop).
- Legacy slash command compatibility is preserved through mappings in `.agents/references/command-map.md`.
- Use a clean reinstall of global skills after consolidation to remove deprecated directories.

## Rails Catalog Segmentation

Use this segmentation when evaluating or routing skills for Rails-first execution.

### `rails_catalog: core`

Skills that are directly Rails/Hotwire aligned and should be preferred for Rails implementation work:

- `$ruby-rails-authoring`
- `$frontend-design`
- `$material3-ui-craft`
- `$review-frontend-quality`
- `$workflow-discovery`
- `$workflow-plan`
- `$workflow-work`
- `$project-bootstrap`
- `$setup-project-docs`
- `$frontend-ship`

### `rails_catalog: workflow`

Skills that are generic orchestrators/review helpers but include Rails checkpoints and can be safely used in Rails tasks:

- `$workflow-review`
- `$workflow-autonomous`
- `$workflow-compound`
- `$review-data-release`
- `$review-security-performance`
- `$research-local`
- `$research-external`
- `$docs-publishing`
- `$repo-tooling`
- `$mobile-testing`
- `$agent-native-suite`
- `$cloud-transfer`

### `rails_catalog: external`

Provider/tool-specific global skills (for example deployment/media/Notion/OpenAI utility skills under `~/.codex/skills`) are out of the Rails catalog by default unless they add an explicit Rails integration appendix.
