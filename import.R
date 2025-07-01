library(tximeta)
coldata <- data.frame(
  files=c(
    "quants/sgnex_h9_rep2.quant",
    "quants/sgnex_h9_rep3.quant",
    "quants/sgnex_h9_rep4.quant"
  ),
  names = c("r2","r3","r4"),
  rep = factor(2:4)
)
library(SummarizedExperiment)
se <- tximeta(coldata, type="oarfish", skipMeta=TRUE)
colData(se)
