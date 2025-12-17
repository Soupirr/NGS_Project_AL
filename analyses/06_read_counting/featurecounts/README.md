# Read counting

This directory contains gene-level read quantification results from RNA-seq alignments.

---

## Tool used

### featureCounts
Gene-level read counting using featureCounts resulted in a high number of assigned reads across all samples. A substantial fraction of reads was classified as unassigned due to the absence of annotated features, which is expected in bacterial RNA-seq data where untranslated regions and non-coding RNAs are not fully annotated. Only a limited number of reads were ambiguous or unmapped, indicating a high-quality alignment and annotation. 

---

## Inputs
- Sorted BAM files from RNA-seq alignment
- Genome annotation file (GFF)

---

## Outputs included
- `gene_counts.txt`: raw gene-level counts for all samples
- `gene_counts.txt.summary`: summary of assigned and unassigned reads

---

## Notes
These count matrices are used as input for downstream differential expression analysis with DESeq2.
