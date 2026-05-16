#!/bin/bash
# build_section_docx.sh - Render a single markdown/quarto section to DOCX using the project reference doc.
set -euo pipefail

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
  echo "Usage: $0 <input-md-or-qmd> [output-docx]" >&2
  exit 1
fi

input="$1"
if [ ! -f "$input" ]; then
  echo "Input file not found: $input" >&2
  exit 1
fi

if [ "$#" -eq 2 ]; then
  output="$2"
else
  base="$(basename "$input")"
  output="docx/${base%.*}.docx"
fi

mkdir -p "$(dirname "$output")"

bash ./render_timeline_assets.sh >/dev/null

pandoc "$input" \
  -o "$output" \
  --reference-doc=reference.docx \
  --bibliography=refs/f30.bib \
  --csl=vancouver.csl \
  --resource-path=".:$(dirname "$input")" \
  --citeproc

python - "$output" <<'PY'
import sys
import zipfile
import tempfile
import shutil
import os
import re

path = sys.argv[1]
fd, tmp = tempfile.mkstemp(suffix=".docx", dir=".")
os.close(fd)

blank_para = '<w:p><w:pPr><w:pStyle w:val="BodyText" /></w:pPr></w:p>'

with zipfile.ZipFile(path, "r") as zin, zipfile.ZipFile(tmp, "w", compression=zipfile.ZIP_DEFLATED) as zout:
    for item in zin.infolist():
        data = zin.read(item.filename)
        if item.filename == "word/document.xml":
            xml = data.decode("utf-8", "ignore")
            if blank_para not in xml:
                xml = re.sub(
                    r'((?:<w:bookmarkStart[^>]*/>\s*)*)(<w:p><w:pPr><w:pStyle w:val="Bibliography" />)',
                    lambda m: f'{m.group(1)}{blank_para}{m.group(2)}',
                    xml,
                    count=1,
                )
            data = xml.encode("utf-8")
        zout.writestr(item, data)

shutil.move(tmp, path)
PY

echo "Built $output"
