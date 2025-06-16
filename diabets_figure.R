# Load required library
library(ggplot2)

# Create a data frame for diabetes projections
data <- data.frame(
  Year = c(2021, 2030),
  Cases = c(530, 643) # Number of adults with diabetes (millions)
)

# Create the bar plot with updated y-axis range
p <- ggplot(data, aes(x = factor(Year), y = Cases)) +
  geom_bar(stat = "identity", fill = "steelblue", width = 0.6, alpha = 0.8) +
  geom_text(aes(label = paste0(Cases, "M")), vjust = -0.5, fontface = "bold", size = 5) +
  labs(
    title = "Global Diabetes Cases Projections (IDF, 2021)",
    x = "Year",
    y = "Number of Adults with Diabetes (Millions)"
  ) +
  ylim(0, 800) +  # Increase y-axis range to 800
  theme_minimal(base_size = 14) +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5)
  )

# Display the plot
print(p)
