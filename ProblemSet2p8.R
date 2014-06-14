###Gelman and Hill 

###Excercises 2.8

###problem 2
females = c(0.4777, 0.4875, 0.4859, 0.4754, 0.4874, 0.4864, 
            0.4813, 0.4787, 0.4895, 0.4797, 0.4876, 0.4859, 
            0.4857, 0.4907, 0.5010, 0.4903, 0.4860, 0.4911, 
            0.4871, 0.4725, 0.4822, 0.4870, 0.4823, 0.4973)

n = 3900 ###births/month

SDa = sd(females)
AVGa = mean(females)

SDt = sqrt(AVGa*(1-AVGa)/(n*24))

SDia = sqrt(females*(1-females)/n)

AvgSDa = mean(SDia)

###AvgSDa should be equal to SDt (check these) and proportional to X^2 with 23 degrees of freedom


###problem 3
#Demonstrate the Central Limit Theorem
#let x = x1 + ..... + x20 be the sum of 20 independnet uniform (0,1) 
#random variables. Create 1000 simulations of x and plot the histogram
#Overlay the graph of the normal density function

test = rnorm(1000,0,1)

qplot(test)

#overlay the normal density function?

###problem 4

MenMh = 69.1
MenSDh = 2.9
WmMh = 63.7
WmSDh = 2.7

xMy = c(1:1000)
for(i in 1:1000)
  {x = mean(rnorm(100, MenMh, MenSDh))
  y = mean(rnorm(100, WmMh, WmSDh))
  xMy[i]=x-y}

qplot(xMy)
 
MeanA = mean(xMy)   ## 5.388 vs. calculated 5.4
stdA = sd(xMy)      ## 0.4035 vs. calculated 0.4

###good agreement

###problem 5
