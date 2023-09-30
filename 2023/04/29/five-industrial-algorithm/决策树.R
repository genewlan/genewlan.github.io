library(DiagrammeR)

grViz("
  digraph decision_tree {
    # 定义节点
    node [shape = box]
    data_input [label = '输入数据']
    feature_selection [label = '特征选择\n(select a feature to split data)']
    data_split [label = '数据分割\n(split data into subsets based on selected feature)']
    tree_node [label = '构建决策树\n(recursively split data into subsets)']
    predict [label = '对测试集预测\n(predict)']

    # 定义边
    data_input -> feature_selection
    feature_selection -> data_split
    data_split -> tree_node
    tree_node -> predict

    # 特征选择详情
    subgraph feature_selection_details {
      node [shape = box]
      feature_selection -> feature_evaluation [label = '特征评估']
      feature_evaluation -> information_gain [label = '信息增益']
      feature_evaluation -> gain_ratio [label = '增益比']
      feature_evaluation -> gini_index [label = 'Gini指数']
    }

    # 数据分割详情
    subgraph data_split_details {
      node [shape = box]
      data_split -> split_criteria [label = '选择分割标准']
      split_criteria -> binary_split [label = '二分法分割']
      split_criteria -> multiway_split [label = '多分法分割']
    }

    # 构建决策树详情
    subgraph tree_node_details {
      node [shape = box]
      tree_node -> stopping_criteria [label = '选择停止标准']
      stopping_criteria -> max_depth [label = '最大深度']
      stopping_criteria -> min_samples_split [label = '最小样本数']
      stopping_criteria -> min_samples_leaf [label = '最小叶节点样本数']
    }

  }
")