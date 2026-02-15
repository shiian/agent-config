# Error Log
This file tracks hallucinations, logical leaps, and other errors as defined in GEMINI.md (2.5).

| Date | Mode | Type | Description | Cause | Amendment |
|------|------|------|-------------|-------|-----------|
| 2026-02-11 | Research | Fabrication / Format Error | Over-asserted that SSE has "virtually no limits" on connections. Also failed to apply the "3-part set" and "confidence bar" required by Research mode. | Reliance on general knowledge (Quick mode style) instead of strictly following mode-specific rules in GEMINI.md. | No |
| 2026-02-11 | Engineering | Fabrication | Claimed `gh auth login --ssh-key-id` exists. Provided an unexecutable command using an unset environment variable. | Confusion between Git SSH auth and GitHub CLI API auth. Over-optimism in automation without verifying CLI specs. | No |
| 2026-02-11 | Engineering | Over-assertion | Did not explicitly state that sudo/password would be required for gh installation. | Over-optimism in describing the automation process. | No |
| 2026-02-11 | Thinking | Format Error / Logic Leap | Used an undefined 5-block confidence bar [■■■■■] and assumed CLI logic based only on ls results. | Over-confidence in personal logic and neglecting the newly established self-check procedure. | No |
| 2026-02-11 | Research | Fabrication | Falsely claimed Gemini 3.0 Pro does not exist, relying on outdated knowledge without immediate verification. | Reliance on internal knowledge base instead of performing a Source Quality Gate check. | No |
| 2026-02-11 | Research | Scope Creep | Repeatedly summarized multiple chapters at once despite explicit instructions to focus on one chapter at a time. | Prioritizing output volume and perceived efficiency over strict adherence to the user's requested step-by-step workflow. | No |
| 2026-02-11 | Engineering | Data Corruption | Overwrote `readable_essentials.md` with an incomplete string, accidentally deleting summaries for Chapters 3-14. | Using `write_file` with a partial content instead of `replace` or a full-content update. | No |
| 2026-02-11 | Quick | Fabrication | Claimed `/config` is a valid command to show settings. | Assumption of common CLI patterns without verifying the specific tool's help documentation. | No |
| 2026-02-11 | Engineering | Repeated Failure | Multiple syntax errors and `replace` tool mismatches in script creation and file editing. | Lack of precision in handling line breaks and whitespace in automated edits. | No |
