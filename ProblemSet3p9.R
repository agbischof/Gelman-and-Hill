###Gelman and Hill
###Problem Set 3.9

#Problem 1 - need data to do anything

#Problem 2 - on paper

#Problem 3

var1 = rnorm(1000, 0, 1)
var2 = rnorm(1000, 0, 1)

fit.3 = lm(var1 ~ var2)
summary(fit.3)
plot(var1, var2)
curve(cbind(1,x) %*% coef(fit.3), add = TRUE)

# the slope coefficient is not significant

for(i in 1:100)
  {var1 = rnorm(1000, 0, 1)
  var2 = rnorm(1000, 0, 1)

  fit.3 = lm(var1 ~ var2)
  zscore[i] = coef(fit.3)[2]/sd}

