# Genome assembly

## 1. Objective

The objective of this step is to assemble the genome of *Enterococcus faecium* E745 using long-read and hybrid sequencing approaches.
A high-quality genome assembly is required as a reference for downstream analyses, including genome annotation, RNA-seq read mapping, and differential gene expression analysis.

In the reference article (Zhang et al., 2017), the authors performed a hybrid assembly combining PacBio, Illumina, and Nanopore reads to obtain a complete chromosome and several plasmids. In this project, we aimed to reproduce a similar strategy as closely as possible.

---

We attempted a PacBio-only genome assembly using Canu 2.2 on a personal computer (16 GB RAM).
However, due to memory limitations of the local Linux environment (7 GB available), Canu could not complete the overlap detection steps (red/oea stages requiring ≥8 GB).
Therefore, we used the provided closed genome assembly of E. faecium E745 for downstream analyses.
