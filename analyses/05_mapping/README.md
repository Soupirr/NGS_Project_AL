# RNA-seq read mapping

This directory documents the alignment of trimmed RNA-seq reads against the assembled genome.

---

## Tool used

### Bowtie2
Bowtie2 was used to align paired-end RNA-seq reads to the PacBio genome assembly.

### Samtools
Samtools was used to convert SAM files to BAM file as well as basic statistic. 
---

## Mapping strategy
- Reference: assembled genome
- Input: trimmed paired-end reads
- Output: sorted BAM files

Alignment statistics were assessed using samtools:

499826 + 0 in total (QC-passed reads + QC-failed reads)

499826 + 0 primary

0 + 0 secondary

0 + 0 supplementary

0 + 0 duplicates

0 + 0 primary duplicates

492928 + 0 mapped (98.62% : N/A)

492928 + 0 primary mapped (98.62% : N/A)

499826 + 0 paired in sequencing

249913 + 0 read1

249913 + 0 read2

476454 + 0 properly paired (95.32% : N/A)

492340 + 0 with itself and mate mapped

588 + 0 singletons (0.12% : N/A)

68 + 0 with mate mapped to a different chr

14 + 0 with mate mapped to a different chr (mapQ>=5)

As we can see, 98.62% of the genome was corectly mapped to the reference genome.
---

## Notes
BAM files, Bowtie2 index files and intermediate alignment files are not included in the repository due to size constraints. Mapping can be reproduced using the provided scripts.
