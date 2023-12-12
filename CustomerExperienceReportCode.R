###calling required libraries##
library(readxl)
library(skimr) 
library(dplyr) 
library(psych)

###set the working directory and call the data set###
setwd("/Users/bisolaolagoke/Desktop")

data_cass <- read_excel("Wavelength_CHR2.xlsx")
##total variable 242
#total observations 1994

summary(data_cass)
###select variables and filter observations###

##Cleanliness 
##Cleaner_Stations, Cleaner_Trains, 7_Arriving_toilets_clean, 6_TravelOnTrain_clean_toilets, 6_TravelOnTrain_clean, 5_WaitingAtStation_clean_toilets

##customer service 
#8_Appraising_easily_contact_customer_service,  7_Arriving_someone_help_luggage, 7_Arriving_can_get_help_if_needed,  6_TravelOnTrain_someone_help_luggage, 6_TravelOnTrain_easily_spot_staff, 6_TravelOnTrain_approachable_staff
#5_WaitingAtStation_approachable_staff, 5_WaitingAtStation_staff_answer_my_questions

#Arrival 
#3_ArrivingParking_find_best_way_to_station, 3_ArrivingParking_easily_get_droppedoff,
#3_ArrivingParking_easily_getin_station, 3_ArrivingParking_clear_where_to_get_train, 7_Arriving_train_on_time, 7_Arriving_easily_find_trainconnection,

##communication 
#7_Arriving_easily_find_trainconnection, 7_Arriving_onward_travel_info, 2_BuyingAhead_good_advance_comms,  2_BuyingAhead_easily_find_all_info_prior_jny, #1_Exploring_see_offers_comms, 
#1_Exploring_finding_train_times, 1_Exploring_find_trains_for_schedule, 6_TravelOnTrain_can_find_jny_updates, 6_TravelOnTrain_delays_helpfully_communicated, 6_TravelOnTrain_apologies_made_delays,
#5_WaitingAtStation_visible_train_status, 5_WaitingAtStation_delays_helpfully_communicated, 5_WaitingAtStation_easily_getto_platform, Informed_before_during_after_Jny, Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions


#Purchasing Ticketing 
#2_BuyingAhead_clear_price, 2_BuyingAhead_understand_railcard, 2_BuyingAhead_easily_buy_railcard, 2_BuyingAhead_easily_buy_advance_ticket, 2_BuyingAhead_easily_workout_best_ticket, 4_BuyingAtStation_easily_find_where_purchase_ticket, 
#4_BuyingAtStation_easily_use_TVM, 1_Exploring_ticket_type_is_clear, 1_Exploring_clear_how_buy_online_ticket, #4_BuyingAtStation_easily_buy_from_TO, 4_BuyingAtStation_agent_offers_best_ticket,

##Safety 
#6_TravelOnTrain_feel_safe, 6_TravelOnTrain_Staff_provide_reassurance, 5_WaitingAtStation_feel_safe, Train_Company_Ensured_My_Safety_Security

##Ambience 
#6_TravelOnTrain_available_WiFi, 6_TravelOnTrain_sit_stand_comfortably, 6_TravelOnTrain_sockets_reach_working, 6_TravelOnTrain_space_for_luggage, 5_WaitingAtStation_nice_environment
#5_WaitingAtStation_WiFi_available, 5_WaitingAtStation_somewhere_to_sit

#Puncuality 
#6_TravelOnTrain_departs_ontime

#satisfaction 
#Overall_Jny_CSAT

#Accessibility
#Accessibility_NONE, Accessibility_Other, Accessibility_Vision, Accessibility_Hearing, Accessibility_Dexterity, Accessibility_Mobility, Accessibility_Learning, Accessibility_Memory, Accessibility_MentalHealth, 
#Accessibility_Fatigue, 

#assistance
#Assistance_Used

#travel history 
#Travelled_Last_7_days_Trains, Travelled_Last_7_days_Underground,

##Demograpy 
#Ethnicity, Employment_Type, Purpose

chiltern_ass <- select(data_cass, response_id, CRS_CODE_DEPARTURE, CRS_CODE_DESTINATION, ticket_type, sales_channel, RailCard, Cleaner_Stations, Cleaner_Trains, `7_Arriving_toilets_clean`,
                       `6_TravelOnTrain_clean_toilets`, `8_Appraising_easily_contact_customer_service`, `3_ArrivingParking_find_best_way_to_station`, `3_ArrivingParking_easily_get_droppedoff`,
                       `3_ArrivingParking_easily_getin_station`, `3_ArrivingParking_clear_where_to_get_train`, `7_Arriving_easily_find_trainconnection`,
                       `7_Arriving_onward_travel_info`, `7_Arriving_someone_help_luggage`, `7_Arriving_can_get_help_if_needed`, `2_BuyingAhead_good_advance_comms`, `2_BuyingAhead_clear_price`, `2_BuyingAhead_understand_railcard`, 
                       `2_BuyingAhead_easily_buy_railcard`, `2_BuyingAhead_easily_buy_advance_ticket`, `2_BuyingAhead_easily_workout_best_ticket`, `4_BuyingAtStation_easily_find_where_purchase_ticket`, 
                       `4_BuyingAtStation_easily_use_TVM`, `1_Exploring_ticket_type_is_clear`, `1_Exploring_clear_how_buy_online_ticket`, `2_BuyingAhead_easily_find_all_info_prior_jny`, `4_BuyingAtStation_easily_buy_from_TO`, 
                       `4_BuyingAtStation_agent_offers_best_ticket`, `1_Exploring_see_offers_comms`, `1_Exploring_finding_train_times`, `1_Exploring_find_trains_for_schedule`, `6_TravelOnTrain_can_find_jny_updates`, 
                       `6_TravelOnTrain_delays_helpfully_communicated`, `6_TravelOnTrain_apologies_made_delays`, `6_TravelOnTrain_someone_help_luggage`, `6_TravelOnTrain_feel_safe`, `6_TravelOnTrain_available_WiFi`,
                       `6_TravelOnTrain_sit_stand_comfortably`, `6_TravelOnTrain_sockets_reach_working`, `6_TravelOnTrain_space_for_luggage`, `6_TravelOnTrain_clean`, `6_TravelOnTrain_departs_ontime`, `6_TravelOnTrain_easily_spot_staff`, 
                       `6_TravelOnTrain_approachable_staff`, `5_WaitingAtStation_approachable_staff`, `5_WaitingAtStation_staff_answer_my_questions`, `5_WaitingAtStation_visible_train_status`, 
                       `5_WaitingAtStation_delays_helpfully_communicated`, `5_WaitingAtStation_clean_toilets`, `5_WaitingAtStation_nice_environment`, '6_TravelOnTrain_Staff_provide_reassurance',`5_WaitingAtStation_feel_safe`, `5_WaitingAtStation_WiFi_available`, 
                       `5_WaitingAtStation_somewhere_to_sit`, Informed_before_during_after_Jny, Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions, 'Pax_assist_CSAT', Train_Company_Ensured_My_Safety_Security, Overall_Jny_CSAT, Accessibility_NONE,
                       Accessibility_Vision, Accessibility_Other, Accessibility_Hearing, Accessibility_Mobility, Accessibility_Dexterity, Accessibility_Learning, Accessibility_Memory, Accessibility_MentalHealth, Accessibility_Fatigue, Assistance_Used,
                       Travelled_Last_7_days_Trains, Travelled_Last_7_days_Underground, Ethnicity, Employment_Type, Purpose)

###1994 observations and 79 variables 
#######################################################################################
#################################Data Cleaning###############################

##1. rename variables that begin with numeric. 
skim(chiltern_ass$'6_TravelOnTrain_Staff_provide_reassurance')

