# Question 1
student_data <- data.frame(
  name = c("Anastasia", "Dima", "Michael", "Matthew", "Laura", "Kevin", "Jonas"),
  score = c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0),
  attempts = c(1, 3, 2, 3, 2, 1, 2)
)
print(student_data)

# Question 2
student_data$qualify <- c("yes", "no", "yes", "no", "no", "no", "yes")
print(student_data)

# Question 3
student_data <- rbind(student_data,
                      data.frame(name = "Emily", score = 14.5, attempts = 1, qualify = "yes"))
print(student_data)

# Question 4
student_data$qualify <- as.factor(student_data$qualify)

str(student_data)
summary(student_data)
nrow(student_data)
ncol(student_data)

# the dataset contains 8 rows and 4 columns. the score and attemps are numeric, qualify is categorical. 
# from the summary, highest score is 19.0 and lowest score is 8.0.
# most students attempted the test 1 to 3 times. 
# there are more students qualify = no than yes
