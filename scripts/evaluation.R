library(readr)
library(ggplot2)
library(cluster)
# Set working directory to the folder where this script is located
setwd(dirname(rstudioapi::getSourceEditorContext()$path))

# ---------------------------------
meta_data <- read_csv("../data/sap-sam/meta_data.csv")

# Load required libraries
library(jsonlite)
library(dplyr)
library(tidyr)

# Read JSON file
input_json <- fromJSON("../log/execution/sap-sam/last/merged_summary.json", flatten = TRUE)

# Flatten the 'processes' list into rows
flat_data <- input_json %>%
  tidyr::unnest_longer(processes) %>%
  tidyr::unnest_wider(processes)

flat_data <- flat_data %>%
  mutate(
    fn = number_positives - true_positives,
    fp = number_negatives - true_negative
  )

# Calculate metrics
flat_data <- flat_data %>%
  mutate(
    precision = ifelse((true_positives + fp) > 0,
                       true_positives / (true_positives + fp), 0),
    recall = ifelse((true_positives + fn) > 0,
                    true_positives / (true_positives + fn), 0),
    f1_score = ifelse(precision + recall > 0,
                      2 * precision * recall / (precision + recall), 0)
  )

# Print result
print(flat_data)

# Optional: summary stats per shot type
summary_stats <- flat_data %>%
  group_by(name) %>%
  summarise(
    avg_precision = mean(precision, na.rm = TRUE),
    avg_recall = mean(recall, na.rm = TRUE),
    avg_f1 = mean(f1_score, na.rm = TRUE),
    .groups = "drop"
  )

print(summary_stats)
