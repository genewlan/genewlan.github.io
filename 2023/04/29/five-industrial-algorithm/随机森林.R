library(DiagrammeR)

grViz("
  digraph random_forest {
    # 定义节点
    node [shape = box]
    data_input [label = '输入数据']
    feature_sampling [label = '特征采样\n(randomly select m features)']
    bootstrap_sampling [label = '自助采样\n(randomly select n samples)']
    decision_trees [label = '构建决策树\n(rpart)']
    model_aggregation [label = '模型聚合\n(ensemble)']
    predict [label = '对测试集预测\n(predict)']

    # 定义边
    data_input -> feature_sampling
    feature_sampling -> bootstrap_sampling
    bootstrap_sampling -> decision_trees
    decision_trees -> model_aggregation
    model_aggregation -> predict

    # 特征采样详情
    subgraph feature_sampling_details {
      node [shape = box]
      feature_sampling -> mtry [label = 'mtry\n(选取的特征数)']
      feature_sampling -> sampling_type [label = '采样类型']
      sampling_type -> replacement [label = '有放回采样']
      sampling_type -> without_replacement [label = '无放回采样']
    }

    # 自助采样详情
    subgraph bootstrap_sampling_details {
      node [shape = box]
      bootstrap_sampling -> n [label = 'n\n(样本数)']
      bootstrap_sampling -> sampling_type [label = '采样类型']
      sampling_type -> replacement [label = '有放回采样']
      sampling_type -> without_replacement [label = '无放回采样']
    }

    # 构建决策树详情
    subgraph decision_trees_details {
      node [shape = box]
      decision_trees -> tree_algorithm [label = '选择算法']
      tree_algorithm -> ctree [label = '条件推理树']
      tree_algorithm -> rpart [label = '回归和分类树']
    }

    # 模型聚合详情
    subgraph model_aggregation_details {
      node [shape = box]
      model_aggregation -> aggregation_method [label = '聚合方法']
      aggregation_method -> bagging [label = 'Bagging']
      aggregation_method -> boosting [label = 'Boosting']
      aggregation_method -> stacking [label = 'Stacking']
    }

  }
")