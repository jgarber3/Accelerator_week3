not_cancelled <-  flights %>% filter(!is.na(dep_delay), !is.na(arr_delay))

#5.6.7 2 Come up with another approach that will give you the same output as:
# old way: not_cancelled %>% count(dest)
# new way:
not_cancelled %>% group_by(dest) %>% summarise( count = n())

# old way: not_cancelled %>% count(tailnum, wt= distance)
# new_way:
not_cancelled %>% group_by(tailnum) %>% summarise(sum(distance))


#5.6.7 3 definintion of cancelled flights is suboptimal. Why?
# answer: because it's OR'd if a flight only has one of the values as NA, it probably still flew but we wouldnt count it

#5.6.7 4 Look at cancelled per day. If there a pattern? is there a relation between proportion of cancelled flights to average delay?
cancelled <- flights %>% filter(is.na(dep_delay) , is.na(arr_delay))
cancelled <- mutate(cancelled, unique_day = as.Date(paste(year,month,day, sep="/")),"%y%m%d")
#plot a line graph of cancelled flight per day
cancelled %>% group_by(unique_day) %>% summarise(count = n()) %>%
 ggplot(mapping = aes(x=unique_day, y=count))  + geom_line() + geom_point()

#5.6.7 5 Which carrier has the worst delays
not_cancelled %>% group_by(carrier) %>% summarise(total_time = sum(dep_delay)) %>% arrange(desc(total_time))