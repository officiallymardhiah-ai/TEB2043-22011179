# Question 1
install.packages("ggplot2")
install.packages("reshape2")

library(ggplot2)
library(reshape2)

data("ToothGrowth")
ToothGrowth$supp_num <- ifelse(ToothGrowth$supp == "OJ", 1, 0)
cor_matrix <- cor(ToothGrowth[, c("len", "dose", "supp_num")])

print("Correlation Matrix for ToothGrowth:")
print(cor_matrix)

cor_melt <- melt(cor_matrix)

ggplot(data = cor_melt, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile() +
  geom_text(aes(label = round(value, 2))) +
  scale_fill_gradient2(low = "blue", high = "red", mid = "white",
                       midpoint = 0, limit = c(-1,1)) +
  theme_minimal() +
  ggtitle("Correlation Heatmap - ToothGrowth")

# Question 2
data("mtcars")
mtcars_data <- mtcars
log_transform <- log(mtcars_data + 1)

print("Log Transformed Data:")
print(head(log_transform))

standard_scaled <- scale(mtcars_data)

print("Standard Scaled Data:")
print(head(standard_scaled))

min_max_scale <- function(x) {
  (x - min(x)) / (max(x) - min(x)
}

min_max_scaled <- as.data.frame(lapply(mtcars_data, min_max_scale))

print("Min-Max Scaled Data:")
print(head(min_max_scaled))
