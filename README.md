# Enterococcus faecium – Genome assembly and RNA-seq analysis

## Contributors

CAZIN Antoine
MOLTENI Lauriane

## Project overview
This project aims to study the genomic structure and transcriptional response
of *Enterococcus faecium* under two growth conditions: a rich medium (BHI) and
heat-inactivated human serum. A PacBio-based genome assembly was used as a
reference for a genome annotation and a reference-based RNA-seq analysis using
Illumina transcriptomic data.

## Data
The project uses:
- PacBio long-read sequencing data for genome assembly
- Illumina RNA-seq data for transcriptomic analysis
Raw sequencing data are not included in this repository due to size constraints.

## Analysis workflow
The analysis pipeline includes:
1. Genome assembly using PacBio reads
2. Assembly evaluation with QUAST and BUSCO
3. Structural and functional annotation with Prokka
4. RNA-seq reads quality control and trimming
5. Alignment of RNA-seq reads against the assembled genome
6. Differential gene expression analysis between BHI and serum conditions
7. Identification of antibiotic resistance genes using ResFinder

## Main results
- A high-quality genome assembly with high completeness
- Clear transcriptional differences between BHI and serum conditions
- Genes involved in transport and stress response are upregulated in serum
- Several antibiotic resistance genes were identified, including plasmid-borne
  vancomycin resistance genes

## Repository structure


```
.
├── analyses/      # Analysis outputs and results
├── scripts/       # Scripts used for each analysis step
├── data/          # Metadata files (raw data not included)
├── docs/          # Project instructions and reference article
└── README.md
```


## Software used
- Canu
- QUAST
- BUSCO
- Prokka
- FastQC / MultiQC
- Cutadapt
- Bowtie2
- featureCounts
- DESeq2
- ResFinder

![Pipeline overview](docs/images/logo_estbb.png)
<img src="docs/images/pipeline_overview.png" width="600">

