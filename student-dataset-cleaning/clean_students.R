library(dplyr)
library(stringr)
library(lubridate)

# Read CSV (use encoding just in case)
df <- read.csv("data/raw/Unclean Dataset.csv",
               stringsAsFactors = FALSE,
               fileEncoding = "latin1")

# Trim all character columns safely + convert encoding
df[] <- lapply(df, function(x) {
  if (is.character(x)) {
    x <- iconv(x, from = "", to = "UTF-8", sub = "")   # safe UTF-8 conversion
    x <- str_trim(x)
  }
  x
})

# Clean specific columns
df$First_Name <- str_to_title(df$First_Name)
df$Last_Name  <- str_to_title(df$Last_Name)

df$Gender <- case_when(
  str_to_lower(df$Gender) %in% c("m","male") ~ "Male",
  str_to_lower(df$Gender) %in% c("f","female") ~ "Female",
  TRUE ~ NA_character_
)

df$Age <- suppressWarnings(as.numeric(df$Age))

df$Enrollment_Date <- suppressWarnings(parse_date_time(
  df$Enrollment_Date,
  orders = c("Ymd","dmY","mdY","Y-m-d","d/m/Y","m/d/Y")
)) %>% as.Date()

df$Total_Payments <- suppressWarnings(as.numeric(
  str_replace_all(df$Total_Payments, "[^0-9.]", "")
))

# Remove duplicates
df_clean <- distinct(df, Student_ID, .keep_all = TRUE)

# ✅ Save cleaned dataset
dir.create("data/clean", showWarnings = FALSE, recursive = TRUE)
write.csv(df_clean, "data/clean/students_clean.csv", row.names = FALSE)

cat("✅ Dataset cleaned successfully!\n")
cat("✅ Rows:", nrow(df_clean), "\n")
cat("✅ Saved to: data/clean/students_clean.csv\n")