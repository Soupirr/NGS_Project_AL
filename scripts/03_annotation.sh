#!/bin/bash
# Genome annotation with Prokka

prokka \
 --outdir analyses/03_annotation/prokka/pacbio_prokka \
 --prefix E745 \
 --locustag E745 \
 --genus Enterococcus \
 --species faecium \
 --strain E745 \
 --cpus 4 \
 data/raw/genome/E745.fasta
