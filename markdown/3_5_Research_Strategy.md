## 5. Research Training Project - Strategy {#research-training-project---strategy .unnumbered}

### Significance {.unnumbered}

Glioblastoma remains a lethal disease despite decades of advances in surgery, radiation, systemic therapy, and molecular classification.
Median survival remains limited, and recurrence is expected for nearly all patients.
This clinical reality creates an urgent need for therapeutic strategies that address the biological heterogeneity of GBM rather than assuming that a single target will remain uniformly expressed.

CAR T-cell therapy is a rational platform for GBM because engineered T cells can be programmed against tumor-associated antigens and delivered directly into the central nervous system.
The field has now moved beyond whether locoregional CAR T delivery can produce tumor regression.
Clinical studies have demonstrated regression after IL13Ra2-targeted CAR T cells and after bivalent EGFR/IL13Ra2-directed approaches, but the durability of these responses remains limited [@brownRegressionGlioblastomaChimeric2016; @bagleyIntrathecalBivalentCAR2024; @chanChimericAntigenReceptor2025; @bagleyIntracerebroventricularBivalentCAR2025].
These observations identify antigen escape as a central translational barrier.

IL13Ra2 and EGFRvIII are attractive but imperfect targets.
IL13Ra2 is associated with aggressive GBM biology and is absent or low in many normal tissues, but expression can be heterogeneous [@brownGliomaIL13Ra2Associated2013].
EGFRvIII is tumor-specific and oncogenic, but it is also spatially heterogeneous and can be lost under therapeutic pressure.
A bivalent strategy is therefore attractive because it can reduce dependence on either target alone.
However, dual targeting does not eliminate evolutionary pressure.
Understanding what survives bivalent pressure is essential for designing the next generation of cellular immunotherapies.

### Innovation {.unnumbered}

This project is innovative in three ways.
First, it treats antigen escape as an experimentally measurable phenotype in patient-derived GBM models rather than only as a clinical observation after recurrence.
Second, it directly compares monovalent and bivalent CAR T-cell pressure across matched tumor cultures with defined antigen states.
Third, it connects in vitro escape mapping to in vivo residual-disease analysis, allowing the same biological question to be studied across complementary model systems.

The training innovation is also important.
The candidate will learn to move across cell engineering, patient-derived cancer models, quantitative pathology, and translational neuro-oncology.
This combination is well aligned with a future career as a neurosurgeon-scientist developing immune therapies for malignant brain tumors.

### Approach Overview {.unnumbered}

The project will use banked standard-of-care GBM surgical specimens from an institutional biorepository.
Cultures will be de-identified before use in the research workflow.
Primary human T cells will be transduced with monovalent or bivalent CAR constructs and evaluated in antigen-characterized co-culture assays.
Escape populations will be recovered after serial selection for surface phenotyping and RNA sequencing.
For in vivo testing, orthotopic patient-derived xenografts will receive locoregional CAR T-cell delivery, and residual tumors will be analyzed for antigen heterogeneity.

The aims are deliberately independent.
Aim 1 produces and benchmarks the candidate reagent.
Aim 2 answers a biology question about escape and can proceed with benchmark CAR reagents.
Aim 3 tests the in vivo value of bivalent targeting and can use a published comparator if the internally engineered construct is not optimal.
This structure reduces the risk that one technical setback will compromise the full training plan.

#### Aim 1: Engineer and characterize a bivalent IL13Ra2/EGFRvIII CAR in primary human T cells. {.unnumbered}

**Rationale.**
Single-antigen CAR T cells can fail when tumor cells with low or absent antigen survive treatment.
Bivalent targeting is expected to improve coverage of heterogeneous GBM cultures by recognizing either IL13Ra2 or EGFRvIII.
Before in vivo testing, the construct must be benchmarked against monovalent controls for cytotoxicity, activation, and exhaustion phenotype.

**Experimental design.**
A bivalent CAR will be generated using modular antigen-binding domains against IL13Ra2 and EGFRvIII, with a clinically relevant costimulatory architecture selected in consultation with the cell-engineering mentor.
Primary human T cells from healthy donors will be activated, transduced, expanded, and compared with monovalent IL13Ra2 and EGFRvIII CAR T cells.
Patient-derived GBM cultures will be profiled for baseline IL13Ra2 and EGFRvIII expression by flow cytometry.
Co-culture assays will quantify tumor killing, T-cell expansion, cytokine release, and expression of PD-1, LAG-3, and TIM-3.

