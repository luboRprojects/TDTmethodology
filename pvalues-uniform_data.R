# Show that it doesn't matter if the data follows
# normal distribution

set.seed(123)
data1u <- runif(100, min=0, max=1000)

hist(data1u)
mean(data1u)

t.test(data1u, mu=500, alternative="greater")
t.test(data1u, mu=550, alternative="greater")
t.test(data1u, mu=450, alternative="greater")

t.test(data1, mu= 800, alternative="greater")
t.test(data1, mu=1000, alternative="less")
t.test(data1, mu= 900, alternative="less")
