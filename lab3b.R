# Question 1 
scores <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61, 13, 44, 26, 24, 73, 73, 90, 39, 90, 54)

A <- sum(scores >= 90 & scores <= 100)
B <- sum(scores >= 80 & scores <= 89)
C <- sum(scores >= 70 & scores <= 79)
D <- sum(scores >= 60 & scores <= 69)
E <- sum(scores >= 50 & scores <= 59)
F <- sum(scores <= 49)

cat("Grade A:", A, "\n")
cat("Grade B:", B, "\n")
cat("Grade C:", C, "\n")
cat("Grade D:", D, "\n")
cat("Grade E:", E, "\n")
cat("Grade F:", F, "\n")

pass_status <- scores > 49
print(pass_status)


# Question 2 
students <- list(
  Robert = 59,
  Hemsworth = 71,
  Scarlett = 83,
  Evans = 68,
  Pratt = 65,
  Larson = 57,
  Holland = 62,
  Paul = 92,
  Simu = 92,
  Renner = 59
)

scores2 <- unlist(students)

highest_score <- max(scores2)
lowest_score <- min(scores2)
average_score <- mean(scores2)

cat("Highest Score:", highest_score, "\n")
cat("Lowest Score:", lowest_score, "\n")
cat("Average Score:", average_score, "\n")

student_highest <- names(scores2)[scores2 == highest_score]
student_lowest <- names(scores2)[scores2 == lowest_score]

cat("Student with highest score:", student_highest, "\n")
cat("Student with lowest score:", student_lowest, "\n")


# Question 3
student_records <- list(
  Name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", "Larson", "Holland", "Paul", "Simu", "Renner"),
  Exam = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59),
  Chemistry = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59),
  Physics = c(89, 86, 65, 52, 60, 67, 40, 77, 90, 61)
)

chem_fail_count <- sum(student_records$Chemistry <= 49)
phys_fail_count <- sum(student_records$Physics <= 49)

cat("Number of students who fail Chemistry:", chem_fail_count, "\n")
cat("Number of students who fail Physics:", phys_fail_count, "\n")

highest_chem <- max(student_records$Chemistry)
highest_phys <- max(student_records$Physics)

cat("Highest Chemistry score:", highest_chem, "\n")
cat("Highest Physics score:", highest_phys, "\n")

best_chem_students <- student_records$Name[student_records$Chemistry == highest_chem]
best_phys_students <- student_records$Name[student_records$Physics == highest_phys]

cat("Best student(s) in Chemistry:", best_chem_students, "\n")
cat("Best student(s) in Physics:", best_phys_students, "\n")

