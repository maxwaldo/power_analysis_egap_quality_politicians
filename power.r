install.packages("pwr")
library(pwr)

# Different specification can be written:

# A. With a power of 0.8 (regular power)

# 1. For treatment with only two values
anova.test.res <- pwr.anova.test(k=2, f=0.1, sig.level=0.05, power=0.8) ## f=0.1 indicates we expect small effects
anova.test.res[['n']] * 2

# 2. For treatment with only five values (age)
anova.test.res <- pwr.anova.test(k=5, f=0.1, sig.level=0.05, power=0.8) ## f=0.1 indicates we expect small effects
anova.test.res[['n']] * 5

# 3. For treatment with only two values but considering the 8 other categories
anova.test.res <- pwr.anova.test(k=2*8, f=0.1, sig.level=0.05, power=0.8) ## f=0.1 indicates we expect small effects
anova.test.res[['n']] * 2*8

# 5, For treatment with fivevalues but considering the 8 other categories
anova.test.res <- pwr.anova.test(k=8*5, f=0.1, sig.level=0.05, power=0.8)
anova.test.res[['n']] * 8*5

# 6, For treatment with all the combined treatments (very conservative for a conjoint)
anova.test.res <- pwr.anova.test(k=5*2*2*2*2*2*5*2, f=0.1, sig.level=0.05, power=0.8)
anova.test.res[['n']] * 5*2*2*2*2*2*5*2

# With a power of 0.9

# 1. For treatment with only two values
anova.test.res <- pwr.anova.test(k=2, f=0.1, sig.level=0.05, power=0.9) ## f=0.1 indicates we expect small effects
anova.test.res[['n']] * 2

# 2. For treatment with only five values (age)
anova.test.res <- pwr.anova.test(k=5, f=0.1, sig.level=0.05, power=0.9) ## f=0.1 indicates we expect small effects
anova.test.res[['n']] * 5

# 3. For treatment with only two values but considering the 8 other categories
anova.test.res <- pwr.anova.test(k=2*8, f=0.1, sig.level=0.05, power=0.9) ## f=0.1 indicates we expect small effects
anova.test.res[['n']] * 2*8

# 5, For treatment with fivevalues but considering the 8 other categories
anova.test.res <- pwr.anova.test(k=8*5, f=0.1, sig.level=0.05, power=0.9)
anova.test.res[['n']] * 8*5

# 6, For treatment with all the combined treatments (very conservative for a conjoint)
anova.test.res <- pwr.anova.test(k=5*2*2*2*2*2*5*2, f=0.1, sig.level=0.05, power=0.9)
anova.test.res[['n']] * 5*2*2*2*2*2*5*2




