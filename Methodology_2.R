library(ggplot2)
library(ggimage)
library(cowplot)

# Define positions for each element
data <- data.frame(
  label = c("Prompt", "Enterprise Data", "LLM", "Response", "LLM Global Knowledge"),
  x = c(1, 2, 2, 3, 2),
  y = c(1, 2, 1.5, 1, 1),
  image = c(
    "https://img.icons8.com/ios-filled/50/000000/speech-bubble-with-dots.png",
    "https://img.icons8.com/ios-filled/50/000000/database.png",
    "https://img.icons8.com/ios-filled/50/000000/artificial-intelligence.png",
    "https://img.icons8.com/ios-filled/50/000000/reply.png",
    "https://img.icons8.com/ios-filled/50/000000/globe.png"
  )
)

# Plot the diagram
p <- ggplot() +
  geom_image(data = data, aes(x = x, y = y, image = image), size = 0.2) +
  geom_text(data = data, aes(x = x, y = y - 0.15, label = label), size = 2.5, fontface = "bold") +
  geom_segment(aes(x = 1.2, xend = 1.8, y = 1, yend = 1), arrow = arrow(type = "closed"), size = 1) +
  geom_segment(aes(x = 2.2, xend = 2.8, y = 1, yend = 1), arrow = arrow(type = "closed"), size = 1) +
  geom_segment(aes(x = 2, xend = 2, y = 2.1, yend = 1.7), arrow = arrow(type = "closed"), size = 1) +
  geom_segment(aes(x = 2, xend = 2, y = 1.3, yend = 1.1), arrow = arrow(type = "closed"), size = 1) +
  theme_void()

# Save the plot
ggsave("llm_flowchart.png", plot = p, width = 6, height = 4, dpi = 300)

# Show the plot
print(p)
