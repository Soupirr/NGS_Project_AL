library(DESeq2)

# --- featureCounts counts ---
fc <- read.table(
  "analyses/06_read_counting/featurecounts/gene_counts.txt",
  header = TRUE,
  sep = "\t",
  comment.char = "#",
  check.names = FALSE
)

rownames(fc) <- fc$Geneid
count_data <- fc[, -(1:6)]  # keep only sample count columns

# --- metadata ---
sample_info <- read.table(
  "data/meta_data/MetaDataDESeq2.tsv",
  header = TRUE,
  sep = "\t",
  row.names = 1
)

# ---------- MA plot ----------
plotMA(res, main = "DESeq2 MA plot: Serum vs BHI")

# ---------- Volcano plot ----------
library(ggplot2)

res_df <- as.data.frame(res)
res_df$padj[is.na(res_df$padj)] <- 1   # avoid NA issues in plotting

ggplot(res_df, aes(x = log2FoldChange, y = -log10(padj))) +
  geom_point(aes(color = padj < 0.05), alpha = 0.6) +
  theme_minimal() +
  labs(title = "Volcano plot: Serum vs BHI", x = "log2 Fold Change", y = "-log10(padj)")

# ---------- Heatmap ----------
library(DESeq2)
library(pheatmap)
library(SummarizedExperiment)

pdf("analyses/07_deseq2_bis/Heatmap_Top30_DE_genes.pdf")

pheatmap(
  assay(vsd)[top_de, ],
  cluster_rows = TRUE,
  cluster_cols = TRUE,
  show_rownames = TRUE,
  main = "Top 30 DE genes"
)

dev.off()
