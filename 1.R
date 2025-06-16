# Install if not already installed
install.packages("DiagrammeR")

library(DiagrammeR)

# Create the diagram
grViz("
digraph human_hierarchy {
  graph [layout = dot, rankdir = TB]

  node [shape = box, style = filled, fillcolor = lightblue, fontname = Helvetica, fontsize = 14]

  Organism    [label = 'Organism (Human)']
  System      [label = 'Organ System (e.g., Nervous System)']
  Organ       [label = 'Organ (e.g., Brain)']
  Tissue      [label = 'Tissue (e.g., Nervous Tissue)']
  Cell        [label = 'Cell (e.g., Neuron)']
  Organelle   [label = 'Organelle (e.g., Nucleus)']
  Molecule    [label = 'Molecule (e.g., DNA)']
  Gene        [label = 'Gene (e.g., BRCA1)']

  Organism  -> System
  System    -> Organ
  Organ     -> Tissue
  Tissue    -> Cell
  Cell      -> Organelle
  Organelle -> Molecule
  Molecule  -> Gene
}
")
