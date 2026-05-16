# Navigation And Permissions

This file documents how to orient within the workspace and what terminal actions are appropriate by default.

## Useful Inspection Commands

```bash
pwd
ls
find . -maxdepth 2 -type f
rg -n "pattern" .
sed -n '1,200p' markdown/3_4_Specific_Aims.md
git status --short
git diff
```

## Default Assumptions

Read files before editing them.
Use `rg` for search.
Keep edits scoped to the requested workflow or section.
Do not add private grant content, PHI, or confidential letters.

## Generated Outputs

The `docx/`, `pdf/`, `build/`, and `submission_pdfs/` directories are generated-output locations.
Use them for exports and review artifacts.
Do not treat generated outputs as the source of truth.