chiltern_ass <- chiltern_ass %>%
  rename(TravelOnTrain_clean_toilets = '6_TravelOnTrain_clean_toilets', 
         Arriving_toilets_clean = '7_Arriving_toilets_clean',
         Appraising_easily_contact_customer_service = '8_Appraising_easily_contact_customer_service',
         ArrivingParking_find_best_way_to_station = '3_ArrivingParking_find_best_way_to_station',
         ArrivingParking_easily_get_droppedoff = '3_ArrivingParking_easily_get_droppedoff',
         ArrivingParking_easily_getin_station = '3_ArrivingParking_easily_getin_station',
         ArrivingParking_clear_where_to_get_train = '3_ArrivingParking_clear_where_to_get_train',
         Arriving_easily_find_trainconnection = '7_Arriving_easily_find_trainconnection',
         Arriving_onward_travel_info = '7_Arriving_onward_travel_info',
         Arriving_someone_help_luggage = '7_Arriving_someone_help_luggage',
         Arriving_can_get_help_if_needed = '7_Arriving_can_get_help_if_needed',
         BuyingAhead_good_advance_comms = '2_BuyingAhead_good_advance_comms',
         BuyingAhead_clear_price = '2_BuyingAhead_clear_price',
         BuyingAhead_understand_railcard = '2_BuyingAhead_understand_railcard',
         BuyingAhead_easily_buy_railcard = '2_BuyingAhead_easily_buy_railcard',
         BuyingAhead_easily_buy_advance_ticket = '2_BuyingAhead_easily_buy_advance_ticket',
         BuyingAtStation_easily_find_where_purchase_ticket = '4_BuyingAtStation_easily_find_where_purchase_ticket',
         BuyingAhead_easily_workout_best_ticket = '2_BuyingAhead_easily_workout_best_ticket',
         BuyingAtStation_easily_use_TVM = '4_BuyingAtStation_easily_use_TVM',
         Exploring_ticket_type_is_clear = '1_Exploring_ticket_type_is_clear',
         Exploring_clear_how_buy_online_ticket = '1_Exploring_clear_how_buy_online_ticket',
         BuyingAhead_easily_find_all_info_prior_jny = '2_BuyingAhead_easily_find_all_info_prior_jny',
         BuyingAtStation_easily_buy_from_TO = '4_BuyingAtStation_easily_buy_from_TO',
         BuyingAtStation_agent_offers_best_ticket = '4_BuyingAtStation_agent_offers_best_ticket',
         Exploring_see_offers_comms = '1_Exploring_see_offers_comms',
         Exploring_find_trains_for_schedule = '1_Exploring_find_trains_for_schedule',
         Exploring_finding_train_times = '1_Exploring_finding_train_times',
         TravelOnTrain_can_find_jny_updates = '6_TravelOnTrain_can_find_jny_updates',
         TravelOnTrain_delays_helpfully_communicated = '6_TravelOnTrain_delays_helpfully_communicated',
         TravelOnTrain_apologies_made_delays = '6_TravelOnTrain_apologies_made_delays',
         TravelOnTrain_someone_help_luggage = '6_TravelOnTrain_someone_help_luggage',
         TravelOnTrain_feel_safe = '6_TravelOnTrain_feel_safe',
         TravelOnTrain_available_WiFi = '6_TravelOnTrain_available_WiFi',
         TravelOnTrain_sit_stand_comfortably = '6_TravelOnTrain_sit_stand_comfortably',
         TravelOnTrain_sockets_reach_working = '6_TravelOnTrain_sockets_reach_working',
         TravelOnTrain_space_for_luggage = '6_TravelOnTrain_space_for_luggage',
         TravelOnTrain_clean = '6_TravelOnTrain_clean',
         TravelOnTrain_departs_ontime = '6_TravelOnTrain_departs_ontime',
         TravelOnTrain_easily_spot_staff = '6_TravelOnTrain_easily_spot_staff',
         TravelOnTrain_approachable_staff = '6_TravelOnTrain_approachable_staff',
         WaitingAtStation_approachable_staff = '5_WaitingAtStation_approachable_staff',
         WaitingAtStation_staff_answer_my_questions = '5_WaitingAtStation_staff_answer_my_questions',
         WaitingAtStation_visible_train_status = '5_WaitingAtStation_visible_train_status',
         WaitingAtStation_delays_helpfully_communicated = '5_WaitingAtStation_delays_helpfully_communicated',
         WaitingAtStation_clean_toilets = '5_WaitingAtStation_clean_toilets',
         WaitingAtStation_nice_environment = '5_WaitingAtStation_nice_environment',
         WaitingAtStation_feel_safe = '5_WaitingAtStation_feel_safe',
         WaitingAtStation_WiFi_available = '5_WaitingAtStation_WiFi_available',
         WaitingAtStation_somewhere_to_sit = '5_WaitingAtStation_somewhere_to_sit',
         TravelOnTrain_Staff_provide_reassurance = '6_TravelOnTrain_Staff_provide_reassurance') 

skim(chiltern_ass)

####missing variables
#cleaner and accessibility data has 160 missing variables each 
skim(chiltern_ass$Cleaner_Stations) #drop missing values
chiltern_ass <- chiltern_ass %>% filter(Cleaner_Stations != ".")
skim(chiltern_ass)
###1834 observations and 79 variables 

table(chiltern_ass$TravelOnTrain_Staff_provide_reassurance) 
#122 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(TravelOnTrain_Staff_provide_reassurance != 0)  #drop outlier '0'

table(chiltern_ass$TravelOnTrain_clean_toilets) 
#147 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(TravelOnTrain_clean_toilets != 0)  #drop outlier '0'

table(chiltern_ass$Arriving_toilets_clean) 
#158 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Arriving_toilets_clean != 0)  #drop outlier '0'

table(chiltern_ass$Appraising_easily_contact_customer_service) 
#165 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Appraising_easily_contact_customer_service != 0) #drop outlier '0'

table(chiltern_ass$ArrivingParking_find_best_way_to_station) 
#63 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(ArrivingParking_find_best_way_to_station != 0) #drop outlier '0'

table(chiltern_ass$ArrivingParking_easily_get_droppedoff) 
#95 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(ArrivingParking_easily_get_droppedoff != 0) #drop outlier '0'


table(chiltern_ass$ArrivingParking_easily_getin_station) 
#50 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(ArrivingParking_easily_getin_station != 0) #drop outlier '0'

table(chiltern_ass$ArrivingParking_clear_where_to_get_train) 
#58 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(ArrivingParking_clear_where_to_get_train != 0) #drop outlier '0'

table(chiltern_ass$Arriving_easily_find_trainconnection) 
#111 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Arriving_easily_find_trainconnection != 0) #drop outlier '0'

table(chiltern_ass$Arriving_onward_travel_info) 
#112 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Arriving_onward_travel_info != 0) #drop outlier '0'

table(chiltern_ass$Arriving_someone_help_luggage) 
#184 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Arriving_someone_help_luggage != 0) #drop outlier '0'

table(chiltern_ass$Arriving_can_get_help_if_needed) 
#98 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Arriving_can_get_help_if_needed != 0) #drop outlier '0'

table(chiltern_ass$BuyingAhead_good_advance_comms) 
#81 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(BuyingAhead_good_advance_comms != 0) #drop outlier '0'

table(chiltern_ass$BuyingAhead_clear_price) 
#59 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(BuyingAhead_clear_price != 0) #drop outlier '0'

table(chiltern_ass$BuyingAhead_understand_railcard) 
#88 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(BuyingAhead_understand_railcard != 0)  #drop outlier '0'

table(chiltern_ass$BuyingAhead_easily_buy_railcard) 
#132 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter( BuyingAhead_easily_buy_railcard != 0)  #drop outlier '0'


table(chiltern_ass$BuyingAhead_easily_workout_best_ticket) 
#66 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(BuyingAhead_easily_workout_best_ticket != 0) #drop outlier '0'

table(chiltern_ass$BuyingAtStation_easily_find_where_purchase_ticket) 
#81 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(BuyingAtStation_easily_find_where_purchase_ticket != 0) #drop outlier '0'

