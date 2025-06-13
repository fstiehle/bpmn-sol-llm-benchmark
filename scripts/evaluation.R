# ===================================================
# Script: Evaluation Summary for SAP-SAM
# Description: Calculates evaluation metrics and usage statistics
# ===================================================

# --------- Libraries ---------
library(readr)
library(jsonlite)
library(tidyr)
library(ggplot2)
library(cluster)
library(dplyr)

# --------- Set Working Directory ---------
setwd(dirname(rstudioapi::getSourceEditorContext()$path))

# --------- Configuration ---------
version <- "initial"
case <- "sap-sam"

# --------- File Paths ---------
meta_path   <- file.path("..", "data", case, "meta_data.csv")
input_path  <- file.path("..", "log", "execution", case, version, "merged_summary.json")
usage_path  <- file.path("..", "log", "llm", case, version, "merged_summary.json")

# --------- Load Data ---------
meta_data  <- read_csv(meta_path)
input_json <- fromJSON(input_path, flatten = TRUE)
usage_json <- fromJSON(usage_path, flatten = TRUE)

# ===================================================
# SECTION 1: LLM Usage Metrics
# ===================================================

# Flatten nested 'usages' structure
flat_usage <- usage_json %>%
  unnest_longer(usages) %>%
  unnest_wider(usages)

# Group by model run name and compute averages
avg_usage <- flat_usage %>%
  group_by(name) %>%
  summarise(
    avg_cost = mean(usage.cost, na.rm = TRUE),
    avg_prompt_tokens = mean(usage.prompt_tokens, na.rm = TRUE),
    avg_completion_tokens = mean(usage.completion_tokens, na.rm = TRUE),
    avg_total_tokens = mean(usage.total_tokens, na.rm = TRUE),
    n_processes = n(),
    .groups = "drop"
  )

cat("\n--- Average Usage Statistics ---\n")
print(avg_usage)

# ===================================================
# SECTION 2: Evaluation Metrics
# ===================================================

# Flatten 'processes' structure
flat_data <- input_json %>%
  unnest_longer(processes) %>%
  unnest_wider(processes)

# Calculate FN, FP
flat_data <- flat_data %>%
  mutate(
    fn = number_positives - true_positives,
    fp = number_negatives - true_negative,
    precision = ifelse(true_positives + fp > 0, true_positives / (true_positives + fp), 0),
    recall = ifelse(true_positives + fn > 0, true_positives / (true_positives + fn), 0),
    f1 = ifelse(precision + recall > 0, 2 * precision * recall / (precision + recall), 0),
    compiled = ifelse(is.na(compiled), TRUE, compiled)
  )

# Check process count consistency
process_counts <- flat_data %>%
  group_by(name) %>%
  summarise(n_processes = n_distinct(process), .groups = "drop")

if (length(unique(process_counts$n_processes)) != 1) {
  print(process_counts)
  stop("ERROR: Not all 'name' entries have the same number of processes.")
} else {
  cat("\nNumber of processes per name:", process_counts$n_processes[1], "\n")
}

cat("\n--- Per-Process Evaluation Data ---\n")
print(flat_data, right = FALSE, row.names = FALSE)

summary_stats <- flat_data %>%
  group_by(name) %>%
  summarise(
    tp = sum(true_positives),
    tn = sum(true_negative),
    fp = sum(fp),
    fn = sum(fn),
    accuracy = (tp + tn) / (tp + tn + fp + fn),
    f1_macro = mean(f1),
    .groups = "drop"
  ) %>%
  arrange(desc(f1_macro))  # Sort by macro_f1 descending

cat("\n--- Summary Evaluation Metrics (Sorted by Macro F1) ---\n")
print(summary_stats, width = Inf, row.names = FALSE, right = FALSE)
write.csv(summary_stats, "summary.csv", row.names = FALSE)


# ===================================================
# SECTION 3: F1 == 1 Analysis
# ===================================================

# Entries with perfect F1
perfect_f1 <- flat_data %>%
  filter(f1 == 1)

# Average gas cost per model for perfect F1
avg_gas_cost <- perfect_f1 %>%
  group_by(model) %>%
  summarise(
    avg_gascost = mean(gas, na.rm = TRUE),
    n = n(),
    .groups = "drop"
  ) %>%
  arrange(avg_gascost)  # Sort

cat("\n--- Average Gas Cost (F1 = 1) ---\n")
print(avg_gas_cost)

# ===================================================
# SECTION 4: Combined Metrics per Model
# ===================================================

# ===================================================
# SECTION 4: Combined Metrics per Model
# ===================================================

# Compute percentage compiled per model
compiled_stats <- flat_data %>%
  group_by(model) %>%
  summarise(
    compiled_pct = mean(compiled, na.rm = TRUE) * 100,
    .groups = "drop"
  )

# Combine everything per model
combined_metrics <- flat_data %>%
  left_join(avg_usage, by = "name") %>%
  left_join(summary_stats, by = "name") %>%
  group_by(name) %>%
  summarise(
    avg_cost = mean(avg_cost, na.rm = TRUE),
    avg_total_tokens = mean(avg_total_tokens, na.rm = TRUE),
    avg_gascost = mean(gas, na.rm = TRUE),
    f1_macro = mean(f1_macro, na.rm = TRUE),
    accuracy = mean(accuracy, na.rm = TRUE),
    compiled_pct = mean(compiled, na.rm = TRUE) * 100,
    .groups = "drop"
  ) %>%
  arrange(desc(f1_macro))

cat("\n--- Combined Metrics per Model ---\n")
print(combined_metrics, width = Inf, row.names = FALSE, right = FALSE)
write.csv(combined_metrics, "combined_model_metrics.csv", row.names = FALSE)

# ===================================================
# SECTION 5: Correlation Between Gateways and F1 Score
# ===================================================

# Assumes meta_data contains columns: process, gateways (or similar)
# First, join f1 per process with meta_data
f1_vs_gateways <- flat_data %>%
  select(process, f1) %>%
  left_join(meta_data, by = "model")

# Plot F1 vs Gateway count
ggplot(f1_vs_gateways, aes(x = gateways, y = f1)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = TRUE, color = "blue") +
  labs(
    title = "Relation Between Number of Gateways and F1 Score",
    x = "Number of Gateways",
    y = "F1 Score"
  ) +
  theme_minimal()

# Optionally: save the plot
ggsave("f1_vs_gateways.png", width = 8, height = 5)

# ===================================================
# END OF SCRIPT
# ===================================================
