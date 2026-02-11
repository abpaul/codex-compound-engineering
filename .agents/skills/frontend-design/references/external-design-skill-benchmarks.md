# External Design Skill Benchmarks (2026)

This reference captures patterns observed in external tools and public skill repositories.

## Product Systems (v0, Lovable, Bolt)

1. Structured prompt scaffolding (surface/context/constraints)
2. Plan-first workflow before implementation
3. Visual editing loop separate from generation loop
4. Persistent project-level design instructions
5. Post-generation quality pass (fix/lint/test/screenshot)

Primary references:

- v0 prompting framework: https://vercel.com/blog/how-to-prompt-v0
- v0 design mode: https://v0.dev/docs/design-mode
- v0 composite architecture: https://vercel.com/blog/v0-composite-model-family
- Lovable prompting: https://docs.lovable.dev/prompting/prompting-one
- Lovable design systems: https://docs.lovable.dev/features/design-systems
- Bolt prompting effectively: https://support.bolt.new/best-practices/prompting-effectively
- Bolt discussion mode: https://support.bolt.new/best-practices/discussion-mode

## GitHub Skill Ecosystem Patterns

Observed from public skill listings and repositories:

1. Frontend-design skills emphasize anti-generic visual direction and strong typography.
2. Fidelity skills rely on compare-analyze-iterate loops with screenshot evidence.
3. Prompt packs include style selectors and component-oriented generation.
4. Teams with better outcomes codify design memory and token discipline.

Representative sources:

- Daymade UI Designer skill (image-to-design-system workflow): https://agent-skills.md/skills/daymade/claude-code-skills/ui-designer
- Frontend-design variants (anti-generic aesthetic rules): https://agent-skills.md/skills/zhuxining/skills/frontend-design
- Frontend-design variants (token + signature move patterns): https://agent-skills.md/skills/vipulgupta2048/codex-skills/frontend-design
- Frontend prompt pack with style archetypes: https://github.com/lmarena/stitch-prompt
- Stitch "enhance-prompt" skill (prompt specificity pipeline): https://docs.stitch.withgoogle.com/resources/skill-library
- Interface-design skill with anti-default tests and domain-color-world exploration: https://raw.githubusercontent.com/Dammyjay93/interface-design/refs/heads/main/.claude/skills/interface-design/SKILL.md

Extracted high-value patterns from the interface-design skill:

1. Explicit "intent before code" checkpoint
2. Domain concept extraction before color decisions
3. Signature element requirement to avoid generic output
4. Anti-default tests (swap/squint/signature/token)

## Operational Guidance for This Repo

Adopt these as non-optional in frontend work:

1. Input coverage check before coding
2. Palette/token spec before styling
3. Component-by-component implementation
4. Fidelity and quality review loop before handoff
