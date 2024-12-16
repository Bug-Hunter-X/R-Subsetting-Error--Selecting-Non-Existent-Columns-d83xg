# R Subsetting Bug: Handling Non-Existent Columns

This repository demonstrates a common error in R when subsetting data frames: attempting to select columns that do not exist. The `bug.R` file contains code that produces this error. The solution is shown in `bugSolution.R`.

**Problem:**
When using the `[` operator to subset a data frame, if you specify column names that are not present in the data frame, R throws an error. This is not always handled gracefully and may lead to unexpected behavior.

**Solution:**
The solution involves checking for the existence of columns before attempting to select them, or utilizing more robust subsetting methods.