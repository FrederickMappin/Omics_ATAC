# Omics_ATAC
## This is a Training notebook, the intention is to keep up to date with analysis techniques and tools.
# ATAC Sequencing Analysis

# Overview 
ATAC (Assay for Transposase-Accessible Chromatin using sequencing) is a genomic technique used to study chromatin accessibility across the genome. It identifies regions of open chromatin, which are typically associated with active regulatory elements like enhancers and promoters. The method uses a hyperactive Tn5 transposase enzyme to cut accessible DNA and simultaneously insert sequencing adapters. These DNA fragments are then amplified and sequenced, allowing researchers to map regions of open chromatin at high resolution. ATAC-seq is widely used in epigenetics, developmental biology, and cancer research to understand gene regulation, cellular identity, and chromatin dynamics.



# Projects and Select Sample Outputs (full output can be found in notebooks)
This study utilized fresh or cryopreserved human bone marrow and peripheral blood samples from healthy donors and AML patients, collected under IRB-approved protocols with informed consent. Mononuclear cells were isolated by Ficoll gradient and sorted via flow cytometry (FACS) using defined immunophenotypes to isolate HSCs, LSCs, blasts, and various normal cell types (excluding mature granulocytes and megakaryocytes). RNA-seq was performed on 1,000–100,000 FACS-purified cells using the NuGen Ovation V2 protocol, with sequencing libraries prepared via Illumina TruSeq and analyzed using STAR, HTSeq, and DESeq2. Fast-ATAC was performed on 5,000 sorted cells using a digitonin-based lysis and Tn5 transposition, with libraries sequenced on a NextSeq platform. Cell line data were obtained from GEO (GSE65360).



## Select Results: 

<img width="840" height="840" alt="output" src="https://github.com/user-attachments/assets/c3e5acaa-5f58-45b1-9968-8d7a5bd7cff0" />

Fig 1. PCA plot showing the first two principal componets of normalized ATAC-seq accessibility data.

<img width="840" height="840" alt="output2" src="https://github.com/user-attachments/assets/f8ffb4ae-9c04-48bc-8718-81cbb137f561" />

Fig 2.  heatmap of differentially accessible chromatin regions of different celltypes



