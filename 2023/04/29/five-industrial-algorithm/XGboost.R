library(DiagrammeR)

grViz("
  digraph xgboost {
    # 定义节点
    node [shape = box]
    data_input [label = '输入数据']
    boosting_rounds [label = '迭代轮数\n(set number of boosting rounds)']
    feature_sampling [label = '特征采样\n(randomly select m features)']
    tree_building [label = '构建决策树\n(build decision trees)']
    boosting [label = 'Boosting\n(update weights for misclassified samples)']
    predict [label = '对测试集预测\n(predict)']

    # 定义边
    data_input -> boosting_rounds
    boosting_rounds -> feature_sampling
    feature_sampling -> tree_building
    tree_building -> boosting
    boosting -> predict

    # 特征采样详情
    subgraph feature_sampling_details {
      node [shape = box]
      feature_sampling -> mtry [label = 'mtry\n(选取的特征数)']
      feature_sampling -> sampling_type [label = '采样类型']
      sampling_type -> replacement [label = '有放回采样']
      sampling_type -> without_replacement [label = '无放回采样']
    }

    # 构建决策树详情
    subgraph tree_building_details {
      node [shape = box]
      tree_building -> tree_algorithm [label = '选择算法']
      tree_algorithm -> exact [label = '精确算法']
      tree_algorithm -> approx [label = '近似算法']
    }

    # Boosting详情
    subgraph boosting_details {
      node [shape = box]
      boosting -> learning_rate [label = '学习率']
      boosting -> regularization [label = '正则化']
      regularization -> l1 [label = 'L1正则化']
      regularization -> l2 [label = 'L2正则化']
    }

  }
")