library(boot)
load("5.R.RData")

summary(lm(y ~ X1 + X2, data = Xy))

matplot(Xy,type="l")

se_estimate <- function(data, index){
  coef(lm(y ~ X1 + X2, data = data, subset = index))
  
}

boot(data = Xy, se_estimate, 1000)
