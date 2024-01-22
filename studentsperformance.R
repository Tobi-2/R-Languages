# Install and load necessary packages
if (!require(tidyverse)) install.packages("tidyverse")

# Load the dataset
student_data <- read.csv("StudentsPerformance.csv")
view(student_data)

# Explore the structure and summary of the dataset
str(student_data)
summary(student_data)

# Check for missing values
missing_values <- colSums(is.na(student_data))
print(missing_values)

# Check for duplicate rows
duplicate_rows <- student_data[duplicated(student_data), ]
print(duplicate_rows)

# Explore summary statistics
summary(student_data)

# Visualize the distribution of scores
ggplot(student_data, aes(x = math.score)) +
  geom_histogram(binwidth = 6, fill = "blue", color = "black", alpha = 0.9) +
  labs(title = "Histogram of Math Scores",
       x = "Math Score",
       y = "Count")

# Pairwise scatter plots for numerical variables
pairs(student_data[, c("math.score", "reading.score", "writing.score")])

# Boxplot of scores by gender
ggplot(student_data, aes(x = gender, y = math.score, fill = gender)) +
  geom_boxplot() +
  labs(title = "Boxplot of Math Scores by Gender",
       x = "Gender",
       y = "Math Score",
       fill = "Gender")

# Split the data into training and testing sets
set.seed(123)
train_indices <- sample(1:nrow(student_data), 0.7 * nrow(student_data))
train_data <- student_data[train_indices, ]
test_data <- student_data[-train_indices, ]

# Build a linear regression model to predict math scores
lm_model <- lm(math.score ~ reading.score + writing.score + gender + race.ethnicity, data = train_data)

# Make predictions on the test set
predictions <- predict(lm_model, newdata = test_data)

# Evaluate the model
print(summary(lm_model))
