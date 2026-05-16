#!/bin/bash
# render_timeline_assets.sh - Generate cropped PDF/PNG timeline assets from markdown/timeline.html when tools are available.
set -euo pipefail

force=0
if [ "${1:-}" = "--force" ]; then
  force=1
fi

if [ "$force" -eq 0 ] && [ "${ENABLE_TIMELINE_RENDER:-0}" != "1" ]; then
  echo "Skipping optional timeline asset render"
  exit 0
fi

root="$(cd "$(dirname "$0")" && pwd)"
html="$root/markdown/timeline.html"
outdir="$root/figs"
raw_pdf="$outdir/.timeline_raw.pdf"
raw_png="$outdir/.timeline_raw.png"
out_pdf="$outdir/timeline.pdf"
out_png="$outdir/timeline.png"

mkdir -p "$outdir"

if [ ! -f "$html" ]; then
  echo "No markdown/timeline.html found; skipping timeline asset render"
  exit 0
fi

if [ "$force" -eq 0 ] && [ -f "$out_pdf" ] && [ -f "$out_png" ] && [ "$html" -ot "$out_pdf" ] && [ "$html" -ot "$out_png" ]; then
  echo "Timeline assets are up to date"
  exit 0
fi

if ! command -v google-chrome >/dev/null 2>&1 || ! command -v pdfcrop >/dev/null 2>&1 || ! command -v convert >/dev/null 2>&1; then
  echo "Timeline render tools not found; skipping optional timeline assets"
  exit 0
fi

google-chrome \
  --headless \
  --disable-gpu \
  --print-to-pdf-no-header \
  --print-to-pdf="$raw_pdf" \
  "file://$html"

pdfcrop "$raw_pdf" "$out_pdf" >/dev/null

google-chrome \
  --headless \
  --disable-gpu \
  --hide-scrollbars \
  --window-size=1600,1400 \
  --screenshot="$raw_png" \
  "file://$html"

convert "$raw_png" -trim +repage "$out_png"

rm -f "$raw_pdf" "$raw_png"

echo "Built $out_pdf and $out_png"
