####################################################################################
### make factors
#####################################################################################

library(dplyr)

#step 1
#convert all the characters into factors
# this turns all character vectors into either ordered or unordered factors
#source: https://gist.github.com/ramhiser/93fe37be439c480dc26c4bed8aab03dd 
oct_feedback <- oct_feedback %>% mutate(across(where(is.character),factor))
wrkshp_feedback <- wrkshp_feedback %>% mutate(across(where(is.character),factor))



# This is where we actually change the columns into ordered factors
# this is important because otherwise R doesn't know that always is more frequent than never
# unless we tell R otherwise R will treat "always" and "never" the same like colors (yellow isn't more than blue)


#this creates a function that sets the levels we want
f1<- function(x){
  y <- factor(x,levels = c("Strongly disagree",
                           "Disagree",
                           "Neither disagree nor agree",
                           "Agree",
                           "Strongly agree"))
  y
}



# this applys our function to all the columns containing the key phrases we want
# ! is a way of saying things that don't contain the phrase 
# i.e. !contains("measures) finds columns that don't contain "measures"
# | means or and & means and
# accross selects all the columns where our and/or text match conditions are true
# mutate is the verb that applies the function f1 to the columns we selected 

oct_feedback <- oct_feedback%>%
  mutate(
    across(lecture_interesting:attend_next_event,
           f1))


oct_feedback2 <- as.data.frame(oct_feedback)



for (i in 3:21) {
  oct_feedback2[,i] <- as.numeric(oct_feedback2[,i])
}



colSums(oct_feedback2[,3:21])/41

mean(colSums(oct_feedback2[,3:21])/41)

#repeat for november survey

wrkshp_feedback <- wrkshp_feedback%>%
  mutate(
    across(lecture_interesting:attend_next_event,
           f1))

wrkshp_feedback <- as.data.frame(wrkshp_feedback)


wrkshp_feedback <- wrkshp_feedback%>%
  mutate(
    across(lecture_interesting:attend_next_event,
           as.numeric))


wrkshp_feedback %>% select(lecture_interesting:attend_next_event) %>% colSums()/nrow(wrkshp_feedback)

mean(wrkshp_feedback %>% select(lecture_interesting:attend_next_event) %>% colSums()/nrow(wrkshp_feedback))

