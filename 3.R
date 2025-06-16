# Install and load required packages
library(VennDiagram)

# Define the Venn diagram
venn.plot <- draw.triple.venn(
  area1 = 100, area2 = 100, area3 = 100, # Sizes of circles
  n12 = 50, n23 = 50, n13 = 50, # Overlapping regions
  n123 = 30, # Center overlap
  category = c("Maths", "CS", "Domain Expertise"),
  fill = c("orange", "lightblue", "red"),
  alpha = 0.5,
  cat.col = c("orange", "blue", "red"),
  cat.cex = 1.5,
  cex = 1.5,
  label.col = "black"
)

# Save the diagram to a file
png("venn_diagram.png")
grid.draw(venn.plot)
dev.off()
