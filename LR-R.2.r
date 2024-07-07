if (length(commandArgs(trailingOnly= TRUE))<1){
  stop("Usage: Rscript LR-R.2.r <csv_file>")
}

csv_file <- commandArgs(trailingOnly = TRUE)[1]

data = read.csv(csv_file)

png(file = "r_orig.png")
plot(data$x, data$y, xlab="x",ylab="y")

lmdata = lm(y~x, data = data)

summary(lmdata)

y_predict = predict(lmdata, data)

png(file = "r_lm.png")

plot(data$x, y_predict, xlab="x", ylab="y")

plot(data$x, data$y, xlab="x", ylab="y")
lines(data$x, y_predict)
title('Linear Regression in R')



