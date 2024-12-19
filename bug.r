```r
# This code attempts to subset a data frame using a character vector of column names,
# but it fails silently if any of the specified columns do not exist.

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_select <- c("a", "b", "d")
result <- df[, cols_to_select]
print(result)

# Expected output (if it handled missing columns gracefully):
a data frame containing only columns "a" and "b"

# Actual output: a data frame with only column "a", "b"

# The issue: R's subsetting silently drops columns that are not found, 
# making it difficult to detect errors in code.
```