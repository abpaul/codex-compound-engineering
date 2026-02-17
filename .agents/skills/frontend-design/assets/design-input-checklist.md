# Frontend Design Input Checklist

Use this checklist before writing UI code.

## Coverage Matrix

| Input | Why it matters | Auto-harvest sources | Ask user if missing |
|---|---|---|---|
| Product and audience context | Prevents arbitrary visuals | `README.md`, `docs/prd.md`, `AGENTS.md` | Yes |
| Surface scope and states | Ensures complete implementation | sprint docs, route/component files | Yes |
| Rails/Phlex/Stimulus/Turbo constraints | Prevents architecture drift | `AGENTS.md`, existing app structure | Yes |
| Brand direction adjectives | Drives distinct visual language | `docs/design-guidelines.md`, marketing copy | Yes |
| Custom palette direction | Prevents token mismatch | existing tokens, brand docs | Yes |
| Typography constraints | Avoids licensing/rendering issues | existing CSS/font setup | Yes |
| Illustration style direction | Keeps visual language cohesive | brand docs, prior assets | Yes |
| Accessibility target | Sets contrast/focus/interaction rules | AGENTS defaults | Yes |
| Motion policy | Avoids inappropriate animation | design docs, reduced-motion policy | Yes |
| Shell coverage requirements | Prevents web/native drift | sprint doc, QA plans | Yes |

## Question Bank (One at a Time)

1. Which screen(s) should this redesign target first?
2. Which shells must ship together (desktop web, mobile web, iOS native shell, Android native shell)?
3. Give 3-5 adjectives for the intended visual tone.
4. What brand colors must be used or avoided?
5. What typography constraints exist (families, licensing, weights)?
6. What illustration style should we follow?
7. Is WCAG AA sufficient, or do you need stricter accessibility requirements?
8. Should motion be expressive, subtle, or reduced by default?

## Minimum Data Threshold

Proceed with implementation only when all of the following are known:

- target surface and states
- shell coverage expectation
- visual direction adjectives
- color/type/illustration constraints or explicit permission to propose
- accessibility target

## Anti-Generic Gate

Before coding, confirm:

- You can name one signature element used consistently.
- You can list three default patterns you will avoid.
- You can explain why palette/type/illustration choices fit this product.
