library(ggplot2)
x <- c(2,5,1,4,15,6)
y <- c(6,4,9,13,12,1)

df <- data.frame(x,y)

#geom_point
ggplot()+geom_point(data=df, aes(x=x,y=y), size=2, color="darkblue", shape=3)+
  scale_x_continuous(limits=c(0,15), breaks = seq(0,15,1))+
  scale_y_continuous(limits=c(0,15), breaks = seq(0,15,1))

#geom_line
ggplot()+geom_line(data=df, aes(x=x,y=y), size=2, color="darkblue", shape=3)+
  scale_x_continuous(limits=c(0,15), breaks = seq(0,15,1))+
  scale_y_continuous(limits=c(0,15), breaks = seq(0,15,1))




#################################################################################################

#line graph of y=3x+1 (upward slope)
x <- c(0,10)
y <- 3*x+1
df <- data.frame(x,y)
ggplot()+geom_line(data=df, aes(x=x,y=y))

#line graph of y=-5x-7 (downward slope)
x <- c(0,10)
y <- -5*x-7
df <- data.frame(x,y)
ggplot()+geom_line(data=df, aes(x=x,y=y))

#line graph of y=.5x-.73 (small slope)
x <- c(0,10)
y <- .5*x-.73
df <- data.frame(x,y)
ggplot()+geom_line(data=df, aes(x=x,y=y))



#################################################################################################
sample(1:100, 1, replace = TRUE)
rnorm(100, 50, 10)

x <- rep(1,100)
y <- rnorm(100, 50, 10)
df <- data.frame(x,y)
df
mean <- data.frame(x,y)
x <- 1
y <- 50

ggplot()+geom_point(data=df, aes(x=x, y=y))+
geom_point(data=mean, aes(x=x, y=y), size=2, color="red")


#################################################################################################
library(ggplot2)
library(Hmisc)
x <- c(rep(1,100),rep(9,100), rep(15,100))
y <- c(rnorm(100,50,10), rnorm(100,30,10), rnorm(100,78,10))
df <- data.frame(x,y)

x <- c(1,9,15)
y <- c(50,30,78)
means <- data.frame(x,y)

ggplot()+
  geom_point(data=df, aes(x=x, y=y))+
  geom_point(data=means, aes(x=x, y=y), size=4, color="red")



































