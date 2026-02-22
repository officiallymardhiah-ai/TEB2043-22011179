# TEB2043 - Lab 5b
# Selection & Repetition Statements

# -------------------------------
# Program 1: Leap Year
# -------------------------------

year <- as.integer(readline(prompt = "Input year: "))

if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
  cat("Output:", year, "is a leap year.\n")
} else {
  cat("Output:", year, "is not a leap year.\n")
}

# -------------------------------
# Program 2: Cube of Numbers
# -------------------------------

n <- as.integer(readline(prompt = "Input an integer: "))

for (i in 1:n) {
  cube <- i^3
  cat("Number is:", i, "and cube of the", i, "is:", cube, "\n")
}

# -------------------------------
# Program 3: Armstrong Number
# -------------------------------

num <- as.integer(readline(prompt = "Input an integer: "))

original_num <- num
digits <- strsplit(as.character(num), "")[[1]]
n <- length(digits)

sum <- 0

for (d in digits) {
  sum <- sum + (as.numeric(d))^n
}

if (sum == original_num) {
  cat(original_num, "is an Armstrong number.\n")
} else {
  cat(original_num, "is not an Armstrong number.\n")
}
