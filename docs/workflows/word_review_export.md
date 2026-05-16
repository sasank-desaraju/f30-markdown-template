# Word Review Export

Many mentors prefer Word comments.
That is compatible with a Markdown source-of-truth workflow.

Export one section:

```bash
./build_section_docx.sh markdown/3_4_Specific_Aims.md
```

Export the full draft:

```bash
./build_docx.sh
```

Send the generated `.docx` from `docx/` for markup.
When it comes back, save the marked-up file in `feedback/` and manually reconcile accepted changes into the source Markdown.
Do not edit the generated `.docx` as the canonical file.

