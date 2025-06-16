# Load necessary libraries
library(ggplot2)
library(dplyr)

# Create a double helix using sine waves
x <- seq(0, 10 * pi, length.out = 1000)

df <- data.frame(
  x = x,
  y1 = sin(x),
  y2 = -sin(x),
  ribbon_ymin = sin(x) - 0.2,
  ribbon_ymax = -sin(x) + 0.2
)

# Base plot with helix lines
p <- ggplot(df, aes(x = x)) +
  geom_line(aes(y = y1), color = "steelblue", size = 1.2) +
  geom_line(aes(y = y2), color = "darkorange", size = 1.2) +
  geom_ribbon(aes(ymin = ribbon_ymin, ymax = ribbon_ymax), fill = "grey80", alpha = 0.5) +
  labs(title = "DNA Structure",
       subtitle = "Visualizing the Double Helix and HGP Concept",
       x = NULL, y = NULL) +
  theme_minimal(base_size = 14) +
  theme(
    axis.text = element_blank(),
    axis.ticks = element_blank(),
    panel.grid = element_blank(),
    plot.title = element_text(face = "bold", size = 18, hjust = 0.5),
    plot.subtitle = element_text(size = 13, hjust = 0.5)
  ) +
   annotate("text", x = pi, y = 0.8, label = "A - T", size = 4, color = "blue") +
  annotate("text", x = 2*pi, y = -0.8, label = "C - G", size = 4, color = "red") +
  annotate("text", x = 9*pi, y = 0.8, label = "Genome Sequencing", size = 4, color = "darkgreen")

# Display the plot
print(p)
