# Post 3 (Threat Models) — Rigor & Comprehensiveness Audit

*Audit date: 2026-06-15. Scope: `threat-models.qmd` + its included chapters (`axes.qmd`, `threat-models/*.qmd`, `cuts.qmd`, `utility.qmd`, `position.qmd`). Framing decision: failure-mode is the lead; archetype files kept as reference only.*

Verdict: the post is in good shape structurally and the §I hook is strong. The work needed is (a) one substantive citation fix, (b) precision passes on three p(doom) figures, (c) removing leftover *archetype* artifacts that still live in this post, and (d) deciding whether Model 5 is a threat model or a crux.

---

## A. BLOCKING — fix before publish

### A1. Sharp Left Turn opener conflates two different papers (factual error)
The opening claims *"researchers at Apollo Research and Redwood Research found that frontier models could independently execute 'in-context scheming' — strategically performing alignment during training evaluations to avoid having their underlying goals modified"* and dates it **"early 2025."**

This merges two distinct December 2024 results:

- **In-context scheming** — Apollo Research *alone* (Meinke et al., arXiv **2412.04984**, 5 Dec 2024). Behaviors: disabling oversight, attempted self-exfiltration, sandbagging. Redwood is **not** an author.
- **Alignment faking** — Anthropic + Redwood Research (Greenblatt et al., arXiv **2412.14093**, ~18–20 Dec 2024). *This* is the "fake alignment during training to preserve goals" result the sentence actually describes (Claude 3 Opus, 14% compliance free-tier, 78% alignment-faking reasoning after RL).

Fix options: (i) attribute "in-context scheming" to **Apollo (Dec 2024)** and describe Apollo's actual behaviors; or (ii) keep the "preserve goals during training" description and attribute to **Anthropic + Redwood, alignment faking (Dec 2024)**. Don't pair the two names with one term. Correct the date to **late 2024**.