table(chiltern_ass$BuyingAtStation_easily_use_TVM) 
#108 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(BuyingAtStation_easily_use_TVM != 0) #drop outlier '0'

table(chiltern_ass$Exploring_ticket_type_is_clear) 
#54 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Exploring_ticket_type_is_clear != 0) #drop outlier '0'

table(chiltern_ass$Exploring_clear_how_buy_online_ticket) 
#62 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Exploring_clear_how_buy_online_ticket != 0) #drop outlier '0'

table(chiltern_ass$BuyingAhead_easily_find_all_info_prior_jny) 
#66 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(BuyingAhead_easily_find_all_info_prior_jny != 0) #drop outlier '0'

table(chiltern_ass$BuyingAtStation_easily_buy_from_TO) 
#111 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(BuyingAtStation_easily_buy_from_TO != 0) #drop outlier '0'

table(chiltern_ass$ BuyingAtStation_agent_offers_best_ticket) 
#169 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter( BuyingAtStation_agent_offers_best_ticket != 0) #drop outlier '0'

table(chiltern_ass$Exploring_see_offers_comms) 
#70 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Exploring_see_offers_comms != 0) #drop outlier '0'

table(chiltern_ass$Exploring_finding_train_times) 
#45 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Exploring_finding_train_times != 0) #drop outlier '0'

table(chiltern_ass$Exploring_find_trains_for_schedule) 
#42 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Exploring_find_trains_for_schedule != 0) #drop outlier '0'

table(chiltern_ass$TravelOnTrain_can_find_jny_updates) 
#72 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(TravelOnTrain_can_find_jny_updates != 0) #drop outlier '0'

table(chiltern_ass$TravelOnTrain_delays_helpfully_communicated) 
#126 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(TravelOnTrain_delays_helpfully_communicated != 0) #drop outlier '0'

table(chiltern_ass$WaitingAtStation_clean_toilets) 
#160 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(WaitingAtStation_clean_toilets != 0) #drop outlier '0'

table(chiltern_ass$WaitingAtStation_nice_environment) 
#48 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(WaitingAtStation_nice_environment != 0) #drop outlier '0'

table(chiltern_ass$WaitingAtStation_feel_safe) 
#58 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(WaitingAtStation_feel_safe != 0) #drop outlier '0'

table(chiltern_ass$WaitingAtStation_WiFi_available) 
#136 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(WaitingAtStation_WiFi_available != 0) #drop outlier '0'

table(chiltern_ass$WaitingAtStation_somewhere_to_sit) 
#61 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(WaitingAtStation_somewhere_to_sit != 0) #drop outlier '0'

table(chiltern_ass$Informed_before_during_after_Jny) 
#11 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Informed_before_during_after_Jny != 0) #drop outlier '0'

table(chiltern_ass$Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions) 
#21 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions != 0) #drop outlier '0'

table(chiltern_ass$Train_Company_Ensured_My_Safety_Security) 
#26 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Train_Company_Ensured_My_Safety_Security != 0) #drop outlier '0'

table(chiltern_ass$Overall_Jny_CSAT) 
#14 '0' out-liner variables
chiltern_ass <- chiltern_ass %>% filter(Overall_Jny_CSAT != 0) #drop outlier '0'

table(chiltern_ass$Assistance_Used)
####101 cant remember 
chiltern_ass <- chiltern_ass %>% filter(Assistance_Used != 'Can’t remember') #drop outlier cant remember

table(chiltern_ass$Travelled_Last_7_days_Underground) ###frequent train users

table(chiltern_ass$TravelOnTrain_apologies_made_delays)
chiltern_ass <- chiltern_ass %>% filter(TravelOnTrain_apologies_made_delays != 0) #drop outlier '0'

table(chiltern_ass$TravelOnTrain_someone_help_luggage)
chiltern_ass <- chiltern_ass %>% filter(TravelOnTrain_someone_help_luggage != 0) #drop outlier '0'

table(chiltern_ass$TravelOnTrain_feel_safe)
chiltern_ass <- chiltern_ass %>% filter(TravelOnTrain_feel_safe!= 0) #drop outlier '0'

table(chiltern_ass$TravelOnTrain_available_WiFi)
chiltern_ass <- chiltern_ass %>% filter(TravelOnTrain_available_WiFi != 0) #drop outlier '0'

table(chiltern_ass$TravelOnTrain_space_for_luggage)
chiltern_ass <- chiltern_ass %>% filter(TravelOnTrain_space_for_luggage != 0) #drop outlier '0'

table(chiltern_ass$TravelOnTrain_sockets_reach_working)
chiltern_ass <- chiltern_ass %>% filter(TravelOnTrain_sockets_reach_working != 0) #drop outlier '0'

table(chiltern_ass$TravelOnTrain_clean)
chiltern_ass <- chiltern_ass %>% filter(TravelOnTrain_clean != 0) #drop outlier '0'

table(chiltern_ass$TravelOnTrain_easily_spot_staff)
chiltern_ass <- chiltern_ass %>% filter(TravelOnTrain_easily_spot_staff != 0) #drop outlier '0'

table(chiltern_ass$TravelOnTrain_approachable_staff)
chiltern_ass <- chiltern_ass %>% filter(Appraising_easily_contact_customer_service != 0) #drop outlier '0'

table(chiltern_ass$WaitingAtStation_staff_answer_my_questions)
chiltern_ass <- chiltern_ass %>% filter(WaitingAtStation_staff_answer_my_questions != 0) #drop outlier '0'

table(chiltern_ass$WaitingAtStation_visible_train_status)
chiltern_ass <- chiltern_ass %>% filter(WaitingAtStation_visible_train_status != 0) #drop outlier '0'

table(chiltern_ass$WaitingAtStation_approachable_staff)
chiltern_ass <- chiltern_ass %>% filter(WaitingAtStation_approachable_staff!= 0) #drop outlier '0'

table(chiltern_ass$TravelOnTrain_departs_ontime)
chiltern_ass <- chiltern_ass %>% filter(TravelOnTrain_departs_ontime != 0) #drop outlier '0'

skim(chiltern_ass)

table(chiltern_ass$TravelOnTrain_departs_ontime)
Pax_assist_CSAT

#1181 observations and 78 variables after cleaning
###########################################################################################################################################

##Cleanliness
## 7_Arriving_toilets_clean, 6_TravelOnTrain_clean_toilets, 6_TravelOnTrain_clean, 5_WaitingAtStation_clean_toilets
#CronbaAlpha
alpha(chiltern_ass[,c("Arriving_toilets_clean" , "TravelOnTrain_clean", "WaitingAtStation_clean_toilets")])
#result is 0.75

###merge
chiltern_ass <- mutate(chiltern_ass, cleanliness = 
                         ifelse(Arriving_toilets_clean == 1 & TravelOnTrain_clean == 1 & WaitingAtStation_clean_toilets == 1, 1, 
                                ifelse(Arriving_toilets_clean == 2 & TravelOnTrain_clean == 2 & WaitingAtStation_clean_toilets == 2, 2,
                                       ifelse(Arriving_toilets_clean == 3 & TravelOnTrain_clean == 3 & WaitingAtStation_clean_toilets == 3, 3,   
                                              ifelse(Arriving_toilets_clean == 4 & TravelOnTrain_clean == 4 & WaitingAtStation_clean_toilets == 4, 4,
                                                     ifelse(Arriving_toilets_clean == 5 & TravelOnTrain_clean == 5 & WaitingAtStation_clean_toilets == 5, 5,
                                                            ifelse(Arriving_toilets_clean == 6 & TravelOnTrain_clean == 6 & WaitingAtStation_clean_toilets == 6, 6, 
                                                                   ifelse(Arriving_toilets_clean == 7 & TravelOnTrain_clean == 7 & WaitingAtStation_clean_toilets == 7, 7,
                                                                          ifelse(Arriving_toilets_clean == 8 & TravelOnTrain_clean == 8 & WaitingAtStation_clean_toilets == 8, 8, 
                                                                                 ifelse(Arriving_toilets_clean == 9 & TravelOnTrain_clean == 9 & WaitingAtStation_clean_toilets == 9, 9,
                                                                                        ifelse(Arriving_toilets_clean == 10 & TravelOnTrain_clean == 10 & WaitingAtStation_clean_toilets == 10, 10, 
                                                                                               Arriving_toilets_clean)))))))))))
