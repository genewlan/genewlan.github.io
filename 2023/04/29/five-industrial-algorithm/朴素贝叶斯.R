library(DiagrammeR)

grViz("
  digraph naive_bayes {
    # 定义节点
    node [shape = box]
    data_input [label = '输入数据']
    feature_extraction [label = '特征提取\n(convert text to numerical features)']
    feature_selection [label = '特征选择\n(select a subset of features)']
    training [label = '训练模型\n(train a Naive Bayes classifier)']
    predict [label = '对测试集预测\n(predict)']

    # 定义边
    data_input -> feature_extraction
    feature_extraction -> feature_selection
    feature_selection -> training
    training -> predict

    # 特征提取详情
    subgraph feature_extraction_details {
      node [shape = box]
      feature_extraction -> tokenization [label = '分词']
      feature_extraction -> stopword_removal [label = '去除停用词']
      feature_extraction -> stemming [label = '词干化']
      feature_extraction -> vectorization [label = '向量化']
    }

    # 特征选择详情
    subgraph feature_selection_details {
      node [shape = box]
      feature_selection -> feature_evaluation [label = '特征评估']
      feature_evaluation -> chi_squared [label = '卡方检验']
      feature_evaluation -> mutual_information [label = '互信息']
    }

  }
")