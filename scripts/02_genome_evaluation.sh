#!/bin/bash
# Genome quality assessment with QUAST and BUSCO

# QUAST
quast.py \
 data/raw/genome/E745.fasta \
 -o analyses/02_assembly_evaluation/quast/pacbio_quast \
 --min-contig 500

# BUSCO
busco \
 -i data/raw/genome/E745.fasta \
 -o pacbio_busco \
 -l firmicutes_odb10 \
 -m genome \
 --out_path analyses/02_assembly_evaluation/busco \
 -c 4
