library(igraph)
library(ggraph)
library(ggplot2)

# Define nodes
nodes <- data.frame(
  name = c("Data Science", "Genomics", "Biostatistics", "Machine Learning", "Bioinformatics",
           "Mathematics", "Computer Science", "Ethics", "Healthcare", "AI", "Big Data", "Molecular Biology")
)

# Define edges (connections)
edges <- data.frame(
  from = c("Data Science", "Data Science", "Data Science", "Data Science", 
           "Genomics", "Genomics", "Genomics", "Genomics",
           "Bioinformatics", "Machine Learning", "Machine Learning", "Computer Science", "Healthcare"),
  to   = c("Genomics", "Machine Learning", "Big Data", "Bioinformatics",
           "Molecular Biology", "Bioinformatics", "Biostatistics", "Ethics",
           "Computer Science", "AI", "Biostatistics", "Mathematics", "Ethics")
)

# Create the graph object
g <- graph_from_data_frame(edges, vertices = nodes, directed = FALSE)

# Plot
set.seed(123)
ggraph(g, layout = "fr") +  # Force-directed layout
  geom_edge_link(aes(), edge_colour = "gray70") +
  geom_node_point(color = "#0072B2", size = 6) +
  geom_node_text(aes(label = name), repel = TRUE, size = 5) +
  theme_void() +
  ggtitle("Data Science + Genomics = Future of Medicine") +
  theme(plot.title = element_text(hjust = 0.5, size = 16, face = "bold"))
