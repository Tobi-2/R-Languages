# Download the dataset from kaggle
# Install and load necessary packages
if (!require(tidyverse)) install.packages("tidyverse")

# Load the dataset
wine_data <- read.csv("winequality-red.csv")

# Explore the structure and summary of the dataset
str(wine_data)
summary(wine_data)

# Check for missing values

missing_values <- colSums(is.na(wine_data))
print(missing_values)

# Check for duplicate rows

duplicate_rows <- wine_data[duplicated(wine_data), ]
print(duplicate_rows)

# If needed, handle missing values or duplicates

# Explore summary statistics
summary(wine_data)

# Visualize the distribution of wine quality
ggplot(wine_data, aes(x = quality)) +
  geom_bar() +
  labs(title = "Distribution of Wine Quality",
       x = "Quality",
       y = "Count")

# Pairwise scatter plots for numerical variables
pairs(wine_data[, c("fixed.acidity", "volatile.acidity", "citric.acid", "residual.sugar", "chlorides", "free.sulfur.dioxide", "total.sulfur.dioxide", "density", "pH", "sulphates", "alcohol")])

# Correlation matrix
correlation_matrix <- cor(wine_data[, c("fixed acidity", "volatile.acidity", "citric .acid", "residual.sugar", "chlorides", "free.sulfur.dioxide", "total.sulfur.dioxide", "density", "pH", "sulphates", "alcohol")])
ggplot(data = melt(correlation_matrix), aes(x = Var1, y = Var2, fill = value)) +
  geom_tile() +
  labs(title = "Correlation Matrix",
       x = "Variable 1",
       y = "Variable 2",
       fill = "Correlation")
# Split the data into training and testing sets
set.seed(123)
train_indices <- sample(1:nrow(wine_data), 0.7 * nrow(wine_data))
train_data <- wine_data[train_indices, ]
test_data <- wine_data[-train_indices, ]

# Build a linear regression model
lm_model <- lm(quality ~ ., data = train_data)

# Make predictions on the test set
predictions <- predict(lm_model, newdata = test_data)

# Evaluate the model
print(summary(lm_model))
