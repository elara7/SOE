set.seed(12450)
y <- rnorm(100)
n <- length(y)
plot(0,1,xlim = c(1,n), ylim = c(-10 , 10),type = "n" )
plot(1:n,y,xlim = c(1,n),ylim = c(-10,10),)
for (i in 1:200) {
        abline()
}
plot(0, 1 ,xlim = c(0, 200), ylim = c(3.5,6.5), type = "n")

m <- data.frame(x=c(1:n),y)
library(ggplot2)
library(animation)
windows(7,7)
oopt <- ani.options(interval=0.1)
m <- data.frame(x=c(1:length(y)),y=y)
p <- ggplot(data = m ,mapping = aes(x=x,y=y))
for (i in 1:100) {
m1 <- data.frame(x=c(1:i),y=y[1:i])
p+geom_point(data = m1)
print(p)
ani.pause()
}
ani.options(oopt)