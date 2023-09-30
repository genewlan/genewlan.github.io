library(DiagrammeR)

grViz("
  digraph machine_learning {
    # Define nodes
    node [shape = rectangle, style = 'rounded,filled', fontname = 'Helvetica', width = 1.5, height = 0.8]
    edge [color = '#666666', arrowhead = 'open', fontname = 'Helvetica']

    data_input [label = '输入数据', fillcolor = '#87CEEB']
    feature_engineering [label = '特征工程', fillcolor = '#FFDAB9']
    data_splitting [label = '数据划分', fillcolor = '#FFE4C4']
    model_training [label = '训练模型', fillcolor = '#FFFACD']
    model_evaluation [label = '模型评估', fillcolor = '#FACD32']
    model_tuning [label = '模型调优', fillcolor = '#E6E6FA']
    predict [label = '对测试集预测', fillcolor = '#008000']

    # Define edges
    data_input -> feature_engineering
    feature_engineering -> data_splitting
    data_splitting -> model_training
    model_training -> model_evaluation
    model_evaluation -> model_tuning
    model_tuning -> predict

    # Feature engineering details
    subgraph feature_engineering_details {
      node [shape = rectangle, style = 'rounded,filled', fontname = 'Helvetica', width = 1.5, height = 0.8]
      edge [color = '#666666', arrowhead = 'open', fontname = 'Helvetica']
      missing_values [label = '缺失值处理', fillcolor = '#FFA07A']
      imputation [label = '填充', fillcolor = '#F08080']
      deletion [label = '删除', fillcolor = '#F08080']
      feature_encoding [label = '特征编码', fillcolor = '#FFFF00']
      one_hot_encoding [label = '独热编码', fillcolor = '#FFDEAD']
      label_encoding [label = '标签编码', fillcolor = '#FFE4B5']
      feature_scaling [label = '特征缩放', fillcolor = '#FFFFC0']
      normalization [label = '归一化', fillcolor = '#FFF8DC']
      standardization [label = '标准化', fillcolor = '#FFF8DC']
      feature_engineering -> missing_values
      missing_values -> imputation [label = '填充']
      missing_values -> deletion [label = '删除']
      feature_engineering -> feature_encoding
      feature_encoding -> one_hot_encoding [label = '独热编码']
      feature_encoding -> label_encoding [label = '标签编码']
      feature_engineering -> feature_scaling
      feature_scaling -> normalization [label = '归一化']
      feature_scaling -> standardization [label = '标准化']
    }

    # Model training and evaluation details
    subgraph model_details {
      node [shape = rectangle, style = 'rounded,filled', fontname = 'Helvetica', width = 1.5, height = 0.8]
      edge [color = '#666666', arrowhead = 'open', fontname = 'Helvetica']
      algorithm_selection [label = '选择算法', fillcolor = '#BAE4C4']
      linear_regression [label = '线性回归', fillcolor = '#FFC0CB']
      logistic_regression [label = '逻辑回归', fillcolor = '#FFC0CB']
      decision_tree [label = '决策树', fillcolor = '#FFC0CB']
      random_forest [label = '随机森林', fillcolor = '#FFC0CB']
      xgboost [label = 'XGBoost', fillcolor = '#FFC0CB']
      naive_bayes [label = '朴素贝叶斯', fillcolor = '#FFC0CB']
      hyperparameter_tuning [label = '超参数调优', fillcolor = '#EF0AAA']
      metric_selection [label = '选择评估指标', fillcolor = '#9ACD32']
      accuracy [label = '准确率', fillcolor = '#C7B3E5']
      precision [label = '精确率', fillcolor = '#C7B3E5']
      recall [label = '召回率', fillcolor = '#C7B3E5']
      f1_score [label = 'F1分数', fillcolor = '#C7B3E5']
      model_training -> algorithm_selection
      algorithm_selection -> linear_regression [label = '线性回归']
      algorithm_selection -> logistic_regression [label = '逻辑回归']
      algorithm_selection -> decision_tree [label = '决策树']
      algorithm_selection -> random_forest [label = '随机森林']
      algorithm_selection -> xgboost [label = 'XGBoost']
      algorithm_selection -> naive_bayes [label = '朴素贝叶斯']
      model_training -> hyperparameter_tuning
      model_evaluation -> metric_selection
      metric_selection -> accuracy [label = '准确率']
      metric_selection -> precision [label = '精确率']
      metric_selection -> recall [label = '召回率']
      metric_selection -> f1_score [label = 'F1分数']
    }
  }
")