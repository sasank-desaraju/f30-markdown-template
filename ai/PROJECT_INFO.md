# Project Information

This document contains content context for the synthetic NIH F30 fellowship application.
It is not required to sound like the final grant.
It exists to provide consistent background and terminology for AI assistants.

## Applicant

Allie Gator is a fictional MD/PhD student at the University of Florida.
Her long-term goal is to become a neurosurgeon-scientist who develops cellular immunotherapies for malignant brain tumors.

## Project Overview

The project studies whether bivalent CAR T cells targeting IL13Ra2 and EGFRvIII can delay antigen escape in patient-derived glioblastoma models.
It uses banked standard-of-care surgical specimens, primary human T-cell engineering, in vitro selection models, and an orthotopic patient-derived xenograft model.

## Central Hypothesis

A bivalent IL13Ra2/EGFRvIII CAR will improve tumor control relative to monovalent CARs by reducing single-antigen escape, and residual escape will be associated with measurable antigen-low and stress-response phenotypes.

## Specific Aims

**Aim 1:** Engineer and characterize a bivalent IL13Ra2/EGFRvIII CAR in primary human T cells.

**Aim 2:** Define the antigen-escape phenotype under CAR T selective pressure in vitro.

**Aim 3:** Test whether bivalent targeting improves tumor control in an orthotopic patient-derived model.

The aims are intentionally independent.
Aim 2 can proceed with a benchmark clinically relevant CAR even if the Aim 1 construct underperforms.
Aim 3 can substitute a published bivalent comparator if the internal construct is not suitable.

## Mentorship Team

- Charles Hermite, primary sponsor, synthetic neuro-oncology immunotherapy scientist.
- Emmy Noether, co-sponsor, synthetic physician-scientist and translational trialist.
- Subrahmanyan Chandrasekhar, collaborator, synthetic imaging and quantitative pathology expert.
- Joseph-Louis Lagrange, collaborator, synthetic cell-manufacturing and vector-design expert.

## Document Map

- `_quarto.yml` controls Quarto rendering.
- `draft.qmd` assembles the full application draft.
- `markdown/Summary_Abstract.md` is the project summary.
- `markdown/2_Candidate.md` is the candidate goals, preparedness, and potential section.
- `markdown/3_3_Training_Activities_and_Timeline.md` is the training activities section.
- `markdown/3_4_Specific_Aims.md` is the active Specific Aims page.
- `markdown/3_5_Research_Strategy.md` is the Research Strategy.
- `markdown/3_7_RCR.md` is the Responsible Conduct of Research section.
- `markdown/4_8_Sponsor_Commitment.md` is the sponsor commitment section.
- `markdown/4_9_Letters_of_Support.md` assembles synthetic support-letter summaries.
- `refs/f30.bib` is the bibliography.
- `AI_LOG.md` is the running AI session log.

## Common Commands

Render DOCX:

```bash
./build_docx.sh
```

Render one DOCX section:

```bash
./build_section_docx.sh markdown/3_4_Specific_Aims.md
```

Render PDF when LaTeX is installed:

```bash
./build.sh
```
