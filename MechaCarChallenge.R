library(dplyr)
library(tidyverse)
data <- read.csv("Assignment/MechaCar_mpg.csv")



## Linear Regression using lm()

reg <- lm(vehicle_length +ground_clearance + AWD + spoiler_angle + vehicle_weight ~ mpg, data=data)

summary(reg)


##Loading Suspension coil data
coil_data <- read.csv("Assignment/Suspension_Coil.csv")

##Creating Summary Table
total_summary <-summarize(coil_data, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

##Creating Lot Summary Using Group_by

##Create the grouped object
group_object<- coil_data %>% group_by(Manufacturing_Lot) 
  
  
##Create the new table with summarized data of the grouped object  
lot_summary<- summarize(group_object, Mean=mean(PSI), 
            Median=median(PSI), 
            Variance=var(PSI), 
            SD=sd(PSI),
            .groups='keep')

##Creating T-test

sample = coil_data[3]
t.test(sample, mu=1500, data=coil_data)

##T-test using Subset() function
population1 <- subset(coil_data, Manufacturing_Lot == 'Lot1')
mean(population1[['PSI']])

population2 <- subset(coil_data, Manufacturing_Lot == 'Lot2')
mean(population2[['PSI']])

population3 <- subset(coil_data, Manufacturing_Lot == 'Lot3')
mean(population3[['PSI']])

t.test(population1[['PSI']], population2[['PSI']])

t.test(population1[['PSI']], population3[['PSI']])

t.test(population3[['PSI']], population2[['PSI']])
