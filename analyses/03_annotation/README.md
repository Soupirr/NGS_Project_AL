# Genome annotation

This directory documents the structural and functional annotation of the assembled genome.

The objective of this step is to identify genes, coding sequences, RNAs and assign functional annotations where possible.

---

## Tool used

### Prokka
Prokka was used for automated annotation of the prokaryotic genome, including:
- CDS prediction
- rRNA and tRNA identification
- Functional annotation based on curated databases

---

## Annotation input
- Input genome: PacBio assembled genome (FASTA)

---

## Outputs
Prokka generates multiple output files (GFF, GBK, FAA, FNA, etc.).

Due to size and redundancy, full Prokka outputs are not included in this repository.

---

## Notes
This step provides the annotation framework used later for:
- RNA-seq read counting
- Functional interpretation of differentially expressed genes
