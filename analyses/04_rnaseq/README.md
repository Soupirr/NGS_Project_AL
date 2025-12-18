# RNA-seq quality control

This directory contains the quality control analyses of RNA-seq Illumina reads, performed both before and after trimming.

The objective is to assess sequencing quality and adapter contamination.

---

## Data
- Paired-end Illumina RNA-seq reads
- Two experimental conditions:
  - Rich medium (BHI)
  - Heat-inactivated human serum

---

## Tools used

### FastQC
FastQC was run on:
- Raw reads
- Trimmed reads

It provides per-sample quality metrics such as:
- Per-base quality scores
- Adapter content
- GC distribution
- Sequence duplication levels

### MultiQC
MultiQC was used to aggregate FastQC results across all samples into a single report for easier comparison between conditions and preprocessing steps.

#### Per Base Sequence Content 

We can see that the Per Base Sequence Content failed on both trimmed and raw data, suggesting a problem in the sequencing 

#### Per Sequence GC Content

The results shows that Sample number 69,70 and 71 all failed to pass 

#### Overrepresented sequences by sample

just like before, sample 69, 70 and 71 all failed the overrepresented sequences 

#### Adapter Content 

For the raw data we can see that all 12 sample failed the adapter content (going as high as 45%), showing that a trimming step is mendatory.
After trimming the adapter contamination is bellow 0.1% showing that the trimming step worked.

---

## Outputs included
- FastQC HTML reports
- MultiQC HTML reports

---

## Notes
FASTQ files, FastQC ZIP archives and intermediate files are not tracked in the repository.
