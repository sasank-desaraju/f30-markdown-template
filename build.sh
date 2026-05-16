#!/bin/bash
# build.sh - Render the assembled Quarto draft to a single PDF in pdf/.
set -euo pipefail

bash ./render_timeline_assets.sh >/dev/null
quarto render --to pdf --output-dir pdf
echo "Built pdf/draft.pdf"

