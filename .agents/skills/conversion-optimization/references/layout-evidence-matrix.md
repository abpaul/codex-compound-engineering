# Layout Performance Evidence Matrix

Evidence base for `$conversion-optimization` (layout lane).

## Method

- Inclusion criteria: prioritize quantified outcomes, experiments, large-sample audits, and benchmark datasets.
- Exclusion criteria: unattributed claims, unclear methods, and advice without measurable outcomes.
- Interpretation rule: treat case-study lifts as directional until replicated in your context.
- Scope: web page layout and information architecture only.

## Evidence Tiers

- `Tier 1` high confidence: peer-reviewed research, structured UX benchmarks, large-sample audits.
- `Tier 2` medium confidence: reputable CRO/industry case studies with measured outcomes.
- `Tier 3` low confidence: heuristic guidance used only when stronger evidence is unavailable.

## Source Registry

| ID | Source | Type | Method/Sample | Outcome Metric | Key Finding | Applicable Page Types | Tier | Link |
|---|---|---|---|---|---|---|---|---|
| `NNG-01` | NN/g Scrolling and Attention | UX research synthesis | Behavioral research synthesis | Attention distribution | About 57% of viewing time is above the fold; below-fold content still performs when signposted. | SaaS, PDP, Pricing, Signup, Comparison | Tier 1 | [Scrolling and Attention](https://www.nngroup.com/articles/scrolling-and-attention/) |
| `NNG-02` | NN/g F-Shaped Pattern | Eye-tracking research | Eye-tracking studies of reading behavior | Scan efficiency, comprehension proxy | Users often scan in an F pattern, giving disproportionate attention to headings and lead lines. | SaaS, PDP, Pricing, Comparison | Tier 1 | [F-Shaped Pattern](https://www.nngroup.com/articles/f-shaped-pattern-reading-web-content/) |
| `NNG-03` | NN/g Layer-Cake Pattern | Eye-tracking research | Eye-tracking and scan behavior observations | Findability, comprehension proxy | Users scan headings/subheads first; chunked hierarchy improves content discovery. | SaaS, PDP, Pricing, Signup, Comparison | Tier 1 | [Layer-Cake Pattern](https://www.nngroup.com/articles/layer-cake-pattern-scanning/) |
| `BAY-01` | Baymard Product Page UX Benchmark | Benchmark audit | 275 e-commerce sites, 13,000+ performance scores | PDP usability, add-to-cart readiness | Average product pages score mediocre-to-poor across 40+ UX topics. | PDP, Comparison | Tier 1 | [Product Page UX Benchmark](https://baymard.com/research/product-page-ux) |
| `BAY-02` | Baymard Checkout UX Benchmark | Benchmark + usability testing | Large checkout benchmark and moderated tests | Checkout completion | Better checkout UX can improve conversion by about 35%; average flow has 11.2 fields, and only 18% have good overall flow. | PDP, Signup | Tier 1 | [Checkout UX Benchmark](https://baymard.com/research/checkout-usability) |
| `BAY-03` | Baymard Average Checkout Form Fields | Benchmark analysis | Broad checkout audit | Form completion, time-to-complete | Average checkout has about 11.3 fields; top performers are near 8 fields. | Signup | Tier 1 | [Average Checkout Form Fields](https://baymard.com/blog/checkout-flow-average-form-fields) |
| `BAY-04` | Baymard Required vs Optional Fields | Usability testing + benchmark | Checkout testing observations | Form errors, completion speed | 92% of checkouts include optional fields; unclear optional labels can add roughly 14% completion time. | Signup | Tier 1 | [Required vs Optional Fields](https://baymard.com/blog/required-optional-form-fields) |
| `BAY-05` | Baymard Avoid Multi-Column Forms | Usability testing | Moderated checkout sessions | Form error and abandonment risk | Multi-column forms increase field-skipping and interpretation errors; single-column layouts are more reliable. | Signup | Tier 1 | [Avoid Multi-Column Forms](https://baymard.com/blog/avoid-multi-column-forms) |
| `BAY-06` | Baymard Product Comparison Feature | Benchmark audit | Top 50 electronics/appliances sites | Comparison completion | 80% offered comparison, but only about 40% implemented core comparison capabilities well. | PDP, Comparison | Tier 1 | [Provide Product Comparison Feature](https://baymard.com/blog/product-comparison-feature) |
| `BAY-07` | Baymard Comparison Table UX Optimization | Usability testing synthesis | Product-comparison usability observations | Decision speed, comprehension | Comparison tables frequently hide key differences; standardized, high-impact attributes improve decisions. | PDP, Pricing, Comparison | Tier 1 | [Comparison Table UX Optimization](https://baymard.com/blog/product-comparison-table-ux) |
| `BAY-08` | Baymard Cart Abandonment Rates | Aggregated benchmark list | Multi-study aggregation | Abandonment rate | Average documented cart abandonment is 70.19%. | PDP, Signup | Tier 1 | [Cart Abandonment Rates](https://baymard.com/lists/cart-abandonment-rate) |
| `GOOG-01` | web.dev Rakuten case study | Industry case study | Production performance improvements | Conversion rate, revenue/visitor | Faster experiences (4x faster LCP) were associated with +33.13% conversion and +53.37% revenue per visitor for improved-experience users. | SaaS, PDP, Signup | Tier 2 | [Rakuten 4x Faster + Conversion Impact](https://web.dev/case-studies/rakuten/) |
| `GOOG-02` | web.dev Farfetch CWV case study | Industry case study | CWV-focused rollout on mobile web | Conversion, bounce rate | Improved CWV was associated with +3% iOS conversion, +4% Android conversion, and -31% bounce. | SaaS, PDP, Signup | Tier 2 | [Farfetch CWV Business Impact](https://web.dev/case-studies/farfetch/) |
| `GOOG-03` | web.dev Site Speed and Business Metrics | Guidance + case synthesis | Multi-company examples | Conversion, engagement | Speed improvements repeatedly correlate with better conversion and lower abandonment when measured via controlled rollouts. | SaaS, PDP, Pricing, Signup | Tier 2 | [Site Speed and Business Metrics](https://web.dev/articles/site-speed-and-business-metrics) |
| `GOOG-04` | Think with Google mobile speed data | Large-scale observational dataset | Google mobile speed dataset | Bounce probability | As page load increases from 1s to 3s bounce risk increases 32%; 1s to 5s is 90%; 1s to 10s is 123%. | SaaS, PDP, Signup | Tier 1 | [Mobile Page Speed Data](https://www.thinkwithgoogle.com/marketing-strategies/app-and-mobile/mobile-page-speed-data/) |
| `CXL-01` | CXL 79.3% landing campaign lift | CRO case study | Landing page campaign optimization | Conversion rate | Case study reports a 79.3% conversion lift from landing-page campaign changes. | SaaS | Tier 2 | [CXL 79.3% Landing Campaign Lift](https://cxl.com/blog/how-to-increase-your-conversions-by-79-3-with-one-landing-page-campaign/) |
| `CXL-02` | CXL friction in conversion optimization | CRO practitioner analysis | Practitioner synthesis and examples | Lead quality, conversion tradeoff | Reducing all friction can increase low-intent conversions; intentional friction can improve qualification quality. | SaaS, Signup, Pricing | Tier 3 | [CXL Friction and Lead Quality](https://cxl.com/blog/friction-in-conversion-optimization/) |
| `CRE-01` | Conversion Rate Experts (Moz) | CRO case study | Programmatic experimentation | Conversion rate | Case study reports a 52.7% conversion increase. | SaaS, Pricing | Tier 2 | [Conversion Rate Experts (Moz)](https://conversion-rate-experts.com/case-studies/moz/) |
| `SPE-01` | Speero pricing page case study | CRO case study | Pricing page optimization experiment | Revenue | Case study reports a 14% revenue uplift from pricing-page optimization. | Pricing | Tier 2 | [Speero Pricing Page Uplift](https://speero.com/resources/case-study/how-an-ecommerce-company-achieved-a-14-revenue-uplift-with-pricing-page-optimization) |
| `HCI-01` | Choice overload meta-analysis (2015) | Peer-reviewed meta-analysis | 99 observations from 50 studies (N=7,202) | Choice likelihood, satisfaction | Net effect of "more options hurts choice" is close to zero overall; moderators determine direction. | Pricing, Comparison | Tier 1 | [Choice Overload Meta-Analysis](https://www.sciencedirect.com/science/article/pii/S1057740815000241) |
| `HCI-02` | Can there ever be too many options? (2010) | Peer-reviewed review/meta-analysis | Meta-analytic treatment of assortment effects | Choice deferral, preference strength | No universal overload penalty; context, expertise, and assortment structure moderate outcomes. | Pricing, Comparison | Tier 1 | [Can There Ever Be Too Many Options?](https://www.sciencedirect.com/science/article/pii/S0749597810000086) |
| `HCI-03` | Asymmetrically dominated alternatives (decoy effect) | Peer-reviewed experiments | Controlled choice experiments | Option share shift | Adding a dominated decoy can increase share for a target option. | Pricing, Comparison | Tier 1 | [Asymmetrically Dominated Alternatives (Decoy Effect)](https://www.sciencedirect.com/science/article/pii/0019850182900580) |
| `HCI-04` | Default options in online product configurators | Peer-reviewed behavioral research | Online configurator default-choice studies | Option selection, revenue mix | Defaults strongly steer configuration choices and nearby alternatives. | Pricing, Comparison, Signup | Tier 1 | [Default Options in Online Product Configurators](https://academic.oup.com/jcr/article-abstract/38/6/1073/1794967) |

## Principles by Page Type

### SaaS Landing Page

| Principle | Measurable impact target | Supporting source IDs | Confidence | Implementation caveats |
|---|---|---|---|---|
| Keep value proposition + primary CTA in first viewport | Scroll depth to first CTA, lead-capture CVR | `NNG-01`, `CXL-01` | High | Requires clear message-market fit; above-fold space is limited on small screens. |
| Build scan-first hierarchy with clear headings/subheads | Attention proxy (section CTR), comprehension proxy | `NNG-02`, `NNG-03` | High | Headings must map to buyer questions, not internal jargon. |
| Place social proof close to high-risk claims and CTA | Lead form starts, qualified lead rate | `CRE-01`, `CXL-01` | Medium | Proof must be specific and relevant to audience segment. |
| Use progressive disclosure for technical depth | Scroll completion and key section engagement | `NNG-01`, `NNG-03` | Medium | Hide less; do not bury critical legal or pricing details. |
| Keep lead form single-column and low-friction | Form completion and error rate | `BAY-04`, `BAY-05` | High | Aggressive friction removal can reduce lead quality (`CXL-02`). |

### E-commerce Product Page

| Principle | Measurable impact target | Supporting source IDs | Confidence | Implementation caveats |
|---|---|---|---|---|
| Keep price, variants, availability, shipping, and returns near buy path | Add-to-cart rate | `BAY-01` | High | Requires real-time inventory and shipping accuracy. |
| Move decision-critical info above likely early drop-off | Product comprehension proxy, add-to-cart | `NNG-01`, `BAY-01` | High | Over-compression can harm trust if details feel hidden. |
| Use anchored navigation for long PDP content | Scroll depth and interaction with specs/reviews | `NNG-03`, `BAY-01` | Medium | Keep anchor labels user-centered and stable across devices. |
| Offer direct comparison from PDP | Comparison starts, assisted conversion | `BAY-06`, `BAY-07` | High | Poor comparison quality can increase indecision. |
| Preserve context through cart and checkout transitions | Checkout completion | `BAY-02`, `BAY-08` | High | Misaligned totals or policies create abandonment spikes. |

### Pricing Page

| Principle | Measurable impact target | Supporting source IDs | Confidence | Implementation caveats |
|---|---|---|---|---|
| Limit plan complexity and emphasize meaningful differences | Plan selection CVR, time-to-decision | `HCI-01`, `HCI-02`, `SPE-01` | High | Fewer plans do not always win; test by segment. |
| Use ethical default/recommended plan placement | Revenue per visitor, upgrade mix | `HCI-04`, `SPE-01` | Medium | Track refunds/churn to avoid manipulative defaults. |
| Use decoy options only when they improve clarity | Target-plan share, ARPU | `HCI-03`, `HCI-01` | Medium | Decoy misuse can reduce trust and long-term retention. |
| Normalize feature comparison rows for scan speed | Comprehension proxy, selection confidence | `NNG-03`, `BAY-07` | High | Mixed units and vague labels break comparability. |
| Pair pricing blocks with risk-reversal and proof | Trial starts, paid conversion | `CRE-01`, `SPE-01` | Medium | Positioning can vary by ACV and sales-assisted motion. |

### Onboarding/Signup Page

| Principle | Measurable impact target | Supporting source IDs | Confidence | Implementation caveats |
|---|---|---|---|---|
| Keep forms single-column with natural input order | Form completion, error rate | `BAY-05`, `BAY-03` | High | Mobile keyboards and autofill behavior must be tested. |
| Mark required and optional fields explicitly | Completion time and field accuracy | `BAY-04` | High | Visual cues must be persistent, not only in placeholder text. |
| Ask only necessary fields at signup; defer enrichment | Signup completion, activation start rate | `BAY-03`, `BAY-02` | High | Deferred enrichment needs reliable follow-up trigger points. |
| Keep step expectations and progress visible | Step completion rate, abandonment per step | `NNG-03`, `GOOG-03` | Medium | Overly long wizards can still hurt completion. |
| Optimize mobile speed for each step transition | Bounce/drop-off and completion rate | `GOOG-02`, `GOOG-04` | High | Performance wins require backend and frontend coordination. |

### Comparison Pages

| Principle | Measurable impact target | Supporting source IDs | Confidence | Implementation caveats |
|---|---|---|---|---|
| Standardize attributes and terminology across options | Comprehension proxy, error-free selection | `BAY-07`, `NNG-03` | High | Cross-product taxonomy alignment is required. |
| Show highest-impact differences first | Scroll depth, CTA progression | `NNG-01`, `BAY-07` | High | Impact order differs by segment and intent. |
| Keep critical rows visible and avoid hidden traps | Decision completion, bounce from comparison | `BAY-07`, `BAY-06` | High | Dense tables need responsive fallback patterns. |
| Provide meaningful filter/sort controls | Comparison completion rate | `BAY-06`, `BAY-07` | Medium | Too many controls can reintroduce overload (`HCI-01`). |
| Tie comparison outcomes to consistent next-step CTA | Trial starts / add-to-cart / checkout starts | `BAY-02`, `GOOG-03` | Medium | CTA mismatch by segment reduces downstream quality. |

## Conflict Notes

- Choice overload is not universally negative. `HCI-01` and `HCI-02` show strong moderator effects; test assortment size and structure by segment instead of assuming "fewer is always better."
- Above-the-fold emphasis matters (`NNG-01`), but long pages still perform when hierarchy and signposting are strong (`NNG-03`).
- Friction reductions can improve completion but hurt qualification quality (`CXL-02`); monitor quality guardrails (SQL rate, churn, refunds) in parallel.
- Defaults and decoys can increase conversion (`HCI-03`, `HCI-04`) but carry trust risk; apply transparent labeling and long-term retention guardrails.
