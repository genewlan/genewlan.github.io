library(DiagrammeR)

grViz("
  digraph logistic_regression {
    # 定义节点
    node [shape = box]
    data_input [label = '输入数据']
    feature_scaling [label = '特征缩放\n(scale/center)']
    model_fit [label = '拟合模型\n(glm)']
    predict [label = '对测试集预测\n(predict)']

    # 定义边
    data_input -> feature_scaling
    feature_scaling -> model_fit
    model_fit -> predict

    # 特征缩放详情
    subgraph scaling_details {
      node [shape = box]
      feature_scaling -> scale [label = 'scale\n(缩放)']
      feature_scaling -> center [label = 'center\n(中心化)']
    }

    # 拟合模型详情
    subgraph model_fit_details {
      node [shape = box]
      model_fit -> optimization_algorithm [label = '选择优化算法']
      optimization_algorithm -> gradient_descent [label = '梯度下降法']
      optimization_algorithm -> fisher_scoring [label = 'Fisher Scoring']

      model_fit -> loss_function [label = '选择损失函数']
      loss_function -> binary_cross_entropy [label = '二元交叉熵']
      loss_function -> logistic_loss [label = '对数损失']
    }

    # 对测试集预测详情
    subgraph predict_details {
      node [shape = box]
      predict -> decision_boundary [label = '决策边界']
      decision_boundary -> probability [label = '预测概率']
    }
  }
")