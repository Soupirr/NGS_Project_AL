# Differential expression analysis

This directory contains the results of the differential expression analysis performed on RNA-seq data.

---

## Experimental design
Comparison between two conditions:
- Rich medium (BHI)
- Heat-inactivated human serum

Each condition includes three biological replicates.

---

## Tool used

### DESeq2
DESeq2 (Bioconductor) was used for:
- Normalization
- Dispersion estimation
- Differential expression testing

---

## Outputs included
- Differential expression results table
- PCA plot showing sample clustering
- MA plot
- Functional category summary of differentially expressed genes

---

## Interpretation
This analysis identifies genes potentially involved in adaptation and survival in human serum.