### A2. Sources list is organized by archetype, not by threat model
`utility.qmd` (included as the post's Sources) is headed **#1 Hard Doomer … #7 Gradualist Forecaster** — the *archetype* taxonomy. This post never uses those labels, so a reader hits seven names that don't appear anywhere in the text. Re-key the Sources to the six threat models (Sharp Left Turn, Structural Disempowerment, Control Failure, Multipolar Racing, Architectural Agency, Mundane Integration). All the underlying citations are reusable; only the headings are wrong.

### A3. Title metadata still says "Archetypes"
`threat-models.qmd` front-matter `title:` = **"Archetypes of the Doom Debate"** (subtitle correctly says "Threat Model Framework"). Set the title to the threat-model version.

---

## B. SHOULD-FIX — precision & the post's own standard

The post's writing discipline says *every p(doom) number must cite where it was stated and specify the definition of doom and the time window.* Three inline numbers don't yet meet that bar:

### B1. Critch 85% — split the components
Verified figure: **85% extinction over ~25 years = 35% loss-of-control + 50% "industrial dehumanization."** The Multipolar Racing file currently attributes the whole 85% to the dehumanization route. Precise version: *"~50% via industrial dehumanization, ~85% total over ~25 years."* Adding the **~25-year window** also satisfies the post's own standard and reinforces the Axis-5 point.

### B2. Amodei ~25% — weakest on definition/window
Verified: Axios AI+ DC Summit, **17 Sep 2025**, "25% chance things go really, really badly" (he explicitly dislikes "p(doom)"). This is broad — not extinction-specific, no window. Either characterize it as stated ("~25% that things go 'really badly'") rather than implying an extinction figure, or footnote the imprecision. As the post's own thesis, leaving it undefined is the most visible self-inconsistency.

### B3. Grace survey — "decomposed" mischaracterizes the methodology
Verified: 5% **median** on the bundled extinction question; **37.8%–51.4%** gave ≥10% across **three differently *phrased*** extinction questions (framing effect, n=2,778). The Mundane Integration file frames the 37–51% as coming from respondents *multiplicatively decomposing* risk into a product of component probabilities. That's not what the survey did — the spread is from question framing, not respondents multiplying sub-probabilities. Since Model 6's "worry properly via decomposition" thesis leans on this, tighten it: the survey shows *framing sensitivity*, and the decomposition argument is the authors' (your) interpretive overlay, not a survey finding.

### B4. Altman "most dangerous technology" quote — unverified
The WSJ Jan 2024 quote is already honestly footnoted as paywalled, but I could not confirm a Jan 2024 WSJ interview with that headline; Davos/WEF is what Altman did that week. Consider swapping for the well-attributed Altman line ("Development of superhuman machine intelligence is probably the greatest threat to the continued existence of humanity," 2015) or another sourced racing quote, so the Multipolar Racing opener rests on a verifiable anchor.

### B5. Christiano source link
Post cites `alignmentforum.org/posts/a392MCzsGXAZP88Sq`. Canonical "My views on 'doom'" is `lesswrong.com/posts/xWMqsvHapP3nwdSW8`. Verify the AF slug resolves or switch to the LW canonical. (The 22% = "AI takeover" figure itself is correct: 15% pre-obsolescence + 7% later.)

---

## C. STRUCTURAL — leftover archetype residue in a threat-model post

- **Appendix/Notes** (`utility.qmd`) still asks *"are all seven archetypes genuinely distinct? … is Conditional Doomer doing different work than Structural Doomer?"* — pure archetype leftover. Replace with the six-model distinctness question (see D1).
- **§VI honest caveat** (`utility.qmd`) references *"Gradualist Forecaster territory"* — archetype name in a threat-model post. Reword to the corresponding stance (decomposition-first / empirically-conditioned).
- **Axis 1** (`axes.qmd`) embeds archetype-flavored labels (Present-Harms Realist, Capability Skeptic, Capability Extrapolationist). Lower priority — they read as descriptors, not gallery entries — but worth a consistency check so the two posts don't blur.
- **§I unsourced claim**: "guests on the same podcast gave p(doom) estimates ranging from near-zero to above 95%" — soften or cite.

---

## D. JUDGMENT CALLS — distinctness of the six models

### D1. Model 5 (Architectural Agency) may be a crux, not a peer threat model
The file itself says Bengio and Yudkowsky *"share a near-identical threat assessment."* If Architectural Agency shares Sharp Left Turn's mechanism and differs only on **intervention** (ban agency vs. ban intelligence), it's arguably **Crux A (agency emergent vs. design choice)** wearing a threat-model costume — not a sixth mechanism. Two defensible resolutions:
- Keep it, but frame it explicitly as *"the same mechanism as SLT, viewed through the agency crux"* (the §IV transition map already treats A as the SLT↔Architectural hinge — lean into that).
- Demote it into §IV as the worked example of Crux A, leaving **five** mechanistic threat models.

### D2. Model 6 bundles two positions
"Mundane Integration **&** Paradigm Skepticism" fuses LeCun's *"the dangerous system won't exist"* (a Scope/Axis-1 claim) with *"the real catastrophe is mundane power concentration / present harms"* (a different mechanism). They share a conclusion (don't prep for sci-fi takeover) but not a model. Either split them or state plainly that the model is defined by *what it rejects* rather than a single positive mechanism.

### D3. SLT vs. Structural Disempowerment — genuinely distinct ✓
Both prior-dominant, both lean on orthogonality + instrumental convergence, but they differ cleanly on takeoff speed (fast vs. slow) and unipolar vs. distributed accretion. No action needed.

---

## E. Model → Tree mapping (the "slight notes" you wanted)

Base tree from Posts 1–2: **AI-driven / not → single-dominant / multipolar → internal-model / no-internal-model → expects-catastrophe / does-not-expect.**

| # | Threat model | Maps to tree node | Fit |
|---|---|---|---|
| 1 | **Sharp Left Turn** | AI-driven → single-dominant → internal model → **expects catastrophe** | **Clean.** The canonical "knows what it's doing and pursues it" leaf. |
| 2 | **Structural Disempowerment** | AI-driven → **multipolar** (gradual accretion across many systems) | Clean-ish. Per your Post-2 comment (`usife`), "multipolar = everything that isn't a single optimizer," incl. gradual erosion. Sits here, though its *logic* (orthogonality/convergence) is shared with the single-dominant branch. |
| 3 | **Control Failure** | AI-driven → single-dominant → internal model → **does NOT expect** (mistakes) — *plus* a misuse route | Partial. The technical-misalignment route lands squarely on the **"does-not-expect / mistake" branch** — the node you and Sean were most excited to have surfaced (Post-2 threads). **Misuse has no clean node** (the "expecting" agent is the human, not the AI) — flag this gap explicitly. |
| 4 | **Multipolar Racing** | AI-driven → **multipolar** | **Cleanest multipolar fit.** Coordination/bargaining failure among many actors. |
| 5 | **Architectural Agency** | Not a node — it's **Crux A / Axis 2** (is agency on the dangerous branch at all) | Maps to an *axis*, not a leaf. Same node as SLT when agency is built in. See D1. |
| 6 | **Mundane Integration / Paradigm Skepticism** | Splits: paradigm-skeptic ≈ **Non-AI pathway / "capable system never exists"**; present-harms ≈ **outside the tree's x-risk frame** | Maps to *two* places, neither a single leaf. See D2. |

**Headline finding for the post:** 4 of 6 models locate on tree *nodes* (1, 2, 3, 4); 2 of 6 (5, 6) locate on *axes/cruxes* rather than nodes. That's not a defect — it's worth stating as a feature: the tree encodes **mechanism**, so models that are really about *which branch you're even on* (agency, scope) correctly show up as axes. A one-paragraph note to this effect in §III or §VI would make the tree-mapping rigorous rather than hand-wavy, and ties Post 3 back to Posts 1–2.

---

## E2. Links status (2026-06-15)

Confirmed correct via search:
- Christiano "My views on 'doom'" — switched to canonical `lesswrong.com/posts/xWMqsvHapP3nwdSW8` (the old `alignmentforum.org/.../a392MCzsGXAZP88Sq` slug was the suspect one).
- Critch ~85% — now cites the actual source: `lesswrong.com/posts/Kobbt3nQgv3yn29pr` (was "no canonical URL").
- New empirical-anchor papers added & ID-verified: Alignment Faking `2412.14093`, In-Context Scheming `2412.04984`, Sleeper Agents `2401.05566`, Gradual Disempowerment `2501.16946` (Kulveit, Douglas, Ammann, Turan, Krueger, Duvenaud), Bengio Scientist AI `2502.15657`.

Still to verify before publish (couldn't ping — fetch tool timing out this session):
- Bengio et al., *Science* DOI `10.1126/science.adn0117`
- MIRI 2024 update `lesswrong.com/posts/xofpLpFjkMFgYX6JC`
- Russell & Norvig CIRL `arxiv.org/abs/1606.03137`
- Toner — generic `cset.georgetown.edu` (no specific piece; consider linking a named report)
- International AI Safety Report gov.uk 2025 URL
- Chollet `arcprize.org`, Bostrom OUP/Amazon links
- LeCun "dogs or cats" quote — still no direct source (flagged in text)

## F. Quick-win checklist

- [ ] A1 — fix SLT opener (paper attribution + date)
- [ ] A2 — re-key Sources to the six threat models
- [ ] A3 — fix `title:` metadata
- [ ] B1 — Critch 35/50/85 split + ~25y window
- [ ] B2 — Amodei: characterize as "things go badly," not extinction
- [ ] B3 — Grace: framing-effect, not multiplicative decomposition
- [ ] B4 — replace/verify Altman quote
- [ ] B5 — verify/replace Christiano link
- [ ] C — purge archetype residue (Appendix, §VI, Axis 1, §I podcast claim)
- [ ] D1/D2 — decide: Architectural Agency as crux? split Model 6?
- [ ] E — add the "4 nodes / 2 axes" paragraph + per-model tree note
- [ ] Author TBDs + include §V (`position.qmd`) before publish