**Analysis and expected outcomes.**
The primary analysis will compare cytotoxicity across antigen-high, antigen-low, and mixed-antigen cultures.
Secondary analyses will compare cytokine release and exhaustion-marker induction across constructs.
I expect the bivalent CAR to maintain activity across mixed-antigen cultures more consistently than either monovalent comparator.
If the bivalent CAR shows excessive cytokine release or poor expansion, construct architecture will be revised or a published bivalent comparator will be used for downstream work.

**Training contribution.**
This aim will train the candidate in T-cell engineering, assay design, and the interpretation of potency versus safety tradeoffs in cellular therapy.

#### Aim 2: Define the antigen-escape phenotype under CAR T selective pressure in vitro. {.unnumbered}

**Rationale.**
Durable GBM immunotherapy will require understanding which tumor states survive immune pressure.
Serial co-culture provides a tractable way to model selection and recover residual tumor cells for phenotypic analysis.

**Experimental design.**
Patient-derived GBM cultures will undergo serial exposure to monovalent and bivalent CAR T cells.
Surviving tumor cells will be recovered after each round and expanded under standardized conditions.
Flow cytometry will quantify IL13Ra2 and EGFRvIII expression before selection, after early selection, and after repeated selection.
Bulk RNA sequencing will compare baseline and survivor populations to identify transcriptional programs associated with escape.

**Analysis and expected outcomes.**
Flow data will test whether bivalent pressure reduces the emergence of single-antigen-low survivors relative to monovalent pressure.
RNA sequencing will identify convergent pathways enriched in residual cells, including stress-response, interferon-response, antigen-presentation, and mesenchymal-transition signatures.
I expect monovalent pressure to enrich loss or reduction of the targeted antigen, while bivalent pressure will enrich a smaller and more complex antigen-low state.
If survivor yield is low, the analysis will focus on earlier post-selection time points and single-marker flow cytometry rather than transcriptomics.

**Training contribution.**
This aim will train the candidate in experimental evolution concepts, tumor phenotyping, RNA-seq analysis, and rigorous interpretation of model limitations.

#### Aim 3: Test whether bivalent targeting improves tumor control in an orthotopic patient-derived model. {.unnumbered}

**Rationale.**
In vitro assays cannot capture tumor growth in the brain, locoregional delivery, or residual disease architecture.
An orthotopic patient-derived xenograft model provides a preclinical bridge between cell-culture escape experiments and clinical translation.

**Experimental design.**
Luciferase-labeled patient-derived GBM cells will be implanted orthotopically in immunodeficient mice.
After tumor establishment, mice will receive locoregional delivery of vehicle, monovalent IL13Ra2 CAR T cells, monovalent EGFRvIII CAR T cells, or bivalent CAR T cells.
Tumor burden will be followed by bioluminescence imaging, and survival will be the primary endpoint.
Residual tumors will be collected when feasible for multiplex immunofluorescence quantification of IL13Ra2, EGFRvIII, and proliferation markers.

**Analysis and expected outcomes.**
Kaplan-Meier survival analysis will compare treatment arms, and imaging trajectories will quantify tumor control over time.
Residual tumors will be analyzed for antigen heterogeneity to determine whether bivalent pressure changes the spatial pattern of escape.
I expect bivalent targeting to improve tumor control relative to monovalent controls in tumors with mixed antigen expression.
If the model shows limited engraftment or excessive variability, the study will use a better-characterized patient-derived line and focus on tumor-burden trajectories rather than survival alone.

**Training contribution.**
This aim will train the candidate in orthotopic tumor models, preclinical therapeutic study design, survival analysis, and quantitative pathology.

### Rigor, Reproducibility, and Feasibility {.unnumbered}

All experiments will include prespecified controls, blinded image quantification when feasible, and independent replicate cultures or donors.
CAR expression and tumor antigen expression will be measured before functional assays.
Key analyses will be performed with code stored in the repository or linked private analysis repository.
Negative or underperforming constructs will be reported as biologically informative rather than hidden.

The project is feasible because it uses banked specimens, established T-cell engineering workflows, and preclinical models available through the training environment.
The main risks are construct underperformance, culture variability, and in vivo model variability.
Each aim includes a defined alternative that preserves the scientific question and the candidate's training trajectory.

### Timeline {.unnumbered}

Funding Year 0 will focus on construct design, regulatory confirmations for de-identified specimens, and pilot co-culture conditions.
Funding Year 1 will complete Aim 1 and initiate Aim 2.
Funding Year 2 will complete Aim 2 and begin Aim 3 pilot experiments.
Funding Year 3 will complete Aim 3, manuscript preparation, and transition planning for residency and postdoctoral research.

