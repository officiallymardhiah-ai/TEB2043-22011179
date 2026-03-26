# Question 1 
age = c(55,57,56,52,51,59,58,53,59,55,60,60,60,60,52,55,56,51,60,
        52,54,56,52,57,54,56,58,53,53,50,55,51,57,60,57,55,51,50,57,58)

age_factor <- factor(age)

age_range <- cut(age,
                 breaks = c(50,52,54,56,58,60),
                 labels = c("50-52","52-54","54-56","56-58","58-60"),
                 include.lowest = TRUE)

table(age)
table(age_range)


# Question 2
V1 <- c(2,3,1,5,4,6,8,7,9)

Matrix1 <- matrix(V1, nrow = 3, ncol = 3, byrow = TRUE)
Matrix2 <- t(Matrix1)

rownames(Matrix1) <- c("Row1", "Row2", "Row3")
colnames(Matrix1) <- c("Col1", "Col2", "Col3")

rownames(Matrix2) <- c("Row1", "Row2", "Row3")
colnames(Matrix2) <- c("Col1", "Col2", "Col3")

print("Matrix 1:")
print(Matrix1)

print("Matrix 2:")
print(Matrix2)

# Add
print("Addition:")
print(Matrix1 + Matrix2)

# Subtract
print("Subtraction:")
print(Matrix1 - Matrix2)

# Multiply
print("Multiplication:")
print(Matrix1 * Matrix2)

# Divide
print("Division:")
print(Matrix1 / Matrix2)


# Question 3
array1 <- array(1:24, dim = c(2,4,3))

print("Array 1:")
print(array1)

array2 <- array(25:54, dim = c(3,2,5))

print("Array 2:")
print(array2)
print("The second row of the second matrix of the first array:")
print(array1[2,,2])
print("The element in the 3rd row and 2nd column of the 1st matrix of the second array:")
print(array2[3,2,1])
