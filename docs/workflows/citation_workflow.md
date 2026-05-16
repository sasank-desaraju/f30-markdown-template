# Citation Workflow

Use citations in Markdown with Pandoc syntax:

```markdown
CAR T-cell therapy has shown early clinical activity in recurrent GBM [@brownRegressionGlioblastomaChimeric2016].
```

Keep citation keys stable.
Manage `refs/f30.bib` through Zotero.
Do not hand-write or manually replace BibTeX entries.
If a reference is missing, add its DOI to `refs/doi_list.md`, import it into Zotero, and re-export the collection as `refs/f30.bib`.
Use `refs/doi_list.md` as an inbox for papers that still need to be checked or imported.
