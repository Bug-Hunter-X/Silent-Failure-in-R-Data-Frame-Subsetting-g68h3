# R Subsetting Bug

This repository demonstrates a subtle but common error in R programming related to data frame subsetting.  When attempting to select columns from a data frame using a character vector of column names, R silently drops any columns that do not exist, rather than throwing an error or warning. This can lead to unexpected results and difficult-to-track bugs.

The `bug.r` file contains a code example illustrating the problem. The `bugSolution.r` file shows a corrected version using safer methods to handle potential missing columns.
