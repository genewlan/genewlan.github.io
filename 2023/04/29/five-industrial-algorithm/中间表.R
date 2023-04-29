# 安装需要的包
if (!require("dplyr")) {
  install.packages("dplyr")
}

# 载入需要的包
library("dplyr")

# 输入文本
input_text <- "AdaIN->卷积神经网络->归一化层
AdaptiveLogSoftmax->多分类问题->输出层
AReLU->多层感知机->隐藏层
AReLU->多层感知机->输出层
AReLU->卷积神经网络->隐藏层
AReLU->深度前馈网络->隐藏层
AveragePooling->卷积神经网络->池化层
AverageUnpooling->卷积神经网络->反池化层
BatchNormalization->卷积神经网络->归一化层
BentIdentity->多层感知机->隐藏层
BentIdentity->多层感知机->输出层
BentIdentity->深度前馈网络->隐藏层
BentsCosine->深度前馈网络->隐藏层
Cosine->多层感知机->隐藏层
Cosine->多层感知机->输出层
Cosine->深度前馈网络->隐藏层
CReLU->多层感知机->隐藏层
CReLU->卷积神经网络->卷积层
CReLU->卷积神经网络->隐藏层
ELish->深度前馈网络->隐藏层
ELU->多层感知机->隐藏层
ELU->多层感知机->输出层
ELU->深度前馈网络->隐藏层
ELUs->多层感知机->隐藏层
ELUs->卷积神经网络->隐藏层
ESine->多层感知机->隐藏层
ESine->多层感知机->输出层
FractionalMaxPooling->卷积神经网络->池化层
GLU->卷积神经网络->隐藏层
Gaussian->径向基函数神经网络->隐藏层
Gaussian->多层感知机->隐藏层
Gaussian->多层感知机->输出层
GELUs->深度前馈网络->隐藏层
GELU->多层感知机->隐藏层
GELU->多层感知机->输出层
GELU->卷积神经网络->隐藏层
GELU->深度前馈网络->隐藏层
GlobalAveragePooling->卷积神经网络->池化层
GlobalL2Pooling->卷积神经网络->池化层
GlobalMaxPooling->卷积神经网络->池化层
GroupNormalization->卷积神经网络->归一化层
HardSigmoid->多层感知机->隐藏层
HardSigmoid->多层感知机->输出层
HardTanh->多层感知机->隐藏层
HardTanh->多层感知机->输出层
Hardshrink->稀疏自编码器->隐藏层
HardSwish->多层感知机->隐藏层
HardSwish->多层感知机->输出层
Hardswish->深度前馈网络->隐藏层
HardTanh->深度前馈网络->隐藏层
Hardtanh->生成对抗网络->隐藏层
Hardtanh->稀疏自编码器->隐藏层
Heaviside->单层感知机->输出层
Heaviside->多层感知机->输出层
InstanceNormalization->卷积神经网络->归一化层
InstanceAdaptiveNormalization->卷积神经网络->归一化层
InverseBentsCosine->深度前馈网络->隐藏层
InverseMultiquadratic->径向基函数神经网络->隐藏层
ISRU->深度前馈网络->隐藏层
IS->深度前馈网络->隐藏层
ISRLU->多层感知机->隐藏层
ISRLU->多层感知机->输出层
ISRLU->卷积神经网络->隐藏层
ISRLU->深度前馈网络->隐藏层
ISRU->多层感知机->隐藏层
ISRU->卷积神经网络->隐藏层
L2Pooling->卷积神经网络->池化层
LayerNormalization->卷积神经网络->归一化层
LeakyReLU->深度前馈网络->隐藏层
LeakyReLUN->深度前馈网络->隐藏层
LeakyReLU->多层感知机->隐藏层
LeakyReLU->多层感知机->输出层
LeakyReLU->卷积神经网络->隐藏层
Linear->自编码器->隐藏层
Linear->回归问题->输出层
Linear->回归问题->隐藏层
Linear->自编码器->输出层
LRN->卷积神经网络->归一化层
LogAF->深度前馈网络->隐藏层
LogSigmoid->深度前馈网络->隐藏层
LogSigmoid->深度前馈网络->输出层
LogSigmoid->逻辑回归->隐藏层
LogSigmoid->逻辑回归->输出层
LogSigmoid->循环神经网络->隐藏层
LogSigmoid->循环神经网络->输出层
LogSoftmax->多分类问题->输出层
LogSoftmax->稀疏自编码器->输出层
LogSoftmax->生成对抗网络->输出层
MaxPooling->卷积神经网络->池化层
Maxout->深度前馈网络->隐藏层
MaxUnpooling->卷积神经网络->反池化层
Mish->多层感知机->隐藏层
Mish->多层感知机->输出层
Mish->卷积神经网络->隐藏层
Mish->深度前馈网络->隐藏层
PReLU->多层感知机->隐藏层
PReLU->多层感知机->输出层
PReLU->卷积神经网络->隐藏层
PReLU->深度前馈网络->隐藏层
PReLUN->深度前馈网络->隐藏层
RBFN->径向基函数神经网络->隐藏层
RandomizedLeakyReLU->深度前馈网络->隐藏层
RandomizedLeakyReLUN->深度前馈网络->隐藏层
RandomizedPReLU->深度前馈网络->隐藏层
RandomizedPReLUN->深度前馈网络->隐藏层
RandomizedReLU->深度前馈网络->隐藏层
RandomizedReLUN->深度前馈网络->隐藏层
ReLU->卷积神经网络->卷积层
ReLU->对抗神经网络->生成器的隐藏层
ReLU->对抗神经网络->鉴别器的隐藏层
ReLU->多层感知机->隐藏层
ReLU->多层感知机->输出层
ReLU->卷积神经网络->隐藏层
ReLU->深度前馈网络->隐藏层
ReLU6->深度前馈网络->隐藏层
ReLUN->深度前馈网络->隐藏层
ReSQRT->多层感知机->隐藏层
ReSQRT->多层感知机->输出层
ReSQRT->卷积神经网络->隐藏层
RReLU->卷积神经网络->卷积层
SELU->深度前馈网络->隐藏层
SELU->循环神经网络->隐藏层
SELU->多层感知机->隐藏层
SELU->多层感知机->输出层
SELU->卷积神经网络->隐藏层
SHT->前馈神经网络->隐藏层
Sigmoid->长短时记忆网络->输入门
Sigmoid->长短时记忆网络->遗忘门
Sigmoid->长短时记忆网络->输出门
Sigmoid->单层感知机->输出层
Sigmoid->多层感知机->隐藏层
Sigmoid->多层感知机->输出层
Sigmoid->卷积神经网络->隐藏层
Sigmoid->循环神经网络->隐藏层
Sigmoid->卷积神经网络->输出层
Sigmoid->循环神经网络->输出层
Sigmoid->逻辑回归->输出层
Sigmoid->深度前馈网络->隐藏层
Sigmoid->逻辑回归->隐藏层
Sigmoid->深度前馈网络->输出层
SiLU->稀疏自编码器->隐藏层
SiLU->生成对抗网络->隐藏层
Sinc->深度前馈网络->隐藏层
Sine->多层感知机->隐藏层
Sine->多层感知机->输出层
Sine->深度前馈网络->隐藏层
SineReLU->转换网络->隐藏层
SinReLU->多层感知机->隐藏层
SinReLU->多层感知机->输出层
Sinusoid->多层感知机->隐藏层
Sinusoid->多层感知机->输出层
SoftClipping->深度前馈网络->隐藏层
SCAF->前馈神经网络->隐藏层
SoftReLU->前馈神经网络->隐藏层
SoftExponential->多层感知机->隐藏层
SoftExponential->多层感知机->输出层
SoftExponential->卷积神经网络->隐藏层
SoftExponential->深度前馈网络->隐藏层
Softmax->多分类问题->输出层
Softmax->稀疏自编码器->输出层
Softmax->生成对抗网络->输出层
Softmin->多分类问题->输出层
Softmin->稀疏自编码器->隐藏层
Softmin->生成对抗网络->隐藏层
Softplus->多层感知机->隐藏层
Softplus->多层感知机->输出层
Softplus->卷积神经网络->隐藏层
Softplus->深度前馈网络->隐藏层
Softshrink->深度前馈网络->隐藏层
Softsign->多层感知机->隐藏层
Softsign->多层感知机->输出层
Softsign->卷积神经网络->隐藏层
Softsign->深度前馈网络->隐藏层
Sparsemax->多分类问题->输出层
SpectralNormalization->卷积神经网络->归一化层
SQNL->多层感知机->隐藏层
SQNL->多层感知机->输出层
SQNL->卷积神经网络->隐藏层
SQNL->深度前馈网络->隐藏层
SQRBF->多层感知机->隐藏层
SQRBF->多层感知机->输出层
StochasticPooling->卷积神经网络->池化层
Swish->多层感知机->隐藏层
Swish->多层感知机->输出层
Swish->卷积神经网络->隐藏层
Swish->深度前馈网络->隐藏层
Swish1->深度前馈网络->隐藏层
Swish2->深度前馈网络->隐藏层
SwitchableNormalization->卷积神经网络->归一化层
SReLU->深度前馈网络->隐藏层
tanh->单层感知机->输出层
Tanh->多层感知机->隐藏层
Tanh->循环神经网络->隐藏层
Tanh->卷积神经网络->隐藏层
Tanh->卷积神经网络->输出层
Tanh->多层感知机->输出层
Tanh->循环神经网络->输出层
Tanh->深度前馈网络->隐藏层
Tanhshrink->深度前馈网络->隐藏层
ThL->自组织映射网络->隐藏层
ReLUth->深度前馈网络->隐藏层
TLUs->自组织映射网络->隐藏层
TReLU->深度前馈网络->隐藏层
Triangular->径向基函数神经网络->隐藏层
VHGPs->前馈神经网络->隐藏层
WeightNormalization->卷积神经网络->归一化层
StepFunction->多层感知机->输出层
StepFunction->单层感知机->输出层"

