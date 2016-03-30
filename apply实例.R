#apply####################################
#用apply求矩阵行列和,apply只对矩阵有用。向量不行
x <- matrix(1:24,nrow=4) 
x
#把x的每一个第i维度(行)带入fun中，全部返回到y，如行求和
#y <- apply(x, i, fun) 
rowSums = apply(x, 1, sum) 
rowMeans = apply(x, 1, mean) 
colSums = apply(x, 2, sum) 
colMeans = apply(x, 2, mean)
x <- matrix(rnorm(200), 20, 10)
apply(x, 1, quantile, probs = c(0.25, 0.75))
a <- array(rnorm(2 * 2 * 10), c(2, 2, 10)) 
apply(a, c(1, 2), mean)
rowMeans(a, dims = 2)

#mapply######################################
#mapply(fun（x，y），x的取值范围，y的取值范围)。xy会匹配使用
list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))
mapply(rep, 1:4, 4:1)
noise <- function(n, mean, sd) rnorm(n, mean, sd) 
noise(5,1,2)#生成一个随机数n是分位数
noise(1:5,1:5,2)#观察数为数字n或者n向量长度，均值范围，方差范围

mapply(noise, 1:5, 1:5, 2)#（1，1，2）（2，2，2）。。。。相当于下一行的
list(noise(1, 1, 2), noise(2, 2, 2), noise(3, 3, 2), noise(4, 4, 2), noise(5, 5, 2))

#lapply######################################
#1
#形成一个list，其中的a=1，2，3，4，5，b=10个正太随机
x <- list(a = 1:5, b = rnorm(10)) 
#对list的每一个item使用fun.apply不能对list元素起作用
lapply(x, mean)

x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5)) 
lapply(x, mean)
#2生成1，2，3，4个0-1的均匀分布，对向量起作用，apply不能用
x <- 1:4 
lapply(x, runif)
#生成1，2，3，4个0-10均匀分布
lapply(x, runif, min = 0, max = 10)

#3
x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2)) 
x
#取出2个item中的第一列
lapply(x, function(elt) elt[,1])