table(chiltern_ass$cleanliness)

##customer service 
#8_Appraising_easily_contact_customer_service,  7_Arriving_someone_help_luggage, 7_Arriving_can_get_help_if_needed,  6_TravelOnTrain_someone_help_luggage, 6_TravelOnTrain_easily_spot_staff, 6_TravelOnTrain_approachable_staff
#5_WaitingAtStation_approachable_staff, 5_WaitingAtStation_staff_answer_my_questions
#CronbaAlpha

alpha(chiltern_ass[,c("Appraising_easily_contact_customer_service", "Arriving_someone_help_luggage", "Arriving_can_get_help_if_needed" , "TravelOnTrain_someone_help_luggage", "TravelOnTrain_easily_spot_staff", "TravelOnTrain_approachable_staff",
                      "WaitingAtStation_approachable_staff", "WaitingAtStation_staff_answer_my_questions")])
#result is 0.89

chiltern_ass <- mutate(chiltern_ass, customer_service = 
                         ifelse(Appraising_easily_contact_customer_service == 1 & Arriving_someone_help_luggage == 1 & Arriving_can_get_help_if_needed == 1 & 
                                  TravelOnTrain_someone_help_luggage == 1 & TravelOnTrain_easily_spot_staff == 1 & TravelOnTrain_approachable_staff == 1
                                & WaitingAtStation_approachable_staff == 1 & WaitingAtStation_staff_answer_my_questions == 1, 1, 
                                ifelse(Appraising_easily_contact_customer_service == 2 & Arriving_someone_help_luggage == 2 & Arriving_can_get_help_if_needed == 2 & 
                                         TravelOnTrain_someone_help_luggage == 2 & TravelOnTrain_easily_spot_staff == 2 & TravelOnTrain_approachable_staff == 2
                                       & WaitingAtStation_approachable_staff == 2 & WaitingAtStation_staff_answer_my_questions == 2, 2,
                                       ifelse(Appraising_easily_contact_customer_service == 3 & Arriving_someone_help_luggage == 3 & Arriving_can_get_help_if_needed == 3 & 
                                                TravelOnTrain_someone_help_luggage == 3 & TravelOnTrain_easily_spot_staff == 3 & TravelOnTrain_approachable_staff == 3
                                              & WaitingAtStation_approachable_staff == 3 & WaitingAtStation_staff_answer_my_questions == 3, 3,    
                                              ifelse(Appraising_easily_contact_customer_service == 4 & Arriving_someone_help_luggage == 4 & Arriving_can_get_help_if_needed == 4 & 
                                                       TravelOnTrain_someone_help_luggage == 4 & TravelOnTrain_easily_spot_staff == 4 & TravelOnTrain_approachable_staff == 4
                                                     & WaitingAtStation_approachable_staff == 4 & WaitingAtStation_staff_answer_my_questions == 4, 4, 
                                                     ifelse(Appraising_easily_contact_customer_service == 5 & Arriving_someone_help_luggage == 5 & Arriving_can_get_help_if_needed == 15 & 
                                                              TravelOnTrain_someone_help_luggage == 5 & TravelOnTrain_easily_spot_staff == 5 & TravelOnTrain_approachable_staff == 5
                                                            & WaitingAtStation_approachable_staff == 5 & WaitingAtStation_staff_answer_my_questions == 5, 5, 
                                                            ifelse(Appraising_easily_contact_customer_service == 6 & Arriving_someone_help_luggage == 6 & Arriving_can_get_help_if_needed == 6 & 
                                                                     TravelOnTrain_someone_help_luggage == 6 & TravelOnTrain_easily_spot_staff == 6 & TravelOnTrain_approachable_staff == 6
                                                                   & WaitingAtStation_approachable_staff == 6 & WaitingAtStation_staff_answer_my_questions == 6, 6, 
                                                                   ifelse(Appraising_easily_contact_customer_service == 7 & Arriving_someone_help_luggage == 7 & Arriving_can_get_help_if_needed == 7 & 
                                                                            TravelOnTrain_someone_help_luggage == 7 & TravelOnTrain_easily_spot_staff == 7 & TravelOnTrain_approachable_staff == 7
                                                                          & WaitingAtStation_approachable_staff == 7 & WaitingAtStation_staff_answer_my_questions == 7, 7, 
                                                                          ifelse(Appraising_easily_contact_customer_service == 8 & Arriving_someone_help_luggage == 8 & Arriving_can_get_help_if_needed == 8 & 
                                                                                   TravelOnTrain_someone_help_luggage == 8 & TravelOnTrain_easily_spot_staff == 8 & TravelOnTrain_approachable_staff == 8
                                                                                 & WaitingAtStation_approachable_staff == 8 & WaitingAtStation_staff_answer_my_questions == 8, 8, 
                                                                                 ifelse(Appraising_easily_contact_customer_service == 9 & Arriving_someone_help_luggage == 9 & Arriving_can_get_help_if_needed == 9 & 
                                                                                          TravelOnTrain_someone_help_luggage == 9 & TravelOnTrain_easily_spot_staff == 9 & TravelOnTrain_approachable_staff == 9
                                                                                        & WaitingAtStation_approachable_staff == 9 & WaitingAtStation_staff_answer_my_questions == 9, 9, 
                                                                                        ifelse(Appraising_easily_contact_customer_service == 10 & Arriving_someone_help_luggage == 10 & Arriving_can_get_help_if_needed == 10 & 
                                                                                                 TravelOnTrain_someone_help_luggage == 10 & TravelOnTrain_easily_spot_staff == 10 & TravelOnTrain_approachable_staff == 10
                                                                                               & WaitingAtStation_approachable_staff == 10 & WaitingAtStation_staff_answer_my_questions == 10, 10, 
                                                                                               Appraising_easily_contact_customer_service)))))))))))
table(chiltern_ass$customer_service)

#Arrival 
#3_ArrivingParking_find_best_way_to_station, 3_ArrivingParking_easily_get_droppedoff,
#3_ArrivingParking_easily_getin_station, 3_ArrivingParking_clear_where_to_get_train, 7_Arriving_easily_find_trainconnection,

alpha(chiltern_ass[,c("ArrivingParking_find_best_way_to_station", "ArrivingParking_easily_get_droppedoff", "ArrivingParking_easily_getin_station" , 
                      "ArrivingParking_clear_where_to_get_train", "Arriving_easily_find_trainconnection")])
#result is 0.83

