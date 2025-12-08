# Penguins Data Analysis Script
# This script displays the Palmer Penguins dataset and creates a time series visualization

# Load required libraries
library(palmerpenguins)
library(ggplot2)
library(dplyr)

# Display the penguins data table
cat("Palmer Penguins Dataset:\n")
cat("========================\n\n")
print(penguins)

# Display summary statistics
cat("\n\nSummary Statistics:\n")
cat("===================\n")
print(summary(penguins))

# Create a time series plot
# We'll plot the count of penguins observed per year by species
penguins_ts <- penguins %>%
  filter(!is.na(year)) %>%
  group_by(year, species) %>%
  summarise(count = n(), .groups = "drop")

# Create the time series plot
ts_plot <- ggplot(penguins_ts, aes(x = year, y = count, color = species, group = species)) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 3) +
  labs(
    title = "Penguin Observations Over Time",
    subtitle = "Count of penguins observed by species (2007-2009)",
    x = "Year",
    y = "Number of Penguins Observed",
    color = "Species"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 12),
    legend.position = "bottom"
  ) +
  scale_x_continuous(breaks = unique(penguins_ts$year))

# Display the plot
print(ts_plot)

# Save the plot
ggsave("penguins_timeseries.png", plot = ts_plot, width = 10, height = 6, dpi = 300)
cat("\n\nPlot saved as 'penguins_timeseries.png'\n")
