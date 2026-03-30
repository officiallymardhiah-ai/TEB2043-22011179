# Question 1
weight <- as.numeric(readline("Enter weight in kg: "))
height <- as.numeric(readline("Enter height in meters: "))
bmi <- weight / (height^2)

cat("Underweight:", bmi <= 18.4, "\n")
cat("Normal:", bmi >= 18.5 & bmi <= 24.9, "\n")
cat("Overweight:", bmi >= 25.0 & bmi <= 39.9, "\n")
cat("Obese:", bmi >= 40.0, "\n\n")

# Question 2
str1 <- readline("Enter string 1: ")
str2 <- readline("Enter string 2: ")
cat("This program compare 2 strings. Both inputs are similar:",
    tolower(str1) == tolower(str2), "\n\n")

# Question 3
name <- readline("Enter your name: ")
phone <- readline("Enter your phone number: ")
cat("Hi,", toupper(name), ". A verification code has been sent to",
    substr(phone, 1, 3), "-xxxxx", substr(phone, nchar(phone)-3, nchar(phone)), "\n") 
