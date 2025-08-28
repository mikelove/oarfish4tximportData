library(BSgenome.Hsapiens.NCBI.GRCh38)
library(plyranges)
library(Biostrings)
novel <- data.frame(
  seqnames = rep(1:22, each=500),
  start = 1e6 + 1 + 0:499 * 1000,
  width = 1000, strand = "+",
  id = paste0("novel", 1:(22*500))
) |>
  as_granges()

names(novel) <- novel$id
dna <- getSeq(Hsapiens, novel)

# filter out N?
#n_counts <- alphabetFrequency(dna)[,"N"]
#table(n_counts > 0)
#dna_full <- dna[ n_counts == 0 ]

writeXStringSet(dna, filepath="novel.fa")
R.utils::gzip("novel.fa")
