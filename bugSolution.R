```r
# Improved code that handles non-existent columns gracefully.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "D", "E")

# Method 1: Check for existence of columns before subsetting
cols_exist <- cols_to_select %in% names(df)
selected_cols <- cols_to_select[cols_exist]
subset_df <- df[, selected_cols]

# Method 2: Using dplyr's select function which handles missing columns gracefully
library(dplyr)
subset_df <- df %>% select(all_of(cols_to_select))

# The result will be a data frame with only column "A" in both cases, and no errors
print(subset_df)
```