#!/bin/bash
# Export synthetic NIH submission-style PDFs as separate attachment files.
set -euo pipefail

outdir="${1:-submission_pdfs}"
mkdir -p "$outdir"

build_section() {
  local input="$1"
  local output="$2"
  SUBMISSION_NO_PAGENUMBERS=1 ./build_section_pdf.sh "$input" "$output"
}

echo "Building F200 and F220 attachments..."
build_section markdown/Submission_Checklist.md "$outdir/Submission_Checklist.pdf"
build_section markdown/Cover_Letter.md "$outdir/F200_Cover_Letter.pdf"
build_section markdown/Summary_Abstract.md "$outdir/F220_Project_Summary_Abstract.pdf"
build_section markdown/Project_Narrative.md "$outdir/F220_Project_Narrative.pdf"
build_section markdown/10_Facilities_and_Other_Resources.md "$outdir/F220_Facilities_and_Other_Resources.pdf"
build_section markdown/11_Equipment.md "$outdir/F220_Equipment.pdf"

echo "Building F430 attachments..."
build_section markdown/2_Candidate.md "$outdir/F430_Candidate_Goals_Preparedness_and_Potential.pdf"
build_section markdown/3_3_Training_Activities_and_Timeline.md "$outdir/F430_Training_Activities_and_Timeline.pdf"
build_section markdown/F430_Aims_and_Strategy_Combined_for_CTSI.md "$outdir/F430_Aims_and_Strategy_Combined_for_CTSI.pdf"
build_section markdown/3_7_RCR.md "$outdir/F430_Training_in_the_Responsible_Conduct_of_Research.pdf"
build_section markdown/4_8_Sponsor_Commitment.md "$outdir/F430_Sponsors_Commitment.pdf"
build_section markdown/4_9_Letters_of_Support.md "$outdir/F430_Letters_of_Support_from_Collaborators_Contributors_and_Consultants.pdf"

echo "Building optional human-subjects style attachments..."
build_section markdown/F500_Aim_2_Nonhuman_Data_Explanation.md "$outdir/F500_Aim_2_Nonhuman_Data_Explanation.pdf"
build_section markdown/F500_Aim_3_Protection_of_Human_Subjects.md "$outdir/F500_Aim_3_Protection_of_Human_Subjects.pdf"

echo "Built submission bundle in $outdir"

