library(DiagrammeR)

# Define nodes
nodes <- create_node_df(
  n = 9, 
  label = c("AdaIN", "Convolutional\nNeural Network", "Normalization", 
            "Adaptive\nLogSoftmax", "Output Layer", "AReLU", 
            "Deep Feedforward\nNeural Network", "Pooling Layer",
            "Unpooling Layer", "Bent Identity")
)

# Define edges
edges <- create_edge_df(
  from = c(1, 2, 3, 4, 6, 6, 6, 8, 9),
  to = c(2, 3, 3, 5, 5, 2, 7, 8, 2)
)

# Create graph
graph <- create_graph(nodes_df = nodes, edges_df = edges)

# Render graph
render_graph(graph)