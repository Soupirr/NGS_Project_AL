#!/bin/bash
# Genome assembly with Canu (PacBio reads)

canu \
 -p E745 \
 -d analyses/01_genome_assembly/canu \
 genomeSize=2.8m \
 maxMemory=7 \
 maxThreads=4 \
 redMemory=6 \
 redThreads=2 \
 -pacbio data/raw/genome/PacBio.reads/*.fastq.gz

#We attempted a PacBio-only genome assembly using Canu 2.2 on a personal computer (16 GB RAM).
#However, due to memory limitations of the local Linux environment (7 GB available), Canu could not complete the overlap detection steps (red/oea stages requiring ≥8 GB).
#Therefore, we used the provided closed genome assembly of E. faecium E745 for downstream analyses.