chiltern_ass <- mutate(chiltern_ass, arrival_experience = 
                         ifelse(ArrivingParking_find_best_way_to_station == 1 & ArrivingParking_easily_get_droppedoff == 1 & ArrivingParking_easily_getin_station == 1 & 
                                  ArrivingParking_clear_where_to_get_train == 1 & Arriving_easily_find_trainconnection == 1, 1, 
                                ifelse(ArrivingParking_find_best_way_to_station == 2 & ArrivingParking_easily_get_droppedoff == 2 & ArrivingParking_easily_getin_station == 2 &
                                         ArrivingParking_clear_where_to_get_train == 2 & Arriving_easily_find_trainconnection == 2, 2,
                                       ifelse(ArrivingParking_find_best_way_to_station == 3 & ArrivingParking_easily_get_droppedoff == 3 & ArrivingParking_easily_getin_station == 3 & 
                                                ArrivingParking_clear_where_to_get_train == 3 & Arriving_easily_find_trainconnection== 3, 3,   
                                              ifelse(ArrivingParking_find_best_way_to_station == 4 & ArrivingParking_easily_get_droppedoff == 4 & ArrivingParking_easily_getin_station == 4 & 
                                                       ArrivingParking_clear_where_to_get_train == 4 & Arriving_easily_find_trainconnection == 4, 4,
                                                     ifelse(ArrivingParking_find_best_way_to_station == 5 & ArrivingParking_easily_get_droppedoff == 5 & ArrivingParking_easily_getin_station == 5 & 
                                                              ArrivingParking_clear_where_to_get_train == 5 & Arriving_easily_find_trainconnection == 5, 5,
                                                            ifelse(ArrivingParking_find_best_way_to_station == 6 & ArrivingParking_easily_get_droppedoff == 6 & ArrivingParking_easily_getin_station == 6 & 
                                                                     ArrivingParking_clear_where_to_get_train == 6 & Arriving_easily_find_trainconnection == 6, 6, 
                                                                   ifelse(ArrivingParking_find_best_way_to_station == 7 & ArrivingParking_easily_get_droppedoff == 7 & ArrivingParking_easily_getin_station == 7 & 
                                                                            ArrivingParking_clear_where_to_get_train == 7 & Arriving_easily_find_trainconnection == 7, 7,
                                                                          ifelse(ArrivingParking_find_best_way_to_station == 8 & ArrivingParking_easily_get_droppedoff == 8 & ArrivingParking_easily_getin_station == 8 & 
                                                                                   ArrivingParking_clear_where_to_get_train == 8 & Arriving_easily_find_trainconnection== 8, 8, 
                                                                                 ifelse(ArrivingParking_find_best_way_to_station == 9 & ArrivingParking_easily_get_droppedoff == 9 & ArrivingParking_easily_getin_station == 9 & 
                                                                                          ArrivingParking_clear_where_to_get_train == 9 & Arriving_easily_find_trainconnection == 9, 9,
                                                                                        ifelse(ArrivingParking_find_best_way_to_station == 10 & ArrivingParking_easily_get_droppedoff== 10 & ArrivingParking_easily_getin_station == 10 & 
                                                                                                 ArrivingParking_clear_where_to_get_train == 10 & Arriving_easily_find_trainconnection == 10, 10, 
                                                                                               ArrivingParking_find_best_way_to_station)))))))))))
table(chiltern_ass$arrival_experience)


##communication 
#7_Arriving_easily_find_trainconnection, 7_Arriving_onward_travel_info, 2_BuyingAhead_good_advance_comms,  2_BuyingAhead_easily_find_all_info_prior_jny, #1_Exploring_see_offers_comms, 
#1_Exploring_finding_train_times, 1_Exploring_find_trains_for_schedule, 6_TravelOnTrain_can_find_jny_updates, 6_TravelOnTrain_delays_helpfully_communicated, 6_TravelOnTrain_apologies_made_delays,
#5_WaitingAtStation_visible_train_status, 5_WaitingAtStation_delays_helpfully_communicated, Informed_before_during_after_Jny, Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions

alpha(chiltern_ass[,c("Arriving_easily_find_trainconnection", "Arriving_onward_travel_info", "BuyingAhead_good_advance_comms" , 
                      "BuyingAhead_easily_find_all_info_prior_jny", "Exploring_see_offers_comms", "Exploring_finding_train_times", 
                      "Exploring_find_trains_for_schedule", "TravelOnTrain_can_find_jny_updates", "TravelOnTrain_delays_helpfully_communicated",
                      "TravelOnTrain_apologies_made_delays", "WaitingAtStation_visible_train_status", "WaitingAtStation_delays_helpfully_communicated", 
                      "Informed_before_during_after_Jny", "Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions")])
#result is 0.92

chiltern_ass <- mutate(chiltern_ass, communication = 
                         ifelse(Arriving_easily_find_trainconnection == 1 & Arriving_onward_travel_info == 1 & BuyingAhead_good_advance_comms == 1 & 
                                  BuyingAhead_easily_find_all_info_prior_jny == 1 & Exploring_see_offers_comms == 1 & Exploring_finding_train_times == 1
                                & Exploring_find_trains_for_schedule == 1 & TravelOnTrain_can_find_jny_updates == 1 & TravelOnTrain_delays_helpfully_communicated == 1 & TravelOnTrain_apologies_made_delays == 1
                                & WaitingAtStation_visible_train_status == 1 & WaitingAtStation_delays_helpfully_communicated == 1 & Informed_before_during_after_Jny == 1 
                                & Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions == 1, 1, 
                                ifelse(Arriving_easily_find_trainconnection == 2 & Arriving_onward_travel_info == 2 & BuyingAhead_good_advance_comms == 2 & 
                                         BuyingAhead_easily_find_all_info_prior_jny == 2 & Exploring_see_offers_comms == 2 & Exploring_finding_train_times == 2
                                       & Exploring_find_trains_for_schedule == 2 & TravelOnTrain_can_find_jny_updates == 2 & TravelOnTrain_delays_helpfully_communicated == 2 & TravelOnTrain_apologies_made_delays == 2
                                       & WaitingAtStation_visible_train_status == 2 & WaitingAtStation_delays_helpfully_communicated == 2 & Informed_before_during_after_Jny == 2
                                       & Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions == 2, 2, 
                                       ifelse(Arriving_easily_find_trainconnection == 3 & Arriving_onward_travel_info == 3 & BuyingAhead_good_advance_comms == 3 & 
                                                BuyingAhead_easily_find_all_info_prior_jny == 3 & Exploring_see_offers_comms == 3 & Exploring_finding_train_times == 3
                                              & Exploring_find_trains_for_schedule == 3 & TravelOnTrain_can_find_jny_updates == 3 & TravelOnTrain_delays_helpfully_communicated == 3 & TravelOnTrain_apologies_made_delays == 3
                                              & WaitingAtStation_visible_train_status == 3 & WaitingAtStation_delays_helpfully_communicated == 3 & Informed_before_during_after_Jny == 3 & Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions == 3, 3, 
                                              ifelse(Arriving_easily_find_trainconnection == 4 & Arriving_onward_travel_info == 4 & BuyingAhead_good_advance_comms == 4 & 
                                                       BuyingAhead_easily_find_all_info_prior_jny == 4 & Exploring_see_offers_comms == 4 & Exploring_finding_train_times == 4
                                                     & Exploring_find_trains_for_schedule == 4 & TravelOnTrain_can_find_jny_updates == 4 & TravelOnTrain_delays_helpfully_communicated == 4 & TravelOnTrain_apologies_made_delays == 4
                                                     & WaitingAtStation_visible_train_status == 4 & WaitingAtStation_delays_helpfully_communicated == 4 & Informed_before_during_after_Jny == 4 & Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions == 4, 4, 
                                                     ifelse(Arriving_easily_find_trainconnection == 5 & Arriving_onward_travel_info == 5 & BuyingAhead_good_advance_comms == 5 & 
                                                              BuyingAhead_easily_find_all_info_prior_jny == 5 & Exploring_see_offers_comms == 5 & Exploring_finding_train_times == 5
                                                            & Exploring_find_trains_for_schedule == 5 & TravelOnTrain_can_find_jny_updates == 5 & TravelOnTrain_delays_helpfully_communicated == 5 & TravelOnTrain_apologies_made_delays == 5
                                                            & WaitingAtStation_visible_train_status == 5 & WaitingAtStation_delays_helpfully_communicated == 5 & Informed_before_during_after_Jny == 5 & Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions == 5, 5, 
                                                            ifelse(Arriving_easily_find_trainconnection == 6 & Arriving_onward_travel_info == 6 & BuyingAhead_good_advance_comms == 6 & 
                                                                     BuyingAhead_easily_find_all_info_prior_jny == 6 & Exploring_see_offers_comms == 6 & Exploring_finding_train_times == 6
                                                                   & Exploring_find_trains_for_schedule == 6 & TravelOnTrain_can_find_jny_updates == 6 & TravelOnTrain_delays_helpfully_communicated == 6 & TravelOnTrain_apologies_made_delays == 6
                                                                   & WaitingAtStation_visible_train_status == 6 & WaitingAtStation_delays_helpfully_communicated == 6 & Informed_before_during_after_Jny == 6 & Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions == 6, 6, 
                                                                   ifelse(Arriving_easily_find_trainconnection == 7 & Arriving_onward_travel_info == 7 & BuyingAhead_good_advance_comms == 7 & 
                                                                            BuyingAhead_easily_find_all_info_prior_jny == 7 & Exploring_see_offers_comms == 7 & Exploring_finding_train_times == 7
                                                                          & Exploring_find_trains_for_schedule == 7 & TravelOnTrain_can_find_jny_updates == 7 & TravelOnTrain_delays_helpfully_communicated == 7 & TravelOnTrain_apologies_made_delays == 7
                                                                          & WaitingAtStation_visible_train_status == 7 & WaitingAtStation_delays_helpfully_communicated == 7 & Informed_before_during_after_Jny == 7 & Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions == 7, 7, 
                                                                          ifelse(Arriving_easily_find_trainconnection == 8 & Arriving_onward_travel_info == 8 & BuyingAhead_good_advance_comms == 8 & 
                                                                                   BuyingAhead_easily_find_all_info_prior_jny == 8 & Exploring_see_offers_comms == 8 & Exploring_finding_train_times == 8
                                                                                 & Exploring_find_trains_for_schedule == 8 & TravelOnTrain_can_find_jny_updates == 8 & TravelOnTrain_delays_helpfully_communicated == 8 & TravelOnTrain_apologies_made_delays == 8
                                                                                 & WaitingAtStation_visible_train_status == 8 & WaitingAtStation_delays_helpfully_communicated == 8 & Informed_before_during_after_Jny == 8 & Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions == 8, 8, 
                                                                                 ifelse(Arriving_easily_find_trainconnection == 9 & Arriving_onward_travel_info == 9 & BuyingAhead_good_advance_comms == 9 & 
                                                                                          BuyingAhead_easily_find_all_info_prior_jny == 9 & Exploring_see_offers_comms == 9 & Exploring_finding_train_times == 9
                                                                                        & Exploring_find_trains_for_schedule == 9 & TravelOnTrain_can_find_jny_updates == 9 & TravelOnTrain_delays_helpfully_communicated == 9 & TravelOnTrain_apologies_made_delays == 9
                                                                                        & WaitingAtStation_visible_train_status == 9 & WaitingAtStation_delays_helpfully_communicated == 9 & Informed_before_during_after_Jny == 9 & Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions == 9, 9,
                                                                                        ifelse(Arriving_easily_find_trainconnection == 10 & Arriving_onward_travel_info == 10 & BuyingAhead_good_advance_comms == 10 & 
                                                                                                 BuyingAhead_easily_find_all_info_prior_jny == 10 & Exploring_see_offers_comms == 10 & Exploring_finding_train_times == 10
                                                                                               & Exploring_find_trains_for_schedule == 10 & TravelOnTrain_can_find_jny_updates == 10 & TravelOnTrain_delays_helpfully_communicated == 10 & TravelOnTrain_apologies_made_delays == 10
                                                                                               & WaitingAtStation_visible_train_status == 10 & WaitingAtStation_delays_helpfully_communicated == 10 & Informed_before_during_after_Jny == 10 & Easy_Acess_Relevant_Accurate_Info_Make_Informed_Decisions == 10, 10,
                                                                                               Arriving_easily_find_trainconnection)))))))))))

