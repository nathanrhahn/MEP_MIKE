## MIKE Summary Stats

library(tidyverse)

#TODO: Chi-Squared between cause and means
#TODO: create cause-specific map 
#TODO: ratio of conflict events to conflict killings within each MEP HWC sector


mike <- read.csv("C:/Users/nhahn/Dropbox (Personal)/MEP_Working/Data/ER_Events/events_csv/MEP-MIKE.csv")


# split CauseOfDeath into cause and means
mike <- mutate(mike, temp = str_replace(event_details_CauseOfDeath, "_", "-")) 
mike <- separate(mike,temp, c("cause", "means"), sep = "-", remove = TRUE)





