library(nycflights13)

#5.5.2 - 1 Convert dept_time and sched_dep_time to minutes since midnight
converted_flights <- mutate(flights, formatted_dep_time = ((dep_time %/% 100)*60) + dep_time %% 100)
transmute(converted_flights,dep_time,formatted_dep_time)

#5.5.2.- 2 compare air_time with arr_time - dep_time. What do you expect to see? What do you see? What do you need to do to fix it?
#What do you expect?
# Expect them to be the same
# They are different because airtime is minutes in the air and arrival and departure time are times
# you need to convert the arrival and dept hour into minutes using methods like in question 1

#5.5.2 - 3 Compare dep_time, sched_dep_time and dep_delay. How would you expect them to be related?
# dep delay should be the delta between the time the flight actually departed (dep time) and the time is it was supposed
# to depart (sched_dep_time). Dep_delay has been converted to minutes already.

#5.5.2 - 4 Find the 10 most delayed flights using a ranking function.
head(arrange(flights, desc(dep_delay)),10)

#5.5.2 - 5 What does 1:3 + 1:10 return? Why?
# it returns an error by the + operator only works on vectors of the same number of elements

#5.5.2 - 6 What trig functions does R have
#cospi(x), sinpi(x), and tanpi(x), compute cos(pi*x), sin(pi*x), and tan(pi*x)
