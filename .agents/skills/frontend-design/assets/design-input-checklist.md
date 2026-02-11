# Frontend Design Input Checklist

Use this checklist before writing UI code.

## Coverage Matrix

| Input | Why it matters | Auto-harvest sources | Ask user if missing |
|---|---|---|---|
| Product and audience context | Prevents arbitrary visuals | `README.md`, `docs/prd.md`, `AGENTS.md` | Yes |
| Surface scope and states | Ensures complete implementation | sprint docs, route/component files | Yes |
| Brand direction adjectives | Drives distinct visual language | `docs/design-guidelines.md`, marketing copy | Yes |
| Color constraints | Prevents palette mismatch | existing tokens, brand docs | Yes |
| Typography constraints | Avoids licensing/rendering issues | existing CSS/font setup | Yes |
| Reference examples (like/dislike) | Anchors taste and avoids generic output | issue/PR links, design docs | Yes |
| Density and hierarchy goals | Controls spacing and scanning behavior | current UI patterns | Yes |
| Accessibility target | Sets contrast, focus, interaction rules | AGENTS defaults | Yes |
| Motion policy | Avoids inappropriate animation | design docs, prefers-reduced-motion policy | Yes |

## Question Bank (One at a Time)

1. Which screen(s) should this redesign target first?
2. Who is the primary user for this screen and what is their main action?
3. Give 3-5 adjectives for the intended visual tone (for example: calm, editorial, premium, playful).
4. Are there brand colors we must keep or avoid?
5. Share 2-3 UI references you like and one you dislike (links or screenshots).
6. Should this UI feel dense (data-heavy) or spacious (content-light)?
7. Is WCAG AA sufficient, or do you need stricter accessibility requirements?
8. Should motion be expressive, subtle, or minimal/reduced by default?

## Minimum Data Threshold

Proceed with implementation only when all of the following are known:

- target surface and states
- visual direction adjectives
- color constraints or explicit permission to propose
- accessibility target

## Anti-Generic Gate

Before coding, confirm:

- You can name one signature element that appears across the surface.
- You can list three default patterns you will avoid.
- You can explain why palette and typography belong to this specific product.
