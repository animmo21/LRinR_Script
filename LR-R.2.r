df = read.csv('regrex1 2.csv')

head(df)

plot(df$x, df$y, xlab="x",ylab="y")

model = lm(y~x, data = df)

summary_stats = summary(model)

summary_stats

summary_stats$r.squared

coef(model)

coef(model)[1]

coef(model)[2]

y_predict = predict(model, df)

plot(df$x, y_predict, xlab="x", ylab="y")

plot(df$x, df$y, xlab="x", ylab="y")
lines(df$x, y_predict)




