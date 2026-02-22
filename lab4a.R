# -----------------------------------------
# Lab 4a - Factors, Matrices, Array
# -----------------------------------------

cat("========== LAB 4a: FACTORS, MATRICES, ARRAYS ==========\n\n")

# =========================================================
# 1. FACTORS
# =========================================================
cat("----- 1. FACTORS -----\n\n")

# 1.1 Factor Construction
cat("1.1 Factor Construction\n")
data <- c("East","West","East","North","North","East","West",
          "West","West","East","North")
print(data)
cat("is.factor(data):", is.factor(data), "\n")

factor_data <- factor(data)
print(factor_data)
cat("is.factor(factor_data):", is.factor(factor_data), "\n")
cat("length(factor_data):", length(factor_data), "\n")
cat("Conclusion: Character vector becomes a factor (categorical) after factor().\n\n")

# 1.2 Accessing Factor Elements
cat("1.2 Accessing Factor Elements\n")
data <- factor(c("East","West","East","North","North","East","West",
                 "West","West","East","North"))
cat("data[3]: ")
print(data[3])
cat("Conclusion: Factor elements can be accessed using indexing like vectors.\n\n")

# 1.3 Factors Elements Manipulation
cat("1.3 Factors Elements Manipulation\n")
data <- factor(c("East","West","East","North","North","East","West",
                 "West","West","East","North"))
cat("Trying: data[3] <- 'NorthWest'\n")
data[3] <- "NorthWest"
print(data)
cat("Conclusion: Assigning a value not in factor levels becomes NA (invalid level).\n\n")

# 1.4 Changing the Order of Levels
cat("1.4 Changing the Order of Levels\n")
data <- c("East","West","East","North","North","East","West",
          "West","West","East","North")
factor_data <- factor(data)
print(factor_data)

new_order_data <- factor(factor_data, levels = c("East","West","North"))
print(new_order_data)
cat("Conclusion: Changing levels order affects category ordering, not the actual data values.\n\n")

# 1.5 Factor Level Generation
cat("1.5 Factor Level Generation\n")
v <- gl(3, 4, labels = c("Tampa", "Seattle","Boston"))
print(v)
cat("Conclusion: gl() generates factor levels automatically with repetition.\n\n")


# =========================================================
# 2. MATRICES
# =========================================================
cat("----- 2. MATRICES -----\n\n")

# 2.1 Matrix Construction
cat("2.1 Matrix Construction\n")
M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
cat("Matrix M (byrow = TRUE):\n")
print(M)

N <- matrix(c(3:14), nrow = 4, byrow = FALSE)
cat("Matrix N (byrow = FALSE):\n")
print(N)

rownames <- c("row1", "row2", "row3", "row4")
colnames <- c("col1", "col2", "col3")
P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
cat("Matrix P (with row/col names):\n")
print(P)
cat("Conclusion: byrow controls fill direction; dimnames labels rows/columns.\n\n")

# 2.2 Accessing Elements of a Matrix
cat("2.2 Accessing Elements of a Matrix\n")
cat("P[1,3] (1st row, 3rd col): ")
print(P[1,3])
cat("P[4,2] (4th row, 2nd col): ")
print(P[4,2])
cat("P[2,] (2nd row):\n")
print(P[2,])
cat("P[,3] (3rd column):\n")
print(P[,3])
cat("Conclusion: Use [row, col] indexing; blank means all rows/cols.\n\n")

# 2.3 Matrix Addition & Subtraction
cat("2.3 Matrix Addition & Subtraction\n")
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)

cat("matrix1:\n"); print(matrix1)
cat("matrix2:\n"); print(matrix2)

result <- matrix1 + matrix2
cat("Result of addition:\n")
print(result)

result <- matrix1 - matrix2
cat("Result of subtraction:\n")
print(result)
cat("Conclusion: + and - perform element-wise operations (same dimensions required).\n\n")

# 2.4 Matrix Multiplication & Division
cat("2.4 Matrix Multiplication & Division\n")
result <- matrix1 * matrix2
cat("Result of multiplication (* element-wise):\n")
print(result)

result <- matrix1 / matrix2
cat("Result of division (/ element-wise):\n")
print(result)
cat("Conclusion: * and / are element-wise; matrix product uses %*%.\n\n")


# =========================================================
# 3. ARRAYS
# =========================================================
cat("----- 3. ARRAYS -----\n\n")

# 3.1 Array Construction
cat("3.1 Array Construction\n")
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
result <- array(c(vector1,vector2), dim = c(3,3,2))
print(result)
cat("Conclusion: Array can store data in 3D (rows x cols x matrices).\n\n")

# 3.2 Naming Columns and Rows
cat("3.2 Naming Columns and Rows\n")
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

result <- array(c(vector1,vector2),
                dim = c(3,3,2),
                dimnames = list(row.names, column.names, matrix.names))
print(result)
cat("Conclusion: dimnames labels rows, columns, and matrix layers.\n\n")

# 3.3 Accessing Array Elements
cat("3.3 Accessing Array Elements\n")
cat("Third row of second matrix (result[3,,2]):\n")
print(result[3,,2])

cat("Element [1,3,1] (1st row, 3rd col, 1st matrix): ")
print(result[1,3,1])

cat("Second matrix (result[,,2]):\n")
print(result[,,2])
cat("Conclusion: Use [row, col, matrix] indexing for arrays.\n\n")

# 3.4 Array Elements Manipulation
cat("3.4 Array Elements Manipulation\n")
array1 <- array(c(vector1,vector2), dim = c(3,3,2))
array2 <- array(c(vector1,vector2), dim = c(3,3,2))

matrix1 <- array1[,,2]
matrix2 <- array2[,,2]

result <- matrix1 + matrix2
cat("matrix1 + matrix2:\n")
print(result)
cat("Conclusion: Arrays can be sliced into matrices, then matrix operations can be done.\n\n")

# 3.5 Using function apply() in Array
cat("3.5 Using apply() in Array\n")
new.array <- array(c(vector1,vector2), dim = c(3,3,2))
print(new.array)

result <- apply(new.array, c(1), sum)
cat("Row sums across all matrices (apply(..., 1, sum)):\n")
print(result)
cat("Conclusion: apply() applies a function across a chosen dimension (1 = rows).\n\n")

cat("========== END OF LAB 4a ==========\n")
