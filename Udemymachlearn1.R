library(ggplot2)
x <- c(2,5,1,4,15,6)
y <- c(6,4,9,13,12,1)

df <- data.frame(x,y)
ggplot()+geom_point(data=df, aes(x=x,y=y), size=2, color="red")+
  scale_x_continuous(limits=c(0,15), breaks = seq(0,15,1))+
  scale_y_continuous(limits=c(0,15), breaks = seq(0,15,1))
