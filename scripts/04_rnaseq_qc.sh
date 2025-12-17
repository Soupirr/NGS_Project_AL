#!/bin/bash
# RNA-seq quality control (raw reads)

fastqc \
 data/raw/transcriptome/0.Raw-data/*.fastq.gz \
 -o analyses/04_rnaseq/fastqc/raw \
 -t 4

multiqc \
 analyses/04_rnaseq/fastqc/raw \
 -o analyses/04_rnaseq/multiqc/raw
