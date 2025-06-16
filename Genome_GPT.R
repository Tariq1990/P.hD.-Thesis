# Install necessary packages
install.packages("ggplot2")
install.packages("ggforce")

# Load libraries
library(ggplot2)
library(ggforce)

# Create a data frame for rectangles
blocks <- data.frame(
  x = c(3, 1, 5),   # X-coordinates
  y = c(3, 3, 3),   # Y-coordinates
  label = c("GenomeGPT\nChatbot\n(Predicts diseases)", 
            "User\n(Queries & Inputs)", 
            "Multi-omics\nData\n(NCBI, GenBank)"),
  color = c("lightblue", "gray", "red")
)

# Create arrows data frame
arrows <- data.frame(
  x = c(2, 4), y = c(3, 3),   # Start points
  xend = c(3, 3), yend = c(3, 3)  # End points
)

# Plot the block diagram
ggplot() +
  geom_rect(data = blocks, 
            aes(xmin = x - 1, xmax = x + 1, ymin = y - 1, ymax = y + 1, fill = color), 
            color = "black", alpha = 0.6) +
  geom_text(data = blocks, aes(x = x, y = y, label = label), size = 5) +
  geom_segment(data = arrows, aes(x = x, y = y, xend = xend, yend = yend),
               arrow = arrow(type = "closed"), size = 1) +
  scale_fill_identity() +
  theme_void()
