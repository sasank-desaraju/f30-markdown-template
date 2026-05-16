#!/bin/bash
# build_docx.sh - Render the assembled Quarto draft to a single DOCX in docx/
set -euo pipefail
quarto render --to docx --output-dir docx
echo "Built docx/draft.docx"
