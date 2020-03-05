## MIKE Summary Stats

mike <- read.csv("C:/Users/nhahn/Dropbox (Personal)/MEP_Working/Data/ER_Events/events_csv/MEP-MIKE.csv")

mike$event_details_CauseOfDeath <- as.factor(mike$event_details_CauseOfDeath)

#TODO: create seperate cause and means columns
#TODO: correlation between cause and means
#TODO: create cause-specific map 
#TODO: ratio of conflict events to conflict killings within each MEP HWC sector

mike$cause
mike$means 



