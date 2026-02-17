# Screenshot Polish Loop (agent execution)

Run this loop until the rubric threshold is met. The loop is designed to force token/component-level fixes instead of one-off styling patches.

## Inputs

- Target routes/surfaces to polish
- Light + dark themes enabled
- Selected density preset(s)
- Shell matrix: browser + Hotwire Native WebViews

## Loop

1. Render the target surface(s) in Rails.
2. Capture screenshots for browser and native shell matrix.
3. Score with `assets/m3-aesthetic-rubric.md`.
4. Propose token/component-level fixes:
   - adjust surface role usage (`surface` vs `surfaceContainer*`)
   - adjust type role mapping (`titleMedium` vs `bodyLarge`)
   - adjust spacing to the shared scale
   - adjust state layer visibility and focus indicators
   - adjust elevation (tonal first; shadows only when needed)
   - adjust motion tokens for perceived quality and accessibility
5. Implement changes in shared tokens, Phlex component APIs, or component styles.
6. Re-capture screenshots and re-score.

## Thresholds + stop rule

- Target: >= `85/100` rubric score for flagship surfaces; >= `75/100` for internal tools.
- Stop if 3 iterations do not improve score. Revisit theme contract and component methodology before further tweaks.

## Non-negotiables

- No ad-hoc CSS edits outside token/component systems to chase screenshots.
- Any native-shell-only visual drift must still be corrected at token/component level unless there is a WebView platform bug.
