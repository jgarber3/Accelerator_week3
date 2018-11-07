#19.4.4 exercises

#19.4.4 1 whats the difference between if and ifelse(). Construct examples
#answer: if evaluates an expression to true or false. if it evaluates to TRUE the block of code is run, if FALSE, nothing is done. You can add and ELSE block to
# have code executed on a FALSE evaluation. ifelse() is a vectorized version of the same thing that takes an input vector, evaluates each member, and returns a vector
#filled with values you specificaly for TRUE or FALSE evaluations
#example of if:
my_val <- 10
if (my_val < 10) {
  x <- "less than"
}

my_vec <- c(1,2,3,4,5,6)
ifelse(my_vec < 3, "less", "more")


#19.4.4 2 Write a function that says "good morning"...."good evening" based on time

greet <- function() {
  current_time <- format(lubridate::now(), "%H")
  if(current_time < 12 ) {
    print("Good Morning")
  } else 
    if(current_time >= 12 && current_time <= 18) {
     print("Good Afternoon")
    } else
    {
      print("Good Evening")
    }

}
greet()


#19.4.4 3 Write a fizzbuzz function

fizzbuzz <- function(number) {
  if(number %% 3 == 0) 
  {
    if(number %% 5 == 0) 
    {
      result <- "Fizzbuzz"
    } 
    else 
    {
      result <- "Fizz"
    }
  }
  else 
  {
     if(number %% 5 == 0) 
     {
       result <- "Buzz"
     }
     else
     {
       result <- number
     }
  }
      
  return(result)
}
fizzbuzz(12)



#19.4.4 4 How can you use cut()
#answer: You could cut the value into 4 buckets and then assign each bucket the temp value.

#19.4.4. 5 What happens if you switch on numberic values?
#answer: any fractional value on the numerical will get lost (cast to an integer) and switch will evaluate it as an intswtich

#19.4.4 6 What happens when you have this switch switch(x, a=, b="ab",c=,d="cd") and use send in "e"
#answer: as far as I can tell it does nothing because E doesnt evaluate to any of the possible cases. feels like thats not the right answer but...