table(chiltern_ass$communication)

#Purchasing Ticketing 
#2_BuyingAhead_clear_price, 2_BuyingAhead_understand_railcard, 2_BuyingAhead_easily_buy_railcard, 2_BuyingAhead_easily_buy_advance_ticket, 2_BuyingAhead_easily_workout_best_ticket, 4_BuyingAtStation_easily_find_where_purchase_ticket, 
#4_BuyingAtStation_easily_use_TVM, 1_Exploring_ticket_type_is_clear, 1_Exploring_clear_how_buy_online_ticket, #4_BuyingAtStation_easily_buy_from_TO, 4_BuyingAtStation_agent_offers_best_ticket,

alpha(chiltern_ass[,c("BuyingAhead_clear_price", "BuyingAhead_understand_railcard", "BuyingAhead_easily_buy_railcard" , 
                      "BuyingAhead_easily_buy_advance_ticket", "BuyingAhead_easily_workout_best_ticket", "BuyingAtStation_easily_find_where_purchase_ticket", 
                      "BuyingAtStation_easily_use_TVM", "Exploring_ticket_type_is_clear", "Exploring_clear_how_buy_online_ticket",
                      "BuyingAtStation_easily_buy_from_TO", "BuyingAtStation_agent_offers_best_ticket")])
#result is 0.91

