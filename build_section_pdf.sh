#!/bin/bash
# build_section_pdf.sh - Render a single markdown/quarto section to PDF.
set -euo pipefail

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
  echo "Usage: $0 <input-md-or-markdown> [output-pdf]" >&2
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
  output="pdf/${base%.*}.pdf"
fi

mkdir -p "$(dirname "$output")"

bash ./render_timeline_assets.sh >/dev/null

tmp_dir=".tmp_section_project_$$"
mkdir -p "$tmp_dir"

cleanup() {
  rm -rf "$tmp_dir"
}
trap cleanup EXIT

if [ "${SUBMISSION_NO_PAGENUMBERS:-0}" = "1" ]; then
  perl -0pe 's/(\\providecommand\{\\ul\}\[1\]\{\\uline\{#1\}\}\n)/$1          \\pagestyle{empty}\n/' _quarto.yml > "$tmp_dir/_quarto.yml"
else
  ln -s ../_quarto.yml "$tmp_dir/_quarto.yml"
fi
ln -s ../refs "$tmp_dir/refs"
ln -s ../vancouver.csl "$tmp_dir/vancouver.csl"
ln -s ../markdown "$tmp_dir/markdown"
if [ -d figs ]; then
  ln -s ../figs "$tmp_dir/figs"
fi
if [ -d support ]; then
  ln -s ../support "$tmp_dir/support"
fi
if [ -d biosketches ]; then
  ln -s ../biosketches "$tmp_dir/biosketches"
fi

cat > "$tmp_dir/draft.qmd" <<EOF
{{< include ../${input} >}}
EOF

if rg -q '@[[:alnum:]_:-]+' "$input"; then
  cat >> "$tmp_dir/draft.qmd" <<'EOF'

```{=latex}
\newpage
```

::: {#refs}
:::
EOF
fi

(
  cd "$tmp_dir"
  quarto render --to pdf
)

mv "$tmp_dir/build/draft.pdf" "$output"

echo "Built $output"
