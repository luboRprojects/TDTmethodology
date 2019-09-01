# This file allows simulation of large number of 
# theoretical results if the DGP (data-generating process) is
# know th the researcher. DGP is in the expressed in the:
# - type of data distribution: rnorm
# - parameters of such a distributions: mean, sd

# Create a variable to which we store results
pval <- c()

# Run the simulation of n studies
# Note that the research design is about number 
# of respondents: n

nStudies <- 10000 
for(i in 1:nstudies) {
 data1 <- rnorm(n=50, mean=15, sd=10)
 data2 <- rnorm(n=50, mean=11, sd=10)

 pval[i] <- t.test(data1, data2, alternative="greater")$p.val
}

# Table of p-values
table(pval<0.05) # TRUE/nStudies is statistical power

# What is the number of respondents (n) to reach power 0.8?
# Check the G*power!
