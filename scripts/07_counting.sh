#!/bin/bash
# Read counting with featureCounts

featureCounts \
  -a analyses/03_annotation/prokka/pacbio_prokka/E745.gff \
  -o analyses/06_read_counting/featurecounts/gene_counts.txt \
  -T 4 \
  -p \
  -t CDS \
  -g ID \
  analyses/05_mapping/bowtie2/bam/*.sorted.bam
