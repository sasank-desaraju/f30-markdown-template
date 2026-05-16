# Setup

This file is the technical runbook for the F30 Markdown template.
It is written for a technical user or an AI coding agent helping a non-technical grant writer.

## Agent Quick Start

1. Read `AGENTS.md`.
2. Read `ai/README.md`, `ai/PROJECT_INFO.md`, and `ai/STYLE_GUIDE.md`.
3. If the user has not already made their own copy, discuss whether they should fork, clone, or use a template copy before giving commands.
4. Confirm tool availability with the checks below.
5. Treat `markdown/` as the source of truth.
6. Treat `docx/`, `pdf/`, `build/`, and `submission_pdfs/` as generated outputs.
7. For substantial edits, update `AI_LOG.md`.

## Getting Your Own Copy

Before installing tools or editing files, the agent should briefly ask the user how they want to use this repository.
Do not assume the right GitHub workflow, especially if the user has never used Git before.

Ask something like:

> Do you want your own GitHub copy that you can modify and share, or do you just want a local copy on your computer for now?

Use this guidance:

- Fork the repository if the user wants their own GitHub copy while preserving a visible link back to the original project.
- Use GitHub's "Use this template" flow if the repository is configured as a template and the user wants a clean new grant repository without fork history.
- Clone the repository if the user only needs a local working copy, or if they have already forked or created a template copy on GitHub.
- Download a ZIP only if the user wants to avoid Git entirely at first; explain that this makes future syncing and version history harder.

For most grant writers adapting this for a real application, a template copy or private fork is usually the cleanest starting point.
If the grant contains real unpublished science, patient-related details, sponsor letters, or personal statements, recommend a private repository.

Common commands:

```bash
git clone git@github.com:sasank-desaraju/f30-markdown-template.git
cd f30-markdown-template
```

If the user forked the repo first, replace the URL with the URL of their fork.
If the user created a template copy, replace the URL with the URL of that new repository.

After cloning, the agent should check:

```bash
git status
git remote -v
```

If `origin` still points to the public template but the user intends to write a real grant, stop and help them create or connect a private repository before adding private material.

## Required Tools

Minimum requirement for DOCX export:

- `quarto`
- `pandoc`

Additional requirement for PDF export:

- `xelatex`

Optional requirement for timeline asset rendering:

- `google-chrome` or Chromium
- `pdfcrop`
- ImageMagick `convert`

Check local availability:

```bash
which quarto
which pandoc
which xelatex
which google-chrome
which pdfcrop
which convert
```

Quarto installation:

https://quarto.org/docs/get-started/

Pandoc installation:

https://pandoc.org/installing.html

LaTeX options:

- macOS: MacTeX
- Windows: MiKTeX or TinyTeX
- Linux: TeX Live

## Repository Layout

Core source and configuration:

- `markdown/`: editable grant sections and NIH attachment text
- `draft.qmd`: full-draft assembly file
- `_quarto.yml`: Quarto configuration for PDF and DOCX rendering; this is where NIH formatting rules live
- `refs/f30.bib`: Zotero-exported bibliography
- `vancouver.csl`: citation style
- `reference.docx`: reference document for DOCX styling

AI and workflow context:

- `AGENTS.md`: agent entry point
- `GUIDED_TOUR.md`: stepwise guided-tour script for orienting users
- `ai/`: project context, style guide, and navigation notes
- `docs/workflows/`: human-readable workflow notes
- `AI_LOG.md`: running log of substantial agent work

Supporting grant materials:

- `biosketches/`: synthetic biosketch drafts
- `support/`: synthetic support letters
- `reference/`: reference-letter request templates
- `feedback/`: mentor comments, marked-up drafts, review notes
- `examples/`: place for allowed public or private examples
- `figs/`: figure and timeline assets

Generated outputs:

- `docx/`: Word exports
- `pdf/`: PDF exports
- `build/`: Quarto build output
- `submission_pdfs/`: submission-style attachment exports

