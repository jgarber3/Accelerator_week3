#5.7.1. 1
# Referback to the list of useful mutate and filtering functions. Decscribe how each changes when you combine it it grouping.
# Answer: I'm not sure what list the exercise is referring to. THere is a section called Useful creationg functions which goes over operators 
# you can use in Mutate and another for useful summary functions to use in summarise but I dont know if thats what this question is asking. In 
# general I'm asusming that the mutations and filters, when applied to a grouping, operate on each record in the grouped result instenad of
# each record in the data frame (ungrouped)

#5.7.1. 2
#Which plane (tailnum) has the worst on-time record? (im calling worst ontime as largest total amount of time late)
not_cancelled %>% group_by(tailnum) %>% summarise(total_late = sum(arr_delay)) %>% arrange(desc(total_late)) %>% head(1)

#5.7.1. 3 What time of day should you fly if oyu want to avoud delays?
not_cancelled %>% group_by(dep_time) %>% summarise(total_delay = sum(arr_delay)) %>% arrange(total_delay)
#answer: early in the morning like 6am or 7am has the most flight arriving early

#5.7.1. 4 For each destination, compute total minutes of delay. For each flight, compute proportion of total delay for its destination
not_cancelled %>% group_by(dest) %>% summarise(total_delay = sum(arr_delay))
not_cancelled %>% group_by(flight,dest) %>% summarise(total_delay = sum(arr_delay))

#5.7.1 5 Using lag explore how the delay of a flight is related to the delay of the immediately preceding flight
#answer: this isnt right, and i wasnt able to find a good google page on what lag is supposed to do. I was trying
# to create the list of flight, ordered by calendar departure time and then lage them back 1
not_cancelled %>% group_by(flight) %>% arrange(year,month,day,dep_time) %>% lag(1)

#5.7.1 6 Can you find flights that are suspiciously fast
not_cancelled %>% group_by(dest,origin,flight) %>% summarise(shortest = min(air_time),avg = mean(air_time)) %>% mutate( delta = (avg-shortest)) %>%
  arrange(desc(delta))

                                                                                  