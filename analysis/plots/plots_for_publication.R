
library(tidyverse)

setwd("~/git/cis-on-irap-d-scores/analysis")

dir.create("plots")

plot_1 <- read_rds("models/p1.rds")
plot_2 <- read_rds("models/p2.rds")


pdf(NULL)
dev.control(displaylist = "enable")
plot_1
p1 <- recordPlot()
invisible(dev.off())
pdf("plots/plot_1.pdf",
    width = 6, 
    height = 4)
p1
dev.off()

pdf(NULL)
dev.control(displaylist = "enable")
plot_2
p2 <- recordPlot()
invisible(dev.off())
pdf("plots/plot_2.pdf",
    width = 8, 
    height = 16)
p2
dev.off()
