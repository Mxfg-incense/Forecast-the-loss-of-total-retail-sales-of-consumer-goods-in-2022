setwd("E:/Code/code/mathmodeling/HW1/")
jpeg(file = "Hist.png", width = 400, height = 500)
x <- scan("height.txt")
print(x)
hist(x, col = "#c2f0ff", border = "red", labels = TRUE, ylim = c(0, 20))
r <- hist(x, freq = FALSE, density = 20, angle = 15 + 30 * 1:6, labels = TRUE)
text(r$mids, 0, r$counts, adj = c(.5, -.5), cex = 1.2, col = "#14df14")
lines(density(x), col = "#6da3cf", lwd = 1)
dev.off()