# October 26th Feedback survey
# coding book 

library(readxl)
oct_feedback <- read_excel("oct_feedback.xlsx")



oct_feedback <- oct_feedback %>% rename(
 time= "時間戳記",
 email = "電子郵件地址",                                                                                                                                                                                                                       
 lecture_interesting = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [The lectures were interesting]",
 topic_helps_career = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [The content presented was useful to my academic or professional career]",
  topic_important  = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [The speakers convinced me that their chosen topic was relevant and important]",                                
 spkr_know_topic  = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [The speakers were familiar with their topic]",
 topic_deserves_attention  = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [The topics presented were topics that I think are major public health issues and deserve attention]",          
 registration_easy  = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [The registration system was easy to use]"                                                                   ,  
 mixed_format_ok = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [The mixed online/ in-person format worked well]"                                                              ,
  in_person_sound_ok = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [I could hear the in-person speakers clearly]"                                                              ,   
  online_sound_ok =  "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [I could hear the online-speakers clearly]"                                                                    ,
  in_person_visual_ok = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [I could see the in-person speakers and their presentation slides clearly]"                                 ,   
  online_visual_ok = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [I could see the online speakers and their presentation slides clearly]",          
  more_online_speakers = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [I want to see more online speakers]"                                                             ,             
  more_in_person_speakers = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [I would prefer more in-person speakers]"                                                       ,               
  timing_ok = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [The event was well-timed and transitions made sense]",
 hp_knowledge_increased = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [I know more about health promotion as a result of attending this forum]"                           ,           
  core_comp_knowledge_increased =  "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [I know more about the six core competencies for health promotion after attending this forum]",                
  cchp_awareness_inreased =  "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [I know more about the Collaborating Centres for Health Promotion as a result of attending this forum]",      
  APACPH_awareness_inreased = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [I know more about the Asia-Pacific Academic Consortium for Public Health as a result of attending this forum]",
 attend_next_event = "1.\tPlease indicate how much do you agree or disagree with each of the following statements according to this scale. [I would attend another event hosted by the Collaborating Centres for Health Promotion]", 
age = "4.0 Your age?",
 student = "4.1 Are you a student?",                                                                                                                                                                                                       
  faculty =  "4.2 Are you a faculty member?",                                                                                                                                                                                                      
organization_type =  "4.3 What type of organization do you work for (e.g university, government, hospital, etc)"     ,                                                                                                                                    
 health_background = "4.4 Do you have a health background?"                                                           ,                                                                                                                                
  health_focus_area = "4.5 If so, what would you say your focus area is?"                                              ,                                                                                                                                   
  employer_required = "4.6 Did you attend our event because you were required to attend by your employer?"              ,                                                                                                                                   
  class_required =  "4.7 Did you attend our event because you were required to attend for class?"                        ,                                                                                                                                
hear_of_event = "4.9 How did you hear about our event?"                                                                   ,                                                                                                                           
  like_long_resp = "5.1 What did you like about this forum?"                                                               ,                                                                                                                             
  dislike_long_resp = "5.2 What did you dislike about this forum?"                                                          ,                                                                                                                               
  unclear_long_resp = "5.3 Things that were not clear to me…"                                                                ,                                                                                                                              
  suggestions = "5.4 Any comments or suggestions for CCHP or any of our speakers?"                                            ,                                                                                                                       
  future_topics = "5.5 What sorts of events or topics would you like to see covered in the future?"                                                                                                                                                    
)
