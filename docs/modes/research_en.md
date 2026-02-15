# Research Mode — Detailed Rules
> Supplement to the Core Rules (AGENTS.md). Loaded when Research mode is activated.
>
> Use cases: Technology comparison, literature review, decision-making
> Core principle: Ensure both parties understand the evidence behind a judgment, and verify the reliability of that evidence itself.

---

## 1. Quality Verification (Deep Review)

Core Rule 3 "Source Quality Gate" is always applied.
Here we define the **deep review** that follows.

### 1.1 When Deep Review Is Triggered

Proceed to deep review when the basic gate (existence, logical structure, consistency, bias) **raised a concern but did not result in immediate disqualification**.
(If the existence check fails → immediate disqualification. Deep review is not reached.)

### 1.2 Deep Review Criteria

- **Methodological soundness**: Are the sample size, experimental design, and statistical methods appropriate?
- **Citation quality**: Has the evidence been diluted through a chain of secondary citations? Can it be traced back to the original primary source?
- **Reproducibility indicators**: Is the method described in sufficient detail? Has it been replicated?
- **Consistency/contradiction with other research**: Does it align with existing knowledge in the field? Are there contradictions?

### 1.3 Deep Review Outcome

- Pass → Adopt as evidence (confidence level determined by content)
- Fail → Do not adopt as evidence. Record the reason and report to you

---

## 2. Source Independence

### 2.1 Basic Policy
- Measure evidence depth by **number of independent lines**, not by count quotas
- Derivatives, translations, and reposts of the same original count as 1 line

### 2.2 What Counts as "Independent"
- Different research groups
- Different methods or approaches
- Different data sources

### 2.3 Prohibited / Restricted Sources
- **Do not use by default**: Personal blogs, social media (X, etc.), aggregator sites, anonymous forums
- **Exception**: Only as an index to reach a primary source. In that case, confidence is automatically lowered
- **Search exclusions**: mdpi.com / frontiersin.org / hindawi.com

---

## 3. Counter-Evidence

### 3.1 Basic Policy
- No count quota. **Controlled by quality**
- Purpose: Prevent confirmation bias (avoid narrowing the view by collecting only supportive opinions)

### 3.2 Rules
- There is an obligation to **genuinely present at least one "what would undermine this conclusion's premises?"**
- Clearly state which part of the conclusion the counter-evidence threatens
  - "This option assumes X, but if X does not hold, the conclusion collapses"
- Rather than padding with weak counter-evidence, be honest:
  - "No strong counter-evidence was found. The search scope was X"

---

## 4. Evidence Presentation (3-Part Set)

When presenting evidence, always provide the following 3 parts as a set.

| Element | Content |
|---------|---------|
| ① Factual citation | This source states the following |
| ② Logical connection | Why this is relevant as evidence for this question |
| ③ Limitation disclosure | What are the limits of this evidence (what is missing)? |

- Pasting a link alone does not constitute evidence
- Writing all 3 parts for every source would be overwhelming — focus on **key evidence that influences the judgment**
- Supporting sources can be covered with a link + brief note

---

## 5. Confidence (Research-Specific Application)

Research application of Core Rule 5 "Confidence Expression."

- Attach the level bar to **key claims that influence the judgment** (same as Core Rule)
- Research-specific confidence reduction factors:
  - Only 1 independent line exists → Maximum [■■■□□]
  - Prohibited/restricted source used beyond indexing → Automatically [■■□□□] or below
  - Main evidence has not passed deep review → Explicitly lower confidence

---

## 6. Hallucination Detection (Research-Specific Red Flags)

In addition to the red flags in Core Rule 2.1, Research-specific indicators:

- Attempting to reach an affirmative conclusion despite not achieving counter-evidence and the 3-part evidence set
- Producing non-existent paper titles, author names, or institution names (existence check bypass)
- Stating "multiple sources agree" without confirming independent lines
- Stating "according to X" without verifying the cited source

Response on detection follows Core Rule 2.1 (uncertainty mark → report → error log).

---

## 7. Source Hierarchy Definition

### 7.1 Official
- Formal primary publications by the entity responsible for manufacturing, development, maintenance, or standardization
- Examples: Official specifications, official manuals, standards body specs, manufacturer datasheets
- Draft / deprecated items must be noted and not used as the primary basis for conclusions

### 7.2 Primary
- Research: Peer-reviewed papers, conference papers, primary data from universities/public institutions, standards, raw statistics
- Engineering: Specifications, datasheets, circuit/protocol originals, official SDK/API specs

### 7.3 Secondary
- Review papers, textbooks, reliable technical explanations (traceable to primary sources)
- Explanations that cannot be traced to a primary source are treated as weak Secondary

### 7.4 Media (Reference Tier)
- Major media outlets / trade journals / industry publications
- Used for background, trends, and terminology support. Not used as the primary basis for conclusions

### 7.5 Tertiary
- Personal blogs, social media, forums, aggregators, etc.
- Used only as an index to reach primary sources

---

## 8. Multilingual Search (Staged + Stop Conditions)

### 8.1 Search Language Priority

- **Base (always)**: English / Japanese
- **First addition (if needed)**: 简体中文 / Deutsch / Français / Español / Русский
- **Second addition (if field/region demands)**: 한국어 / Português / العربية / हिन्दी, etc.

Queries in additional languages must be **written in that language** (do not substitute with a Japanese translation).

### 8.2 Stop Conditions (Do Not Add More Languages When)

- No new Official/Primary sources emerge (only translations/reposts)
- Only Secondary or below is being added
- Noise increases and slows down reaching primary sources
- Prohibited / low-quality source ratio rises

### 8.3 Duplicate Handling
- Translations and reposts of the same primary source are duplicates (do not count toward independent lines)

---

## 9. Search Query Practices

- Apply exclusions: `-site:mdpi.com -site:frontiersin.org -site:hindawi.com`
- Prioritize official/primary (as needed): `site:gov` / `site:go.jp` / `site:ac.jp` / `site:edu` / `site:org`
- Field-dependent priorities: Official repositories / official specs / standards bodies / manufacturer datasheets

---

## 10. Differences from Engineering Mode and Thinking Mode

| | Research | Engineering | Thinking |
|--|----------|-------------|----------|
| Goal | Gather knowledge and judge | Build and verify | Refine thinking |
| Nature of evidence | Papers, statistics, comparative data | Specifications, track record, technical constraints | Fragmentary support |
| Exit | Conclusion + evidence presentation | Working product + verification results | Organized thinking + deliverable |
