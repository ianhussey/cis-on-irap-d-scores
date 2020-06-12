
setwd("~/git/IRAP-critique/CIs on D scores/analysis")

plot_1 <- read_rds("models/p1.rda")
plot_2 <- read_rds("models/p2.rda")


pdf(NULL)
dev.control(displaylist = "enable")
plot_1
p1 <- recordPlot()
invisible(dev.off())
pdf("plot_1.pdf",
    width = 6, 
    height = 4)
p1
dev.off()

pdf(NULL)
dev.control(displaylist = "enable")
plot_2
p2 <- recordPlot()
invisible(dev.off())
pdf("plot_2.pdf",
    width = 8, 
    height = 12)
p2
dev.off()
