library(ggplot2)
data("mtcars")

# Bar Chart Cylindr Count
ggplot(mtcars, aes(x = factor(cyl))) +
  geom_bar(fill = "blue") +
  labs(title = "Number of Cars by Cylinders",
       x = "Cylinders",
       y = "Count") +
  theme_minimal()

# Histogram
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 3, fill = "green", color = "black") +
  labs(title = "Distribution of MPG",
       x = "Miles Per Gallon") +
  theme_minimal()

# Scatter Plot
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "red") +
  labs(title = "MPG vs Horsepower",
       x = "Horsepower",
       y = "MPG") +
  theme_minimal()

# Boxplot
ggplot(mtcars, aes(x = factor(cyl), y = mpg)) +
  geom_boxplot(fill = "orange") +
  labs(title = "MPG Distribution by Cylinders",
       x = "Cylinders",
       y = "MPG") +
  theme_minimal()
