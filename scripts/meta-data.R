library(readr)
library(ggplot2)
library(cluster)

# Set working directory to the folder where this script is located
setwd(dirname(rstudioapi::getSourceEditorContext()$path))

group_bpmn_elements <- function(data, metadata_cols = 2) {
  # Step 1: Strip namespaces
  colnames(data) <- sub("^[^:]+:", "", colnames(data))
  
  # Step 2: Separate metadata and BPMN element counts
  meta_part <- data[, 1:metadata_cols]
  bpmn_part <- data[, -(1:metadata_cols)]
  
  # Step 3: Find unique element names
  element_names <- unique(colnames(bpmn_part))
  
  # Step 4: Initialize an empty data frame for grouped columns
  grouped <- data.frame(matrix(0, nrow = nrow(data), ncol = length(element_names)))
  colnames(grouped) <- element_names
  
  # Step 5: Sum up columns with the same element name
  for (element in element_names) {
    matching_cols <- which(colnames(bpmn_part) == element)
    grouped[[element]] <- rowSums(bpmn_part[, matching_cols, drop = FALSE])
  }
  
  # Step 6: Combine metadata with grouped BPMN elements
  result <- cbind(meta_part, grouped)
  return(result)
}

plot_element_counts <- function(counts, title = "Element Counts", cex = 0.8) {
  old_par <- par(no.readonly = TRUE)
  par(mar = c(15, 4, 4, 2))  # adjust margins
  
  bar_mids <- barplot(counts,
                      las = 2,
                      main = title,
                      ylim = c(0, max(counts) * 1.2))
  
  text(x = bar_mids,
       y = counts,
       labels = counts,
       pos = 3,
       cex = cex)
  
  par(old_par)
}

# Function to detect and sort outliers by element type
find_element_outliers <- function(data_grouped, pattern, percentile = 0.95) {
  # Find matching columns
  cols <- grep(pattern, names(data_grouped), value = TRUE)
  if (length(cols) == 0) {
    warning(paste("No columns found matching pattern:", pattern))
    return(NULL)
  }
  
  # Calculate total per model for the pattern
  total_col <- rowSums(data_grouped[, cols, drop = FALSE])
  total_col_name <- paste0(tolower(pattern), "_total")
  
  # Add total column to a copy of the data
  data_grouped[[total_col_name]] <- total_col
  
  # Filter outliers
  threshold <- quantile(total_col, percentile)
  outliers <- data_grouped[data_grouped[[total_col_name]] > threshold, ]
  
  # Sort descending
  outliers_sorted <- outliers[order(-outliers[[total_col_name]]), ]
  
  return(outliers_sorted[, c("model", "original_file", total_col_name)])
}


# ---------------------------------
meta_data <- read_csv("../data/sap-sam/meta_data.csv")
meta_data <- meta_data[1:min(200, nrow(meta_data)), ]

# Remove namespace prefixes from column names
# Group elements (if not already done)
data_grouped <- group_bpmn_elements(meta_data)

# ALL BPMN element counts
all_counts <- colSums(data_grouped[, -c(1, 2)])  # exclude metadata columns
plot_element_counts(all_counts, title = "Total Count of All BPMN Elements")

# GATEWAY-ONLY element counts
gateway_cols <- grep("Gateway", names(data_grouped), value = TRUE)
gateway_counts <- colSums(data_grouped[, gateway_cols, drop = FALSE])
plot_element_counts(gateway_counts, title = "Total Count of Gateway Elements")

# Averages
element_data <- data_grouped[, -c(1, 2)]  # remove model and original_file
element_averages <- colMeans(element_data)

plot_element_counts(element_averages, title = "Average BPMN Elements per Model")

# Outliers
# Find and print gateway outliers
gateway_outliers <- find_element_outliers(data_grouped, pattern = "Gateway")
print(gateway_outliers)

# Find and print task outliers
task_outliers <- find_element_outliers(data_grouped, pattern = "Task")
print(task_outliers)