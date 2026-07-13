# Discovery rules

> How this PM runs continuous discovery. Loaded when the system runs interviews, surveys, or opportunity framing.

## Cadence

4–6 customer interviews per month. Mix of:
- Enterprise administrators
- Engineering managers
- Site Reliability Engineers (SREs)
- Incident commanders
- Existing power users
- Recently churned customers

*(Batch D Q2)*

## Where transcripts live

- **Raw recordings:** Zoom (auto-transcribed)
- **Transcripts:** Notion — Product Research workspace (organized by date and participant type)
- **Synthesized insights:** Notion research repository (shared with product team)
- **PM Brain:** ingested transcripts go to `source/interviews/YYYY-MM-DD-<slug>.md` (verbatim), synthesized to `ingestion/interviews/YYYY-MM-DD-<slug>.md`

*(Batch D Q2)*

## Opportunity-solution tree

TODO: confirm whether PM uses OST explicitly or a different framework. Link tree location when established.

## Recruitment rules

- Minimum mix: at least 1 enterprise admin and 1 SRE per monthly batch
- Include recently churned customers — they carry the highest-signal feedback
- Avoid over-indexing on power users — they under-represent adoption barriers for new users
- Design partner (Alex Morgan / Acme Corp) feedback is high-quality but may not generalize; validate across at least 2 additional enterprise accounts before acting

## Question quality

- Behavioral over hypothetical ("tell me about the last incident your team responded to" not "would you use a feature that...")
- Specific past instances over general patterns
- Probe for workarounds — they signal unmet needs better than stated preferences
