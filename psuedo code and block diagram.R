library(DiagrammeR)

# Create a graph for the pseudocode
graph <- grViz("
  digraph pseudocode {
    
    # Node Definitions (steps in pseudocode)
    node [fontname = 'Helvetica', shape = 'box', style = 'filled', fillcolor = 'lightyellow']
    
    Start [label = 'Start']
    Input_Gene [label = 'Input gene & Enterprise Data']
    Call_API [label = 'Train Model & Call OpenAI']
    Generate_Response [label = 'Generate response (Is it Diabetes?)']
    Yes_Response [label = 'Response = Yes: It is Diabetes']
    No_Response [label = 'Response = No: It is not Diabetes']
    End [label = 'End']
    
    # Edge Definitions (steps flow)
    Start -> Input_Gene -> Call_API -> Generate_Response
    Generate_Response -> Yes_Response [label = 'Yes']
    Generate_Response -> No_Response [label = 'No']
    Yes_Response -> End
    No_Response -> End
  }
")

# Render the graph
print(graph)
