# TEB2043-22011179
LAB DATA SCIENCE 5
# --------------------------------------------
# Program 1: Check whether a year is leap year
# --------------------------------------------

year <- as.integer(readline(prompt = "Input year: "))

if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
  cat("Output:", year, "is a leap year.\n")
} else {
  cat("Output:", year, "is not a leap year.\n")
}
