```r
# Improved code using safer subsetting methods:

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_select <- c("a", "b", "d")

# Method 1: Using %in% to check for column existence
cols_exist <- cols_to_select %in% names(df)
result1 <- df[, cols_to_select[cols_exist]]

# Method 2: Using intersect to find common columns
cols_intersect <- intersect(cols_to_select, names(df))
result2 <- df[, cols_intersect]

# Method 3: Using dplyr's select with a `matches` function to handle any potential non-existant columns more gracefully.
library(dplyr)
result3 <- df %>% select(all_of(cols_to_select))

print(result1)
print(result2)
print(result3)

# All three methods produce the same correct result, including only columns "a" and "b". 
```