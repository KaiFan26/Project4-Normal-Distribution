##### R Project 4: Normal Distribution
##### Name: Hanel Vujic
##### Version Number: 5


#############################
###### PART 1 ###############
###### GRAPH  ###############
#############################

## DENSITY FUNCTION
## C1: Create x-values - code

xvalues_part1 <- seq(-3.7, 3.7, by = 0.01)
tempX <- seq(-1, 1, by = 0.01)
tempX
xvalues_part1


## C2: Create y-values - code

yvalues_part1 <- dnorm(xvalues_part1, mean = 0, sd = 1)
yvalues_part1


## C3: Create Plot - code
## Remember to save your plot and also submit it to Gradescope.

plot(x = xvalues_part1, y = yvalues_part1, type = "l", col = "paleturquoise3", main = "Standard Normal Probability Density Function (PDF)", xlab = "Variable", ylab = "Density", lty = 1)



#############################
###### PART 1 ###############
###### QUESTIONS  ###########
#############################

## Question 4: Largest approximate y value
# Answer: The approxximate largest y value from this Normal Density function seems to be between 0.38 to 0.4


## Question 5: Why stop at the x-values from C1 instead of something like -1 and +1?
# Answer: After testing it out by making a temporary vector tempX and subsituting it into dnorm for the y values and
# the plot() function parameters, I noticed it makes a rounder curve and not necessarily inwards lime out -3.7 to 3.7 x-value curve.
# Our y-axus label also starts at 0.25  rather than 0.1 like in the one we have, which kind of makes a jump
# and withholds information.The fact that this is also a standard normal distribution also probability
# played a part in wanting to expand our values instead of the default -1 to 1.





## Question 6: When calculating a probability, how would this be represented on the graph?
# Answer: If I wanted to calculate a probability' I'd probability use the concept of z-values that we've
# learned to be able to shade certain portions and use our z-chart in order to find the most likely
# value in the end.





## Question 7: Standard Normal Questions
## a) What is the mean and variance of the standard normal distribution?
## Mean = 0
## Variance = 1


## b) What random variable abbreviation do we usually use to represent the standard normal distribution?
## Answer: N


## c) Based on graph in Part 1, what do the values on the horizontal axis represent?
## Answer: They help represent how many standard deviations we are from the mean, as well
## as helping us find out our z-scores.






#############################
###### PART 2 ###############
###### GRAPH  ###############
#############################

## CUMULATIVE DISTRIBUTION FUNCTION
## X ~ N(mean = 480; variance = 529) (see PDF for mean and variance values)
meanPart2 <- 480
variance <- 529
standDev <- sqrt(variance)


## C8: Create x-values - code

xvalues_part2 <- seq(410, 550, by = 7)
xvalues_part2

## C9: Create y-values - code
yvalues_part2 <- pnorm(xvalues_part2, meanPart2, standDev)
yvalues_part2


## C10: Create Plot - code

plot(x = xvalues_part2, y = yvalues_part2, type = "l", lty = 1, col = "tomato2", main = "Normal CDF", xlab = "x-values", ylab = "P(X <= x): Cumulative Probability")

## C11: Cumulative Probabilities - code

cumulative_probabilities <- c(0.17, 0.36, 0.50, 0.64, 0.83)



## C12: Find x-values associated with cumulative probabilities - code

quantile_for_k <- qnorm(cumulative_probabilities, mean = meanPart2, sd = standDev, lower.tail = TRUE)
quantile_for_k


## C13: Overlay points on plot - code

points(x = quantile_for_k, y = cumulative_probabilities, lty = 1, bg = "lavenderblush3", pch = 24) #main = "Normal CDF", xlab = "x-values", ylab = "P(X <= x): Cumulative Probability", text(x = quantile_for_k, y = cumulative_probabilities, labels = paste("(", round(quantile_for_k,2), ", ", cumulative_probabilities,")", sep = ""), pos = 4))

#text(x = quantile_for_k, y = cumulative_probabilities, labels = paste("(", round(quantile_for_k,2), ", ", cumulative_probabilities,")", sep = ""), pos = 4)


## C14: Add text at each point - code
## Remember to save your plot and also submit it to Gradescope.  <- this is the only plot from Part 2 you need to submit.

text(x = quantile_for_k, y = cumulative_probabilities, labels = paste("(", round(quantile_for_k,2), ", ", cumulative_probabilities,")", sep = ""), pos = 4)





#############################
###### PART 2 ###############
###### QUESTIONS  ###########
#############################

## Question 15: What do the y-values approach as x goes to +/- infinity?
# As x goes towards -infinity: 
# (ANSWER): The y-values approach 0 and the line flattens out.

# As x goes towards +infinity: 
#(ANSWER): The y-values approach 1 and it flattens out from there.

## Question 16: Pick one of the points on your graph from Part 2.  Write a probability statement involving the $x$- and $y$- coordinate values that describes how they relate to each other. Do not use the value corresponding to y = 0.5.

# Point you will use: 

# I will use the point (458.05, 0.17).

# Probability Statement: 

# P(X < 458.05) = 0.17



## Question 17: Create and solve your own probability problem.
## Must be of the form where you solve for a particular value, given the probability.
## Do not use any of the points from Q16.
## Do not use the mean value.
## Include your code and your final answer.
## Do NOT use a table or your calculator.

# Question: NOTE: Use your mean of 480 and variance of 529, make up your own x value.

# (ANSWER) Given your mean of 480 and variance of 529, find the probability of 
# the output given P(X <= k) = 0.075 


# Code:

qnorm(0.075, mean = 480, sd = standDev, lower.tail = T)

# Answer: 
# 446.8908




