# P-values and different test
# Sensitivity analysis

set.seed(123) # to receive identical results
data1 <- rnorm(10,  mean=1050, sd=15)
data2 <- rnorm(100, mean=1000, sd=30)


data1 # check the data
hist(data1)
mean(data1)
sd(data1)

t.test(data1, mu=1000, alternative="greater")
t.test(data1, mu= 800, alternative="greater")
t.test(data1, mu=1000, alternative="less")
t.test(data1, mu= 900, alternative="less")

# Higher variance data analysis
hist(data2)
mean(data2)
sd(data1)

t.test(data2, mu=1000, alternative="greater")
t.test(data2, mu= 800, alternative="greater")
t.test(data2, mu=1000, alternative="less")
t.test(data2, mu= 900, alternative="less")


#------------------------
# How much does it take to reject H0?
prop.test(n=50,  x=40, p=0.9 , alternative="greater")
prop.test(n=50,  x=40, p=0.85, alternative="greater")
prop.test(n=50,  x=40, p=0.8 , alternative="greater")

# Show that the size matters
# Pay attention to the X-squared statistics
prop.test(n=50,  x=40,  p=0.75, alternative="greater")
prop.test(n=100, x=80,  p=0.75, alternative="greater")
prop.test(n=200, x=160, p=0.75, alternative="greater")
