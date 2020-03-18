setwd("C:/Users/chris/Dropbox/UWS/2020 Sem 1/Analytics Programming/Prac/1")

#--------------------------Task 4-----------------------------

1+1
sqrt(2)
print('Hello, World!')

#--------------------------Task 5-----------------------------

x <- 1
y <- 2
z <- x+y
ls() # list objects
rm(x) # removes object from environment
ls() 
help(ls)
help.start()

ls
ls <- 1 # ls now contains the number 1
ls
ls()
# assigning a value to ls didn't change the function

getwd()
save.image(file="test.RData") # saves current working environment.
history() # shows a list of commands used

i <- 41
rm(list=ls()) # removes entire list of objects from the current environment
ls()
load(file='test.RData') # loads the saved environment.
ls()


#--------------------------Task 6-----------------------------

x <- seq(0,200,5) # every value from 0-200 incrementing by 5
print(paste('x is a vector of length',length(x))) # printing out the number of values in x
x

plot(1:length(x),x,main="Plot of vector x", xlab='Index', ylab='Values of elements in x',col=1)
# plot the values in x.

print(paste('The 10th element in x is',x[10]))
# printing out the 10th position in x

cat('The first 5 elements in x are',x[1:5])
# first 5 positions of x

cat('The 5th, 7th, and 10th elements in x are',x[c(5,7,10)])
# prints out a set of numbers from x

x1 <- x[1:4] # x1 assigned first 4 elements of x
x2 <- x[(length(x)-3):length(x)] # x2 assigned the last 4 elements of x
x1
x1[-1] # prints x1 without the first element
x2
x1 + x2 # adds the values on each position in x1 to the corresponding position in x2
-x1 # display negative values
x1 * x2 # multiplies the values on each position in x1 to the corresponding position in x2
any(x1>5) # True if any values in x1 are greater than 5
which(x1>5) # returns the elements which are greater than 5
x1[which(x1>5)]
x1[1] <- NA # replace the first element with NA
x1
which(is.na(x1)) # which element is NA
x1[-which(is.na(x1))] # return list where the NA values are removed
all(x2<200) # True if all elements of x2 are less than 200
x1 <- x1[-1]
x1
x1-5
x1*-1
sum(x1)
rep(1,length(x2))

### Task

randValues <- runif(10) # get 10 random values 
cat("My vector is: ", randValues) 

print(paste("Sum of samples: ", sum(randValues))) # sum of the values

print(paste("Mean of samples: ", mean(randValues))) # mean of values

print(paste("Mean of samples no less than 0.5: ", mean(randValues[which(randValues>=0.5)])))

print(paste("Mean of samples less than 0.5: ", mean(randValues[which(randValues<0.5)])))

plot(1:length(randValues),randValues,main="Plot of vector randValues", xlab='Index', 
     ylab='Values of elements in randValues',col=2)

abline(mean(randValues),0)

library(swirl)

swirl()
