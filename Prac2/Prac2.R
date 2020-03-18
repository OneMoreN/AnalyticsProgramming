library(ggplot2)

#----------------------Task 1------------------

n <- rnorm(20) # generate 20 random numbers from a normal distribution
n

#----------------------Task 2------------------

pos = length(which(n>0)) # get the amount of positive numbers
pos

neg = length(which(n<0)) # get the amount of negative numbers
neg

absn = abs(n) # absolute values to flip negative signs to positive
absn

cat('There are', pos, 'positive numbers and', neg, 
    'negative values in the vector\nHere\'s the vector after flipping the negative values:\n')
print(absn)

#----------------------Task 3------------------

bins <- cut(absn, c(0.03595731, 0.77318043, 1.51040356, 2.24762668), 
            labels = c('bin 1', 'bin 2', 'bin 3')) # create bins by cutting the values according to the borders
table(bins)

#----------------------Task 4------------------

matrix(absn, 3, 6) # fill a 3*6 matrix with the data, extra values are discarded

matrix(absn, 3, 6, byrow = TRUE) # fill a 3*6 matrix with the data by row, extra values are discarded

#----------------------Task 5------------------

head(cars) # the cars dataset
attach(cars) # attach dataset, no need to keep refering the dataset.

s <- lm(dist~speed) # getting the linear model for abline

f <- ggplot(cars, aes(speed, dist)) + geom_point() # using GGplot to plot the graph.
f + 
  labs(title ="Stopping distance vs travel speed", x = "Travel speed", 
       y = "Stopping distance") + 
  geom_abline(slope = s$coefficients[2], intercept = s$coefficients[1], 
              color = 'red')

# normal plotting
plot(speed, dist, main = "Stopping distance vs travel speed", xlab = 'Travel speed', ylab = 'Stopping distance')
# create plot graph

abline(lm(dist~speed), col = 2) # add linear line

legend('topleft', legend = c('Observations', 'Model'), col = c('black', 'red'), 
       lty = c(0, 1), pch = c(1, NA))
# add the legend

detach(cars)