## Standard Commands

Render full draft to DOCX:

```bash
./build_docx.sh
```

Render full draft to PDF:

```bash
./build.sh
```

Export Specific Aims to DOCX and PDF:

```bash
./aims_export.sh
```

Export one section to DOCX:

```bash
./build_section_docx.sh markdown/3_4_Specific_Aims.md
```

Export one section to PDF:

```bash
./build_section_pdf.sh markdown/3_4_Specific_Aims.md
```

Build separate submission-style PDF attachments:

```bash
./submission_export.sh
```

Force optional timeline asset rendering:

```bash
ENABLE_TIMELINE_RENDER=1 ./render_timeline_assets.sh --force
```

## Source-of-Truth Rules

- Edit grant prose in `markdown/*.md`.
- Edit full-draft ordering in `draft.qmd`.
- Edit project rendering behavior in `_quarto.yml`.
- Do not edit generated `.docx` or `.pdf` files as canonical source.
- Put incoming mentor comments and marked-up documents in `feedback/`.
- Reconcile accepted feedback back into `markdown/`.
- Keep private real grant material out of public repositories.

## Citation Rules

Use Pandoc citations:

```markdown
CAR T cells have shown early clinical activity in recurrent glioblastoma [@brownRegressionGlioblastomaChimeric2016].
```

The citation key must exist in `refs/f30.bib`.
`refs/f30.bib` is authoritative and should be generated from Zotero, ideally with Better BibTeX if stable keys are desired.
Do not hand-write or manually replace BibTeX entries in `refs/f30.bib`.
If a needed paper is missing, add the DOI to `refs/doi_list.md`, have the user import it into Zotero, and then re-export `refs/f30.bib`.
Use `refs/doi_list.md` as an inbox for papers that still need to be imported or checked.

## Agent Operating Procedure

For writing or editing tasks:

1. Inspect `git status --short`.
2. Read the relevant source file in `markdown/`.
3. Read `ai/PROJECT_INFO.md` and `ai/STYLE_GUIDE.md` if project or style context matters.
4. Make scoped edits to source files.
5. Run the smallest relevant export check.
6. Update `AI_LOG.md` for substantial work.
7. Summarize changed files and verification results.

For export tasks:

1. Identify the target section or full draft.
2. Run the relevant script from "Standard Commands."
3. Report the output path.
4. If the command fails because of missing tools, report the missing tool and installation path.

For feedback triage:

1. Save or read feedback under `feedback/`.
2. Summarize feedback into actionable items.
3. Separate content issues, style issues, citation issues, and formatting/export issues.
4. Apply accepted changes to `markdown/`.
5. Re-export the affected section.

## Troubleshooting

DOCX export fails:

```bash
which quarto
which pandoc
quarto --version
pandoc --version
```

PDF export fails:

```bash
which xelatex
xelatex --version
```

Section export cannot find a file:

- Confirm the path starts with `markdown/`.
- Confirm the filename and capitalization match `find markdown -maxdepth 1 -type f | sort`.

Citation rendering fails:

- Confirm the citation key exists in `refs/f30.bib`.
- Confirm `_quarto.yml` points to `refs/f30.bib` and `vancouver.csl`.
- If the paper is missing from `refs/f30.bib`, do not fabricate an entry.
  Add the DOI to `refs/doi_list.md` and ask the user to import it into Zotero and re-export the collection.

Timeline rendering fails:

- Timeline rendering is optional by default.
- Normal builds should not require it.
- If explicitly needed, check `google-chrome`, `pdfcrop`, and `convert`.

Quarto include fails:

- Includes in `draft.qmd` should generally look like `{{< include markdown/File.md >}}`.
- Includes inside `markdown/*.md` that reference root-level folders should use paths from the project root, such as `{{< include support/file.md >}}`.

## Current Verification Commands

These commands should pass in a fully configured environment:

```bash
./build_docx.sh
./build.sh
./aims_export.sh
```
