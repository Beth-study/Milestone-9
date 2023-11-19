# Milestone 9

                            # Hypothesis Test 1
# Does the x-coordinates differ if you are arrested and you are less than 18 ?

#null hypothesis u1 = u2
#alternative hypothesis u1 /= u2

#significance level = 0.05

Age.2 <- subset(NYPD_Arrest2, Age < 18)
mean(Age.2$XCoordinates)
# 1005530
nrow (Age.2)
#  4241
mean(NYPD_Arrest2$XCoordinates)
# 1005818
xbar <- 1005530
 u <- 1005818
 n <- 4241
 s <- 21783.49
 z <- ((xbar - u )/ (s/ sqrt(n)))
 z
# -0.8609921
# calculating p-value
2*pnorm (-0.8609921)
# 0.3892424
# Since the p-value is greater than the significance level, 0.3892424 > 0.05 then we fail to reject the hypothesis so, the x coordinates does not differ if you are less than 18 years old and arrested.

                                    #Hypothesis Test 2
#Does the y-coordinate of adults that are arrested differ from the regular population?
#  significance level = 0.02

# null hypothesis mean = 208428.4
#alternative hypothesis  mean /= 208428.4

Middle.4 <- subset(NYPD_Arrest2, Age > 18)
Middle.4
mean(Middle.4$YCoordinates) 
# 208395.8
nrow(Middle.4) 
# 107863
mean(NYPD_Arrest2$YCoordinates)
# 208428.4
sd(Middle.4$YCoordinates)
# 29764.47
t <- ((xbar - u )/ (s/ sqrt(n)))
xbar <- mean(Middle.4$YCoordinates) 
 n <- nrow(Middle.4)
 u <- mean(NYPD_Arrest2$YCoordinates)
 s <- sd(Middle.4$YCoordinates)
 t <- ((xbar - u )/ (s/ sqrt(n)))
 t
# -0.3600809
 qt(0.02/2, n-1)
#  -2.326382
# The test statistic is inside the null distribution so it appears to be part of the null distribution and we fail to reject the null hypothesis because it is inside the critical region so the y-coordinates do not differ for arrested adults and the population mean equals 208428.4.
 