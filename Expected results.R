# Install and load necessary libraries
library(DiagrammeR)

# Define the graph using DiagrammeR syntax with magnified text and controlled block size
graph <- grViz("
  digraph genomeGPT_outcomes_utilization {
    
    # Node Definitions with larger text and adjusted block size
    node [fontname = 'Helvetica', shape = 'rectangle', style = 'filled', fillcolor = 'lightblue', fontsize = 16, width = 3]
    
    # Define Outcomes Nodes
    GenomeGPT [label = 'GenomeGPT: Predictive Model for Early-Stage Diabetes Detection']
    Chatbot_Interface [label = 'Chatbot Interface for Real-Time Predictions']
    Scalable_Framework [label = 'Scalable Framework for Predicting Other Diseases']
    
    # Define Utilization Nodes
    Healthcare [label = 'Healthcare: Personalized Treatment Plans & Early Interventions']
    Public_Health [label = 'Public Health: Resource Allocation & Prevention Programs']
    Industry [label = 'Industry: Commercialization as Diagnostic Tool']
    
    # Edge Definitions (Flow of Outcomes to Utilization)
    GenomeGPT -> Healthcare [label = 'Drives']
    GenomeGPT -> Public_Health [label = 'Informs']
    GenomeGPT -> Industry [label = 'Commercializes']
    Chatbot_Interface -> Healthcare [label = 'Enhances']
    Scalable_Framework -> Public_Health [label = 'Supports']
    Scalable_Framework -> Industry [label = 'Expands Market Reach']
  }
")

# Render the graph
print(graph)

