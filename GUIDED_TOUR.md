# Guided Tour Script for AI Agents

This file is addressed to the AI agent.
Use it when a user asks for a tour, orientation, walkthrough, explanation of the repo, or help understanding how the template is organized.

## Expected Behavior

Before starting, ask:

> Would you like a guided tour of this grant-writing template?

If the user says yes, start at Stop 1.
Explain only one stop at a time.
After each stop, pause and ask whether they want to continue, inspect a file, ask a question, or try the workflow.
Do not continue to the next stop until the user indicates they are ready.

If the user says no, briefly say that they can ask for the guided tour later.

If the user asks to skip ahead, jump to the requested stop.
If they ask a question, answer it in context, then offer to continue from the same stop.
If they want to perform an action such as exporting a file, do the action or walk them through it, then return to the tour.

The user may be new to terminals and code editors.
Use plain language first.
Mention commands only when useful, and explain what the command does.

## Tour Structure

### Stop 1: What This Repository Is

Goal: establish the concept.

Explain:

- This is a complete fake F30 grant repository.
- The fake applicant is Allie Gator.
- The point is the workflow, not the fake science.
- The main idea is that Markdown files are the source of truth, while Word and PDF files are exports.

Suggested prompt to user:

> That is the big picture. Do you want to look next at where the actual grant text lives?

### Stop 2: The `markdown/` Folder

Goal: show where the grant text lives.

Explain:

- `markdown/` contains the editable grant sections.
- Each file is a grant attachment or section, such as Specific Aims, Research Strategy, Candidate section, RCR, Facilities, and Equipment.
- This folder replaces the giant monolithic Word draft as the canonical source.
- `markdown/3_4_Specific_Aims.md` is a good first file to inspect.

Optional action:

```bash
find markdown -maxdepth 1 -type f | sort
```

Suggested prompt to user:

> Would you like to open one of these Markdown files, or should we continue to how the full draft is assembled?

### Stop 3: `draft.qmd` and Full-Draft Assembly

Goal: explain how separate sections become one draft.

Explain:

- `draft.qmd` is the assembly file.
- It uses Quarto include lines to pull sections from `markdown/`.
- Reordering sections usually means editing `draft.qmd`, not copying text between files.
- This makes it easier for AI and humans to reason about the application structure.

Point out include syntax:

```markdown
{{< include markdown/3_4_Specific_Aims.md >}}
```

Suggested prompt to user:

> Do you want to continue to how this becomes a Word document for your PI?

### Stop 4: Word and PDF Exports

Goal: reassure the user that Word review still works.

Explain:

- The template can export Markdown to `.docx` and `.pdf`.
- Generated Word files live in `docx/`.
- Generated PDFs live in `pdf/`.
- These files are for review and sharing.
- The source of truth remains in `markdown/`.

Useful commands:

```bash
./build_docx.sh
./build_section_docx.sh markdown/3_4_Specific_Aims.md
./aims_export.sh
```

Suggested prompt to user:

> Would you like me to export a Word draft now, or should we continue to the AI-specific parts?

### Stop 5: The `ai/` Folder

Goal: explain built-in AI context.

Explain:

- `ai/` is where the project teaches agents what is going on.
- These files are meant to be read by AI agents before they edit the grant.
- `ai/PROJECT_INFO.md` gives the scientific and training context.
- `ai/STYLE_GUIDE.md` tells agents how the grant should sound.
- `ai/README.md` is the entry point.
- This reduces repeated explanation and makes AI help more consistent.

Suggested prompt to user:

> Do you want to inspect the AI context files, or continue to the project log?

### Stop 6: `AI_LOG.md`

Goal: explain the project memory and change log.

Explain:

- `AI_LOG.md` is the running record of substantial agent work.
- It helps future agents understand what changed, why it changed, and what still needs attention.
- It is not a polished grant section; it is project memory.
- Users can ask the agent to read `AI_LOG.md` before continuing work after a break.
- Agents should update `AI_LOG.md` after substantial writing, restructuring, setup, or workflow changes.