chiltern_ass <- mutate(chiltern_ass, ticketing = 
                         ifelse(BuyingAhead_clear_price == 1 & BuyingAhead_understand_railcard == 1 & BuyingAhead_easily_buy_railcard == 1 & 
                                  BuyingAhead_easily_buy_advance_ticket == 1 & BuyingAhead_easily_workout_best_ticket == 1 & BuyingAtStation_easily_find_where_purchase_ticket == 1
                                & BuyingAtStation_easily_use_TVM == 1 & Exploring_ticket_type_is_clear == 1 & Exploring_ticket_type_is_clear == 1 & Exploring_clear_how_buy_online_ticket == 1
                                & BuyingAtStation_easily_buy_from_TO == 1 & BuyingAtStation_agent_offers_best_ticket == 1, 1, 
                                ifelse(BuyingAhead_clear_price == 2 & BuyingAhead_understand_railcard == 2 & BuyingAhead_easily_buy_railcard == 2 & 
                                         BuyingAhead_easily_buy_advance_ticket == 2 & BuyingAhead_easily_workout_best_ticket == 2 & BuyingAtStation_easily_find_where_purchase_ticket == 2
                                       & BuyingAtStation_easily_use_TVM == 2 & Exploring_ticket_type_is_clear == 2 & Exploring_ticket_type_is_clear == 2 & Exploring_clear_how_buy_online_ticket == 2
                                       & BuyingAtStation_easily_buy_from_TO == 2 & BuyingAtStation_agent_offers_best_ticket == 2, 2, 
                                       ifelse(BuyingAhead_clear_price == 3 & BuyingAhead_understand_railcard == 3 & BuyingAhead_easily_buy_railcard == 3 & 
                                                BuyingAhead_easily_buy_advance_ticket == 3 & BuyingAhead_easily_workout_best_ticket == 3 & BuyingAtStation_easily_find_where_purchase_ticket == 3
                                              & BuyingAtStation_easily_use_TVM == 3 & Exploring_ticket_type_is_clear == 3 & Exploring_ticket_type_is_clear == 3 & Exploring_clear_how_buy_online_ticket == 3
                                              & BuyingAtStation_easily_buy_from_TO == 3 & BuyingAtStation_agent_offers_best_ticket == 3, 3, 
                                              ifelse(BuyingAhead_clear_price == 4 & BuyingAhead_understand_railcard == 4 & BuyingAhead_easily_buy_railcard == 4 & 
                                                       BuyingAhead_easily_buy_advance_ticket == 4 & BuyingAhead_easily_workout_best_ticket == 4 & BuyingAtStation_easily_find_where_purchase_ticket == 4
                                                     & BuyingAtStation_easily_use_TVM == 4 & Exploring_ticket_type_is_clear == 4 & Exploring_ticket_type_is_clear == 4 & Exploring_clear_how_buy_online_ticket == 4
                                                     & BuyingAtStation_easily_buy_from_TO == 4 & BuyingAtStation_agent_offers_best_ticket == 4, 4,  
                                                     ifelse(BuyingAhead_clear_price == 5 & BuyingAhead_understand_railcard == 5 & BuyingAhead_easily_buy_railcard == 5 & 
                                                              BuyingAhead_easily_buy_advance_ticket == 5 & BuyingAhead_easily_workout_best_ticket == 5 & BuyingAtStation_easily_find_where_purchase_ticket == 5
                                                            & BuyingAtStation_easily_use_TVM == 5 & Exploring_ticket_type_is_clear == 5 & Exploring_ticket_type_is_clear == 5 & Exploring_clear_how_buy_online_ticket == 5
                                                            & BuyingAtStation_easily_buy_from_TO == 5 & BuyingAtStation_agent_offers_best_ticket == 5, 5,  
                                                            ifelse(BuyingAhead_clear_price == 6 & BuyingAhead_understand_railcard == 6 & BuyingAhead_easily_buy_railcard == 6 & 
                                                                     BuyingAhead_easily_buy_advance_ticket == 6 & BuyingAhead_easily_workout_best_ticket == 6 & BuyingAtStation_easily_find_where_purchase_ticket == 6
                                                                   & BuyingAtStation_easily_use_TVM == 6 & Exploring_ticket_type_is_clear == 6 & Exploring_ticket_type_is_clear == 6 & Exploring_clear_how_buy_online_ticket == 6
                                                                   & BuyingAtStation_easily_buy_from_TO == 6 & BuyingAtStation_agent_offers_best_ticket == 6, 6, 
                                                                   ifelse(BuyingAhead_clear_price == 7 & BuyingAhead_understand_railcard == 7 & BuyingAhead_easily_buy_railcard == 7 & 
                                                                            BuyingAhead_easily_buy_advance_ticket == 7 & BuyingAhead_easily_workout_best_ticket == 7 & BuyingAtStation_easily_find_where_purchase_ticket == 7
                                                                          & BuyingAtStation_easily_use_TVM == 7 & Exploring_ticket_type_is_clear == 7 & Exploring_ticket_type_is_clear == 7 & Exploring_clear_how_buy_online_ticket == 7
                                                                          & BuyingAtStation_easily_buy_from_TO == 7 & BuyingAtStation_agent_offers_best_ticket == 7, 7,  
                                                                          ifelse(BuyingAhead_clear_price == 8 & BuyingAhead_understand_railcard == 8 & BuyingAhead_easily_buy_railcard == 8 & 
                                                                                   BuyingAhead_easily_buy_advance_ticket == 8 & BuyingAhead_easily_workout_best_ticket == 8 & BuyingAtStation_easily_find_where_purchase_ticket == 8
                                                                                 & BuyingAtStation_easily_use_TVM == 8 & Exploring_ticket_type_is_clear == 8 & Exploring_ticket_type_is_clear == 8 & Exploring_clear_how_buy_online_ticket == 8
                                                                                 & BuyingAtStation_easily_buy_from_TO == 8 & BuyingAtStation_agent_offers_best_ticket == 8, 8,  
                                                                                 ifelse(BuyingAhead_clear_price == 9 & BuyingAhead_understand_railcard == 9 & BuyingAhead_easily_buy_railcard == 9 & 
                                                                                          BuyingAhead_easily_buy_advance_ticket == 9 & BuyingAhead_easily_workout_best_ticket == 9 & BuyingAtStation_easily_find_where_purchase_ticket == 9
                                                                                        & BuyingAtStation_easily_use_TVM == 9 & Exploring_ticket_type_is_clear ==  9 & Exploring_ticket_type_is_clear == 9 & Exploring_clear_how_buy_online_ticket == 9
                                                                                        & BuyingAtStation_easily_buy_from_TO == 9 & BuyingAtStation_agent_offers_best_ticket == 9, 9, 
                                                                                        ifelse(BuyingAhead_clear_price == 10 & BuyingAhead_understand_railcard == 10 & BuyingAhead_easily_buy_railcard == 10 & 
                                                                                                 BuyingAhead_easily_buy_advance_ticket == 10 & BuyingAhead_easily_workout_best_ticket == 10 & BuyingAtStation_easily_find_where_purchase_ticket == 10
                                                                                               & BuyingAtStation_easily_use_TVM == 10 & Exploring_ticket_type_is_clear == 10 & Exploring_ticket_type_is_clear == 10 & Exploring_clear_how_buy_online_ticket == 10
                                                                                               & BuyingAtStation_easily_buy_from_TO == 10 & BuyingAtStation_agent_offers_best_ticket == 10, 10, 
                                                                                               BuyingAhead_clear_price)))))))))))
table(chiltern_ass$ticketing)


##Safety 
#6_TravelOnTrain_feel_safe, 6_TravelOnTrain_Staff_provide_reassurance, 5_WaitingAtStation_feel_safe, Train_Company_Ensured_My_Safety_Security

alpha(chiltern_ass[,c("TravelOnTrain_feel_safe", "TravelOnTrain_Staff_provide_reassurance", "WaitingAtStation_feel_safe", 
                      "Train_Company_Ensured_My_Safety_Security")])
#result is 0.8

chiltern_ass <- mutate(chiltern_ass, safety = 
                         ifelse(TravelOnTrain_feel_safe == 1 & TravelOnTrain_Staff_provide_reassurance == 1 & WaitingAtStation_feel_safe == 1 & Train_Company_Ensured_My_Safety_Security == 1, 1, 
                                ifelse(TravelOnTrain_feel_safe == 2 & TravelOnTrain_Staff_provide_reassurance == 2 & WaitingAtStation_feel_safe == 2 & Train_Company_Ensured_My_Safety_Security == 2, 2,
                                       ifelse(TravelOnTrain_feel_safe == 3 & TravelOnTrain_Staff_provide_reassurance == 3 & WaitingAtStation_feel_safe == 3 & Train_Company_Ensured_My_Safety_Security == 3, 3,   
                                              ifelse(TravelOnTrain_feel_safe == 4 & TravelOnTrain_Staff_provide_reassurance == 4 & WaitingAtStation_feel_safe == 4 & Train_Company_Ensured_My_Safety_Security == 4, 4,
                                                     ifelse(TravelOnTrain_feel_safe == 5 & TravelOnTrain_Staff_provide_reassurance == 5 & WaitingAtStation_feel_safe == 5 & Train_Company_Ensured_My_Safety_Security == 5, 5,
                                                            ifelse(TravelOnTrain_feel_safe == 6 & TravelOnTrain_Staff_provide_reassurance == 6 & WaitingAtStation_feel_safe == 6 & Train_Company_Ensured_My_Safety_Security == 6, 6, 
                                                                   ifelse(TravelOnTrain_feel_safe == 7 & TravelOnTrain_Staff_provide_reassurance == 7 & WaitingAtStation_feel_safe == 7 & Train_Company_Ensured_My_Safety_Security == 7, 7,
                                                                          ifelse(TravelOnTrain_feel_safe == 8 & TravelOnTrain_Staff_provide_reassurance == 8 & WaitingAtStation_feel_safe == 8 & Train_Company_Ensured_My_Safety_Security == 8, 8, 
                                                                                 ifelse(TravelOnTrain_feel_safe == 9 & TravelOnTrain_Staff_provide_reassurance == 9 & WaitingAtStation_feel_safe == 9 & Train_Company_Ensured_My_Safety_Security == 9, 9,
                                                                                        ifelse(TravelOnTrain_feel_safe == 10 & TravelOnTrain_Staff_provide_reassurance == 10 & WaitingAtStation_feel_safe == 10 & Train_Company_Ensured_My_Safety_Security == 10, 10, 
                                                                                               TravelOnTrain_feel_safe)))))))))))
table(chiltern_ass$safety)


##Ambience 
#6_TravelOnTrain_available_WiFi, 6_TravelOnTrain_sit_stand_comfortably, 6_TravelOnTrain_sockets_reach_working, 6_TravelOnTrain_space_for_luggage, 
#5_WaitingAtStation_nice_environment, _WaitingAtStation_WiFi_available, 5_WaitingAtStation_somewhere_to_sit

alpha(chiltern_ass[,c("TravelOnTrain_available_WiFi", "TravelOnTrain_sit_stand_comfortably", "TravelOnTrain_sockets_reach_working", 
                      "TravelOnTrain_space_for_luggage", "WaitingAtStation_nice_environment", "WaitingAtStation_WiFi_available",
                      "WaitingAtStation_somewhere_to_sit")])

