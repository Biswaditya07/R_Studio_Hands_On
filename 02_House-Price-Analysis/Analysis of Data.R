attach(houseprices)                        # Attach dataset so column names can be used directly
plot(Price, SqFt)                          # Create scatter plot with Price on X-axis and SqFt on Y-axis
plot(SqFt, Price)                          # Create scatter plot with SqFt on X-axis and Price on Y-axis
cor(SqFt, Price)                           # Calculate correlation between Square Feet and Price
plot(Offers, Price)                        # Create scatter plot between Offers and Price
boxplot(Price ~ Brick)                     # Create boxplot of Price grouped by Brick category
boxplot(Price ~ Neighborhood)              # Create boxplot of Price grouped by Neighborhood
median(Price)                              # Find median value of Price
Neighborhood = as.factor(Neighborhood)     # Convert Neighborhood from character/numeric to categorical factor
summary(Neighborhood)                      # Show summary/count of each Neighborhood category


t = table(Neighborhood)                    # Create frequency table of Neighborhood and store in t
barplot(t)                                 # Create bar plot of Neighborhood frequencies
hist(Price)                                # Create histogram of Price distribution
boxplot(Price, horizontal = T)             # Create horizontal boxplot of Price
qqnorm(Price)                              # Create Q-Q plot to check normal distribution visually
qqline(Price)                              # Add reference straight line to Q-Q plot
shapiro.test(Price)                        # Perform Shapiro-Wilk normality test
library(nortest)                           # Load nortest package for additional normality tests
lillie.test(Price)                         # Perform Lilliefors (Kolmogorov-Smirnov) normality test
ad.test(Price)                             # Perform Anderson-Darling normality test


#Creating intentionally Normal data to check normality

z = rnorm(500)                    # Generate 500 random numbers from normal distribution and store in z
z                                 # Display all generated values of z
hist(z)                           # Create histogram to view distribution of z
boxplot(z, horizontal = T)        # Create horizontal boxplot to check spread and outliers
qqnorm(z)                         # Create Q-Q plot to visually check normality of z
qqline(z)                         # Add reference straight line to Q-Q plot


#Run statistical test on z value which is taken intentionally normally distributed
shapiro.test(z)
lillie.test(z)
ad.test(z)


#Checking Normality Zone wise/Neighborhood wise

hist(Price[Neighborhood=="East"])
boxplot(Price[Neighborhood=="East"],horizontal = T)
qqnorm(Price[Neighborhood=="East"])
qqline(Price[Neighborhood=="East"])

hist(Price[Neighborhood=="West"])
boxplot(Price[Neighborhood=="West"],horizontal = T)
qqnorm(Price[Neighborhood=="West"])
qqline(Price[Neighborhood=="West"])

hist(Price[Neighborhood=="North"])
boxplot(Price[Neighborhood=="North"],horizontal = T)
qqnorm(Price[Neighborhood=="North"])
qqline(Price[Neighborhood=="North"])
