#!/bin/bash
# Adapter trimming with Cutadapt

for r1 in data/raw/transcriptome/0.Raw-data/*_1.fastq.gz
do
    r2=${r1/_1.fastq.gz/_2.fastq.gz}
    sample=$(basename "$r1" _1.fastq.gz)

    cutadapt \
      -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA \
      -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
      -q 20,20 \
      --minimum-length 30 \
      -j 4 \
      -o analyses/04_rnaseq/trimming/${sample}_1.trimmed.fastq.gz \
      -p analyses/04_rnaseq/trimming/${sample}_2.trimmed.fastq.gz \
      "$r1" "$r2"
done