#result is 0.87
chiltern_ass <- mutate(chiltern_ass, entire_ambience = 
                         ifelse(TravelOnTrain_available_WiFi == 1 & TravelOnTrain_sit_stand_comfortably == 1 & TravelOnTrain_sockets_reach_working == 1 & TravelOnTrain_space_for_luggage == 1
                                & WaitingAtStation_nice_environment == 1  & WaitingAtStation_WiFi_available == 1  & WaitingAtStation_somewhere_to_sit == 1, 1, 
                                ifelse(TravelOnTrain_available_WiFi == 2 & TravelOnTrain_sit_stand_comfortably == 2 & TravelOnTrain_sockets_reach_working == 2 & TravelOnTrain_space_for_luggage == 2
                                       & WaitingAtStation_nice_environment == 2  & WaitingAtStation_WiFi_available == 2  & WaitingAtStation_somewhere_to_sit == 2, 2,
                                       ifelse(TravelOnTrain_available_WiFi == 3 & TravelOnTrain_sit_stand_comfortably == 3 & TravelOnTrain_sockets_reach_working == 3 & TravelOnTrain_space_for_luggage == 3
                                              & WaitingAtStation_nice_environment == 3  & WaitingAtStation_WiFi_available == 3  & WaitingAtStation_somewhere_to_sit == 3, 3,   
                                              ifelse(TravelOnTrain_available_WiFi == 4 & TravelOnTrain_sit_stand_comfortably == 4 & TravelOnTrain_sockets_reach_working == 4 & TravelOnTrain_space_for_luggage == 4
                                                     & WaitingAtStation_nice_environment == 4  & WaitingAtStation_WiFi_available == 4  & WaitingAtStation_somewhere_to_sit == 4, 4,
                                                     ifelse(TravelOnTrain_available_WiFi == 5 & TravelOnTrain_sit_stand_comfortably == 5 & TravelOnTrain_sockets_reach_working == 5 & TravelOnTrain_space_for_luggage == 5
                                                            & WaitingAtStation_nice_environment == 5  & WaitingAtStation_WiFi_available == 5  & WaitingAtStation_somewhere_to_sit == 5, 5,
                                                            ifelse(TravelOnTrain_available_WiFi == 6 & TravelOnTrain_sit_stand_comfortably == 6 & TravelOnTrain_sockets_reach_working == 6 & TravelOnTrain_space_for_luggage == 6
                                                                   & WaitingAtStation_nice_environment == 6  & WaitingAtStation_WiFi_available == 6  & WaitingAtStation_somewhere_to_sit == 6, 6, 
                                                                   ifelse(TravelOnTrain_available_WiFi == 7 & TravelOnTrain_sit_stand_comfortably == 7 & TravelOnTrain_sockets_reach_working == 7 & TravelOnTrain_space_for_luggage == 7
                                                                          & WaitingAtStation_nice_environment == 7  & WaitingAtStation_WiFi_available == 7  & WaitingAtStation_somewhere_to_sit == 7, 7,
                                                                          ifelse(TravelOnTrain_available_WiFi == 8 & TravelOnTrain_sit_stand_comfortably == 8 & TravelOnTrain_sockets_reach_working == 8 & TravelOnTrain_space_for_luggage == 1
                                                                                 & WaitingAtStation_nice_environment == 8  & WaitingAtStation_WiFi_available == 8  & WaitingAtStation_somewhere_to_sit == 8, 8, 
                                                                                 ifelse(TravelOnTrain_available_WiFi == 9 & TravelOnTrain_sit_stand_comfortably == 9 & TravelOnTrain_sockets_reach_working == 9 & TravelOnTrain_space_for_luggage == 1
                                                                                        & WaitingAtStation_nice_environment == 9  & WaitingAtStation_WiFi_available == 9  & WaitingAtStation_somewhere_to_sit == 9, 9,
                                                                                        ifelse(TravelOnTrain_available_WiFi == 10 & TravelOnTrain_sit_stand_comfortably == 10 & TravelOnTrain_sockets_reach_working == 10 & TravelOnTrain_space_for_luggage == 1
                                                                                               & WaitingAtStation_nice_environment == 10  & WaitingAtStation_WiFi_available == 10  & WaitingAtStation_somewhere_to_sit == 10, 10, 
                                                                                               TravelOnTrain_feel_safe)))))))))))
table(chiltern_ass$entire_ambience)

#Puncuality 
#6_TravelOnTrain_departs_ontime
##remame
chiltern_ass <- chiltern_ass %>%
  rename(punctuality = 'TravelOnTrain_departs_ontime')
table(chiltern_ass$punctuality)

#satisfaction 
#Overall_Jny_CSAT
chiltern_ass <- chiltern_ass %>%
  rename(satisfactn_score = 'Overall_Jny_CSAT')
table(chiltern_ass$satisfactn_score)


#Accessibility
#Accessibility_NONE, Accessibility_Other, Accessibility_Vision, Accessibility_Hearing, Accessibility_Dexterity, Accessibility_Mobility, Accessibility_Learning, Accessibility_Memory, Accessibility_MentalHealth, 
#Accessibility_Fatigue, 

table(chiltern_ass$Accessibility_NONE)
chiltern_ass <- mutate(chiltern_ass, accessibility = 
                         ifelse(Accessibility_NONE == 0, 1, 0)) 
table(chiltern_ass$accessibility)                                

#assistance
#Assistance_Used
table(chiltern_ass$Assistance_Used)
##rename
chiltern_ass <- chiltern_ass %>%
  rename(assistance_user = 'Assistance_Used')


#travel history 
#Travelled_Last_7_days_Trains, Travelled_Last_7_days_Underground,
chiltern_ass <- mutate(chiltern_ass, frequent_travellers = 
                         ifelse(Travelled_Last_7_days_Trains == 1 & Travelled_Last_7_days_Underground == 1, 1,
                                ifelse(Travelled_Last_7_days_Trains == 0 & Travelled_Last_7_days_Underground == 0, 0,
                                       Travelled_Last_7_days_Trains)))
table(chiltern_ass$frequent_travellers)

##Demograpy 
#Ethnicity, Employment_Type, Purpose

##Pax_assist_CSAT

###select and export cleaned data 
##1181 obseration and 87 variable 


#####second conditions 
skim(chiltern_ass)
chiltern_ass <- mutate(chiltern_ass, punctuality2 = 
                         ifelse(punctuality <= 6, 0, 1))

table(chiltern_ass&punctuality2)

rw_data <- rw_data %>% filter (Q2b <= "70") %>%
  mutate(agegroup = ifelse(Q2b <= 24, "15-24",
                           ifelse(25 <= Q2b & Q2b <= 34,  "25-34",
                                  ifelse(35 <= Q2b & Q2b <= 44, "35-44",
                                         ifelse(45 <= Q2b & Q2b <= 54, "45-54",
                                                ifelse(55 <= Q2b & Q2b <= 64, "55-64",
                                                       ifelse(Q2b >=65, "65 and Older", Q2b)))))))



#######new document and regression
skim(chiltern_ass)
chiltern_clean <- select(chiltern_ass, response_id, CRS_CODE_DEPARTURE,  CRS_CODE_DESTINATION, ticket_type, sales_channel, RailCard,
                         Ethnicity, Employment_Type, Purpose, punctuality, satisfactn_score, cleanliness, customer_service, arrival_experience, communication, 
                         ticketing, safety, entire_ambience)


table(chiltern_clean$ticketing)
save(chiltern_clean, file = "chiltern_clean.RData")

write.csv(chiltern_clean, file = "chiltern_clean.csv", row.names = FALSE)


model1 <- lm(formula = satisfactn_score  ~ punctuality + cleanliness + customer_service + arrival_experience + communication + 
               ticketing + safety, data = chiltern_ass) 
summary(model1)