Suggested prompt to user:

> Do you want to look at the project log, or continue to feedback and revision workflows?

### Stop 7: Feedback Workflow

Goal: show how mentor comments fit into the system.

Explain:

- Mentors can still comment in Word.
- Export a section to Word.
- Save marked-up drafts, emails, or notes in `feedback/`.
- Ask the agent to summarize feedback into an actionable checklist.
- Apply accepted changes back into `markdown/`.

Mention:

- `feedback/README.md`
- `docs/workflows/feedback_triage.md`
- `docs/workflows/word_review_export.md`

Suggested prompt to user:

> Would you like to see the feedback folder, or continue to references and Zotero?

### Stop 8: References and Zotero

Goal: explain citation management.

Explain:

- `refs/f30.bib` is the bibliography used by Quarto and Pandoc.
- In this template, `f30.bib` is expected to be exported from Zotero.
- Agents should not hand-write BibTeX entries.
- If a paper is needed, the agent should add its DOI to `refs/doi_list.md`.
- The user then imports the DOI into Zotero and re-exports `refs/f30.bib`.

Mention:

- `refs/README.md`
- `docs/workflows/citation_workflow.md`

Suggested prompt to user:

> Do you want to continue to biosketches and support letters?

### Stop 9: Biosketches and Letters of Support

Goal: show where supporting documents live.

Explain:

- `biosketches/` contains biosketch drafts or planning files.
- `support/` contains support-letter drafts.
- `reference/` contains reference-letter request planning.
- In a real grant, final signed PDFs and confidential letters should usually stay private.
- This public template uses synthetic examples.

Suggested prompt to user:

> Do you want to continue to the official NIH instructions, or pause here?

### Stop 10: `other/` and Official NIH Instructions

Goal: show where official instructions live.

Explain:

- `other/` contains reference material that is useful while writing the grant.
- `other/Fellowship Instructions for NIH and Other PHS Agencies.pdf` is the official NIH/PHS fellowship application instructions PDF.
- This file is not source grant text and should not be edited.
- The agent can consult it when the user asks about attachment requirements, page limits, formatting expectations, or fellowship-specific instructions.
- For current submissions, users should still verify requirements against the active NIH funding opportunity and the latest official NIH instructions.

Suggested prompt to user:

> Do you want to look at the official instructions file, or continue to setup and technical commands?

### Stop 11: `SETUP.md` and Technical Setup

Goal: orient technical users and agents.

Explain:

- `SETUP.md` is the technical runbook.
- It lists required tools, export commands, troubleshooting, and agent operating procedures.
- A user does not need to memorize it.
- The agent can read it when asked to install tools, check requirements, or export files.

Suggested prompt to user:

> Would you like me to check whether the export tools are installed?

If the user does not want a setup check, or after the setup check is complete, end with:

> That is the full tour. Would you like to revisit any folder, export a draft, or start adapting the template to your own grant?

## Optional Short Tour

If the user asks for a shorter version, use this sequence:

1. `markdown/`: source grant text.
2. `draft.qmd`: full-draft assembly.
3. `docx/` and `pdf/`: generated exports.
4. `ai/`: agent context and style.
5. `AI_LOG.md`: running record of substantial agent work.
6. `feedback/`: mentor comments and revision workflow.
7. `refs/`: Zotero-exported bibliography.
8. `other/`: official NIH/PHS fellowship instructions.
9. `SETUP.md`: technical runbook.

Still pause after each stop.

## Agent Notes

- Keep explanations concrete and brief.
- Do not dump the whole tour at once.
- Encourage the user to ask questions at each stop.
- Offer to inspect files or run safe read-only commands.
- Run export commands only when the user wants to try them.
- When editing as part of the tour, keep changes scoped and update `AI_LOG.md` if substantial.
