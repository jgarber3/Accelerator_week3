# 19.3.1. Excercises

#19.3.1 1 Read the code, figure out what the functions do, make a better name.

#f1
#answer: it figures out if a string is within another string. Name is is_substring().

#f2
#answer: it figures out if the string passed in is null or holds something. name it is_null()

#f3
#answer it replicates the first x elements in y. name it copy_n().

#19.3.1 2 Take a function and spend 5 minutes brainstoring a better name
#answer: uh.... i havent written any functions so I'll make up one
# add <- function (x,y) {
#   return(x+y)
#}


#19.3.1 3 Compare and contrast rnorm() and MASS::mvnorm(). How could you make them more consistent?
#answer: rnorm() is for univariate normal distributions and mvnorm is for multivariate. They are similar but they dont use the same spread method for 
#univariate, one uses the standard deviation and the other uses Sigma. it seems like they would be better defaulting to the same method.

#19.3.1 4 Make a case for why norm_r(),norm_d() would be better then rnorm(), dnorm().
#answer: Im not im understanding the question but i think its asking about naming convention for the function. If so, i guess the argmument
# is that both return a normal distribution but they do it for different reasons and so the basic function is the "norm" and then the specific way to want
# that returned is the r or d respectively.
