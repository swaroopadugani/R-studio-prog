#loading ggplot
library(ggplot2)


#exploring mtcars
str(mtcars)
mtcars

ggplot(mtcars, aes(x = wt, y = mpg, color = disp, size = disp))+ 
  geom_point() + geom_smooth()

ggplot(mtcars, aes(x= wt, y = mpg, color = disp))+
  geom_point(alpha = 0.4)+      #makes the points 40% transparent
  geom_smooth()

#Diamonds

Mispriced.Diamonds


ggplot(Mispriced.Diamonds, aes(x = carat, y = price)) +
  geom_point() +
  geom_smooth()

ggplot(diamonds, aes(x = carat, y = price, color=clarity)) +
  geom_point(alpha = 0.4) + #makes the points 40% transparent
  geom_smooth()

# Create the object containing the data and aes layers: dia_plot
dia_plot<- ggplot(diamonds, aes(x = carat, y = price))

#add points to the graph                    
dia_plot + geom_point() 

#aesthetics can be defined inside geompoints
dia_plot + geom_point(aes(color=clarity, alpha = 0.4))


"se=false displays confidence interval around smooth set to true by default 
and aesthetics can be defined inside geomsmooth"
dia_plot + geom_smooth(aes(color=clarity), se = F) 
  