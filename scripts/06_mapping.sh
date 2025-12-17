#!/bin/bash
# Mapping RNA-seq reads with Bowtie2

# Build index
bowtie2-build \
 data/raw/genome/E745.fasta \
 analyses/05_mapping/bowtie2/index/E745

# Align reads
for r1 in analyses/04_rnaseq/trimming/*_1.trimmed.fastq.gz
do
  r2=${r1/_1.trimmed.fastq.gz/_2.trimmed.fastq.gz}
  sample=$(basename "$r1" _1.trimmed.fastq.gz)

  bowtie2 \
    -x analyses/05_mapping/bowtie2/index/E745 \
    -1 "$r1" \
    -2 "$r2" \
    -S analyses/05_mapping/bowtie2/sam/${sample}.sam \
    -p 4
done
