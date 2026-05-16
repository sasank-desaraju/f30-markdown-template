# Starting project description


This describes the project, at least to start.
Can change over time.





Here's Project 1 consolidated into a single self-contained brief, restructured to minimize aim interdependence — which is itself one of the most important F30 design principles and worth teaching explicitly in your tutorial.

---

## Project 1: Overcoming Antigen Escape with a Bivalent CAR Against Patient-Derived Glioblastoma

### Background and significance

Glioblastoma (GBM) is the most common malignant primary brain tumor in adults, with a median overall survival of roughly 12–15 months despite maximal surgery, radiation, and temozolomide. Recurrence is essentially universal. CAR-T cell therapy, which transformed outcomes in B-cell leukemias and lymphomas, has produced unambiguous but non-durable radiographic responses in GBM when delivered locoregionally (intratumorally or intracerebroventricularly) rather than intravenously — locoregional delivery solving the blood-brain-barrier trafficking problem that defeated early systemic attempts.

The recurrent failure mode is **antigen escape**: the foundational City of Hope experience with IL13Rα2-targeted CAR-T showed striking initial responses, including a widely-cited complete response in a patient with multifocal recurrent GBM (Brown et al., *NEJM* 2016), but tumors recurred having downregulated IL13Rα2. This motivated the field's pivot to **dual-antigen (bivalent or tandem) CARs** — engaging two tumor antigens simultaneously so that loss of one does not confer escape. The recent Penn trial of intracerebroventricular bivalent EGFR/IL13Rα2 CAR-T (Bagley et al., *Nat Med* 2025) demonstrated this is clinically feasible and produces tumor regression, but durability remains unsolved and the biology of *residual* escape under dual pressure is poorly characterized.

This project tests, at preclinical scale, whether a bivalent IL13Rα2/EGFRvIII CAR delays antigen escape relative to monovalent CARs, and characterizes the escape that still occurs. It uses patient-derived GBM cells from an **existing UF neurosurgery biorepository of standard-of-care surgical specimens** — no prospective trial, no patient intervention — and bench-scale CAR-T for preclinical use only. The McKnight Brain Institute supports the neuro-oncology models and patient-derived cultures; UF neurosurgery (Fixel Institute) provides the banked tissue and the locoregional-delivery rationale; modest image-quantification analysis can be run without large compute.

### Specific aims (designed for independence)

The aims are deliberately structured so that **each can succeed or fail without invalidating the others**. Aim 1 establishes the reagent and its in vitro behavior. Aim 2 studies escape biology and does *not* depend on Aim 1's construct being optimal — it can use a benchmark clinically-relevant monovalent CAR if needed. Aim 3 tests in vivo efficacy and is written to proceed with either the project's bivalent construct *or* a published comparator, so a disappointing Aim 1 does not sink the dissertation.

**Aim 1 — Engineer and characterize a bivalent IL13Rα2/EGFRvIII CAR in primary human T cells.**
Construct a bivalent CAR and benchmark cytotoxicity, cytokine release, and exhaustion-marker expression (PD-1, LAG-3, TIM-3) against monovalent IL13Rα2 and EGFRvIII CARs, using a panel of patient-derived GBM lines with independently characterized antigen profiles. *Independence note:* outputs are reagents and in vitro phenotyping; no downstream aim requires this construct to outperform comparators.

**Aim 2 — Define the antigen-escape phenotype under CAR-T selective pressure in vitro.**
Model escape by serial co-culture of patient-derived GBM lines under CAR-T pressure (using a clinically-relevant benchmark CAR so this aim is reagent-independent), then characterize the surviving antigen-low population by flow cytometry and bulk RNA-seq to define the transcriptional and surface-antigen signature of escape. *Independence note:* this is a self-contained biology question answerable regardless of Aim 1's outcome.

**Aim 3 — Test whether bivalent targeting improves tumor control in an orthotopic patient-derived model.**
Compare bivalent vs. monovalent CAR-T with locoregional (intratumoral) delivery in an orthotopic patient-derived xenograft model; primary readout survival, secondary a modest multiplex-immunofluorescence quantification of residual-tumor antigen heterogeneity. *Independence note:* if Aim 1's construct underperforms, Aim 3 substitutes a published bivalent design as the test article — the in vivo question stands either way.

### Honest critique to teach with this

Three F30-design lessons are embedded here and worth surfacing explicitly in the tutorial. First, **aim independence**: a classic novice error is a linear chain where Aim 2 needs Aim 1's exact reagent and Aim 3 needs Aim 2's exact finding — one failure collapses the whole proposal; the rewrites above show the fix. Second, **scope discipline**: the single most common F30 failure in CAR-T/GBM is proposing trial-scale or tissue-access-dependent work the student doesn't control — this project deliberately uses *banked* tissue and *preclinical* CAR-T. Third, **the small-n and model-fidelity caveat**: patient-derived xenografts in immunodeficient mice cannot model the immunosuppressive myeloid TME, and a strong proposal states this limitation in the aim itself rather than burying it — reviewers in this space look for that specifically.

Want me to build this into a formatted one-page Specific Aims document, or draft the Significance/Innovation section next?
