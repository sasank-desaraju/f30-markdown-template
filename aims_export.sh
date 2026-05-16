#!/bin/bash
set -euo pipefail

./build_section_docx.sh markdown/3_4_Specific_Aims.md docx/3_4_Specific_Aims.docx
./build_section_pdf.sh markdown/3_4_Specific_Aims.md pdf/3_4_Specific_Aims.pdf

