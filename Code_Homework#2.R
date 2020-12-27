library(class)
library(ggplot2)
data <-read.table(file = "C:/Arinjay_Personal/Statistical Learning/Homework#2/Grocery.txt",
                  header = FALSE, sep = "\t")


dataFrame <- data.frame(data)
names(dataFrame) <- c("Y","X1", "X2", "X3")

fitModel <- lm(Y ~ X1+X2+factor(X3),data = dataFrame)
summary(fitModel)
predict(fitModel)
#estimation_sigmaSquare <- sqrt(sum(fitModel$residuals^2))/fitModel$df.residual


##estimation_sigmaSquare
MSE <- sum(fitModel$residuals^2)/fitModel$df.residual
