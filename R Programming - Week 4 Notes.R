#R Programming Week 4 Notes

#str function 
#use any time you have an r object and do not know what is there

str(str)
str(lm)
str(ls)

x <- rnorm(100, 2, 4)
summary(x)
str(x)

f <- gl(40,10)
str(f)
summary(f)

library(datasets)
head(airquality)
str(airquality)

m <- matrix(rnorm(100), 10, 10)
str(m)

m[,1]

s <- split(airquality, airquality$Month)
str(s)

#simulation

#rnorm: generate normal variates with given m and sd
#dnorm: evaluate normal probability density (with given m and sd) at a point or vector of points
#pnorm: evaluate the cum distr. function for a normal distr
#rpois: generate random pois variables with a given rate

#generating random numbers
#d = density
#r = random number generation
#p = cum distr
#q = quantile function

dnorm(x, mean = 0, sd = 1, log = FALSE)
pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
rnorm(n, mean = 0, sd = 1)

x <- rnorm(10)
x

x <- rnorm(10,20,2)
x
summary(x)

set.seed(1)
rnorm(5)
rnorm(5)
set.seed(1)
rnorm(5)
#always set the random number seed when conducting a simulation

#Generating Poisson data

rpois(10,1)
rpois(10,2)
rpois(10,20)

#Cumulative distribution
#prob that a poisson variable is <= 2 when the rate is 2
ppois(2,2)
ppois(4,2)
ppois(6,2)

#Simulating a linear model

#generating random numbers from a linear model

set.seed(20)
x <- rnorm(100)
e <- rnorm(100,0,2)
y <- .5 +2 *x + e

summary(y)
plot(x,y)

#x is binary

set.seed(10)
x <- rbinom(100,1,.5)
e <- rnorm(100,0,2)
y <- .5 +2*x +e
summary(y)
plot(x,y)

#poisson model

set.seed(1)
x <- rnorm(100)
log.mu <- .5 + .3 *x
y <- rpois(100, exp(log.mu))
summary(y)
plot(x,y)

#random sampling

set.seed(1)
sample(1:10, 4)
sample(1:10, 4)
sample(letters, 5)
sample(1:10)
sample(1:10)
sample(1:10, replace = TRUE) #sample w/replacement


# R Profiler

#helpful for large programs and/or data analysis
#figure out why things are taking a lot of time
#examine how much time is being spent in different parts of a program

#using system.time()

#evaluates arbitrary R expression and returns the amount of time to evaluate the expression

system.time(readLines("http://www.jhsph.edu"))

#using Rprof()

#used to start profiler in R
#summaryRprof() summarizes output from Rprof()
#keeps track of the function call stack at regularly sampled intervals and tabulates how much time is psent in each function

#summaryRprof()
#tablulates r profiler output and calculates how much time is spent in which function
# two methods to normalize data: by.total, by.self





