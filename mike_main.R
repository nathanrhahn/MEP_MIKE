## MIKE Summary Stats

library(tidyverse)

#TODO: Chi-Squared between cause and means
#TODO: create cause-specific map 
#TODO: ratio of conflict events to conflict killings within each MEP HWC sector

## Load Data
mike <- read.csv("C:/Users/nhahn/Dropbox (Personal)/MEP_Working/Data/ER_Events/events_csv/MEP-MIKE.csv")

# split CauseOfDeath into cause and means
mike <- separate(mike,event_details_CauseOfDeath, c("cause", "means"), sep = "_", remove = FALSE, extra = "merge")
mike$cause <- as.factor(mike$cause)
mike$means <- as.factor(mike$means)

## Chi Squared Test
# Test if type of illegal killing (poached vs. conflict) is correlated with means of killing
# filter to conflict and poaching events
# create contingency table
# run chi2 test

tbl <- droplevels(filter(mike, cause %in% c("conflict", "poached")))
tbl <- table(tbl$means, tbl$cause)

(tbl)
round(prop.table(tbl),2)


# pvalue is << 0.05. Cause and Means are correlated
chi2 <- chisq.test(tbl)
chi2

