# Data vectors
x <- c(1, 3, 5, 10)
y <- c(2, 4, 6, 20)

print("variance")
print(var(x))
print(var(y))

# Print covariance using different methods
#print(cov(x, y))
print("covariance")
print(paste("pearson:",cov(x, y, method = "pearson")))
print(paste("kendall:",cov(x, y, method = "kendall")))
print(paste("spearman:",cov(x, y, method = "spearman")))


# Print correlation using different methods
#print(cor(x, y))
print("corelation")
print(paste("pearson:",cor(x, y, method = "pearson")))
print(paste("kendall:",cor(x, y, method = "kendall")))
print(paste("spearman:",cor(x, y, method = "spearman")))

# Load the library.
library("MASS")

# Create a data frame from the main data set.
car.data <- data.frame(Cars93$AirBags, Cars93$Type)

# Create a table with the needed variables.
car.data = table(Cars93$AirBags, Cars93$Type) 
print(car.data)

# Perform the Chi-Square test.
print(chisq.test(car.data))