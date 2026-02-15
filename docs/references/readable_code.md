# The Art of Readable Code — Reference for AI Agents

> This is a detailed reference document summarizing "The Art of Readable Code."
> Engineering mode §3 contains the enforced rules; this file provides the full rationale and techniques.
> Import via: @docs/references/readable_code.md (only when detailed guidance is needed)

---

## The Fundamental Theorem (Ch.1)

> **"Code should be written to minimize the time it would take for someone else to understand it."**

- **"Understand"** = Can modify, find bugs, and grasp interactions with other code
- Judge by "time to understand," not "clean/dirty" intuition
- Short code ≠ good code. Clarity over brevity when decoding is needed
- If code is "sufficiently understandable," move on — don't over-refactor

---

## Naming (Ch.2–3)

### Pack Information into Names
- **Nuanced verbs**: Avoid `get/find/make`. Use `fetch/locate/build/dispatch`
- **Ban `retval`**. Allow `tmp` only for true short-lived temporaries (swap, etc.)
- **Danger prefixes**: `plaintext_password`, `unescaped_comment`, `untrusted_url`
- **Units in names**: `delay_ms`, `limit_kbps`
- **Scope-appropriate length**: Short (`i`) for narrow scope, descriptive for wide scope
- **Format conveys role**: Constants (`kConstant`), members (`member_`), async (`_async`)

### Prevent Misinterpretation
- **Ban `filter`** — use `select()` or `exclude()` to clarify direction
- **Range standardization**: Inclusive: `first/last`. Half-open: `begin/end`. Avoid `start/stop`
- **Boundary prefixes**: Always use `max_`/`min_` for limits
- **Boolean naming**: Use `is`, `has`, `can`, `should`. No double negation (`disable_ssl = false` → `use_ssl = true`)
- **`get()` cost guarantee**: `get` = O(1) accessor. Expensive ops use `compute`/`count`

---

## Aesthetics (Ch.4)

- **Silhouette matching**: Align similar code blocks visually — readers spot differences instantly
- **Column alignment**: Align `=` and `:` in consecutive assignments to surface typos
- **Helper functions for regularity**: Hide irregular details to maintain visual consistency
- **Logical ordering**: Declare in meaningful order (form order, importance, alphabetical). Be consistent
- **Paragraph breaks with summary comments**: Blank line per logical step, each with a one-line scan comment
- **Consistency is absolute**: Follow existing project style over personal preference

---

## Comments (Ch.5–6)

### What to Comment
- **Director's Commentary**: Why this approach? Why not the alternative? What compromise was made?
- **Big Picture**: One sentence at the top of each file/class explaining its role in the system
- **Pitfalls**: Warn about surprising behavior, slow inputs, side effects, misuse-prone interfaces
- **Defects**: Use `TODO:`, `FIXME:`, `HACK:`, `XXX:` honestly
- **Constant backstory**: Why is it 8? (e.g., 2× CPU count). Note tuning limits

### How to Comment
- **Kill pronouns**: No `it`, `this`, `that` — use specific names
- **Implementation-level precision**: Not "returns line count" but "counts `\n` characters"
- **Strategic examples**: Pick the minimum case with maximum information density
- **Intent over action**: Describe business purpose, not code mechanics
- **Inline arg labels**: `Func(/* timeout_ms = */ 500)` when named params unavailable
- **Technical terms**: Use "cache layer," "canonicalize," "idempotency" to compress explanations

---

## Control Flow (Ch.7)

- **Conditions before actions**: Place loop/branch conditions above the body
- **Comparison order**: Left = variable (changing), Right = constant. `if (length >= 10)` not `if (10 <= length)`
- **Early returns / guard clauses**: Handle edge cases first, keep main logic at lowest indent
- **Ternary restriction**: Only for simple value selection. Use `if/else` for anything complex
- **Annotate magic**: Comment the scope of threads, exceptions, function pointers

---

## Expression Decomposition (Ch.8)

- **Explaining variables**: Mandatory for complex parsing or multi-layer object access
- **Summary variables**: DRY for business logic predicates or repeated expressions
- **De Morgan's law**: Simplify negated compound conditions
- **Try the opposite**: For 3+ logical operators, always try the negated form and pick the simpler one
- **No short-circuit puzzles**: Prefer multi-line `if/else` over clever one-liners

---

## Variables (Ch.9)

- **Delete unnecessary variables**: Remove temporaries that don't clarify
- **Shrink scope**: If a class member can be local, make it local
- **Define at use site**: Move declarations to just before usage (except config/constants)
- **Write-once ideal**: Default to `const`/`final` — zero cost to track value changes
- **Kill control-flow flags**: Replace `is_done` flags with `break`/`return`

---

## Extraction (Ch.10)

- **Find subproblems**: Ask per line: "Is this directly related to the high-level goal?"
- **Wrap ugly interfaces**: Create ideal helper functions around clunky library APIs
- **Over-abstraction check**: If you need to jump frequently to understand, the split is wrong

---

## One Task at a Time (Ch.11)

- **List tasks**: Write out every small job the code performs
- **Physically separate**: Move each task to its own function or clearly commented section
- **Separate extract from update**: Split "prepare data" from "apply/compute/save"

---

## Translate Thought to Code (Ch.12)

- **Rubber ducking**: Explain in plain words → extract keywords → code with those keywords
- **Eliminate negation**: Plain-language explanations tend to be positive → code follows
- **Recursive decomposition**: Break giant functions into verbal steps → each becomes a function

---

## Write Less Code (Ch.13)

- **YAGNI**: Don't implement "might need later." Note ideas in README, delete from code
- **Simplify requirements**: Find the 80% solution instead of the 100% complex one
- **Prune codebase**: Consolidate duplicates, routinely delete dead code
- **Use existing tools**: Check standard library APIs. Try Unix commands (`awk`, `grep`, `sort`) before writing code

---

## Testing & Readability (Ch.14)

- **Surface the essentials**: Hide setup in helpers. Aim for one-line test cases
- **Verbose failure messages**: On assert failure, show input, expected, and actual
- **Minimal effective inputs**: Simplest values that cover the case. Edge cases use symbolic minimums (`-1`, not `-999999`)
- **Descriptive test names**: `Test_Sort_EmptyInput` not `Test1`
- **Hard-to-test = bad design**: Use testability as a design quality signal
