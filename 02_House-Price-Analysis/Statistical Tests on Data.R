attach(houseprices)                        # Attach dataset so column names can be used directly

# 1-SAMPLE T-TEST
t.test(Price, mu = 130000)                 # Test whether mean Price is significantly different from 130000

# H0: Mean Price = 130000
# H1: Mean Price ≠ 130000
# Significance Level (α) = 0.05
# If p-value < 0.05 → Reject H0
# If p-value > 0.05 → Fail to reject H0

Brick = as.factor(Brick)                  # Convert Brick variable into factor (categorical variable)

levene.test(Price ~ Brick)                # Test equality of variance between Brick groups (if package supports function)

# H0: Variances of Price are equal across Brick groups
# H1: Variances of Price are not equal
# Significance Level (α) = 0.05
# If p-value < 0.05 → Variances unequal
# If p-value > 0.05 → Variances equal


# 2-SAMPLE T-TEST

library(car)                             # Load car package for Levene's Test

Brick = as.factor(Brick)                 # Convert Brick variable into factor

leveneTest(Price ~ Brick)                # Check equal variance before independent t-test

# H0: Variances of two Brick groups are equal
# H1: Variances are different
# If p-value > 0.05 → Equal variance assumed

t.test(Price ~ Brick, var.equal = T)     # Compare mean Price between Brick groups assuming equal variance

# H0: Mean Price of Brick groups are equal
# H1: Mean Price of Brick groups are different
# Significance Level (α) = 0.05
# If p-value < 0.05 → Reject H0 (means differ)
# If p-value > 0.05 → Fail to reject H0 (no significant difference)

print(houseprices, n = 105)             # Print first 105 rows of dataset
