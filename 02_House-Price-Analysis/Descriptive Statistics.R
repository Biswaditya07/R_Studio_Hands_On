attach(houseprices)                    # Attach the dataset so columns can be used directly without dataset$column
hist(Price, main="Price", freq=F)      # Create histogram of Price; freq=F shows density instead of frequency count
lines(density(Price), col=2, lwd=2)    # Add density curve on histogram; col=2 sets color, lwd=2 sets line width
boxplot(Price, horizontal = T)         # Create horizontal boxplot of Price to check spread and outliers
max(Price)                             # Find maximum value in Price column
min(Price)                             # Find minimum value in Price column
b = boxplot(Price, horizontal = T)     # Store boxplot results (stats, outliers, etc.) in variable b
b$out                                  # Display outlier values detected in boxplot
b$group                                # Show group number of outliers (useful in grouped boxplots)
which(Price == "211200")               # Find row number where Price value is 211200
house1 = houseprices[-104, ]           # Create new dataset by removing row 104
boxplot(house1$Price, horizontal=T)    # Create boxplot after removing row 104