# 将文本转换为向量
lines <- strsplit(input_text, "\n")[[1]]
names <- sapply(lines, function(x) strsplit(x, "->")[[1]][1])
types <- sapply(lines, function(x) strsplit(x, "->")[[1]][2])

# 创建数据框
df <- data.frame(name = names, type = types)

# 构建 from 和 to 向量**********
# 对数据框按照 type 列进行分组，并为每个组内的行分配一个唯一的索引 idx
df_grouped <- group_by(df, type)  # 按照 type 列进行分组，返回分组后的数据框
df_grouped <- mutate(df_grouped, idx = row_number())  # 为每个组内的行分配一个唯一的索引 idx

# 取消分组并选择 idx 和 type 两列，去除重复的行，并为每个 type 分配一个唯一的起始节点 from
df_selected <- ungroup(df_grouped)  # 取消分组，返回取消分组后的数据框
df_selected <- select(df_selected, idx, type)  # 选择 idx 和 type 两列，返回包含这两列的数据框
df_selected <- distinct(df_selected)  # 去除重复的行，返回去重后的数据框
df_selected <- mutate(df_selected, from = seq_along(type))  # 为每个 type 分配一个唯一的起始节点 from

# 将原始数据框 df 与包含 idx 和 from 列的数据框进行内连接，并为每个名称分配一个唯一的终止节点 to
df_joined <- inner_join(df, df_selected, by = "type")  # 将原始数据框 df 与包含 idx 和 from 列的数据框进行内连接
df_joined <- mutate(df_joined, to = idx)  # 为每个名称分配一个唯一的终止节点 to

# 选择起始节点和终止节点，返回最终的数据框
df_final <- select(df_joined, from, to)  # 选择起始节点和终止节点，返回最终的数据框

# 输出结果
print(df_final)
from=c(df_final [,1])
to=c(df_final [,2])
