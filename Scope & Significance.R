# Install and load necessary libraries
library(DiagrammeR)

# Define the graph using DiagrammeR syntax
graph <- grViz("
  digraph disease_detection_framework {
    
    # Node Definitions
    node [fontname = 'Helvetica', shape = 'rectangle', style = 'filled', fillcolor = 'lightblue']
    
    # Define nodes
    RAG [label = 'RAG (Retrieval-Augmented Generation)']
    Multiscale_Transformers [label = 'Multiscale Transformers']
    Early_Detection [label = 'Early Disease Detection']
    Sequence_Alteration [label = 'Sequence Alteration Detection']
    Hallucination [label = 'Hallucination Detection']
    Commercial_Potential [label = 'Commercial Potential for Diagnostics']
    Socioeconomic_Burden [label = 'Reducing Socioeconomic Burden of Diabetes']
    
    # Edge Definitions (Flow)
    RAG -> Early_Detection [label = 'Informs']
    Multiscale_Transformers -> Early_Detection [label = 'Enhances']
    Early_Detection -> Sequence_Alteration [label = 'Detects']
    Early_Detection -> Hallucination [label = 'Detects']
    Sequence_Alteration -> Commercial_Potential [label = 'Supports']
    Hallucination -> Commercial_Potential [label = 'Supports']
    Commercial_Potential -> Socioeconomic_Burden [label = 'Reduces']
  }
")

# Render the graph
print(graph)
