library(tidyverse)
library(jsonlite)

# Deliverable 1 
# Step 1 Import the data which is a CSV file
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# We use linear regression to predict the mpg of mechacars
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg))

# Residual standard error: 8.774 on 44 degrees of freedom
# Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
# F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

### There is a summary that addresses all three questions (5 pt)



# Deliverable 2 
# Step 1 Import the data which is a CSV file (sus_coil)
sus_coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
# Summary Data Frame 
total_summary <- sus_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
# Group By (Lot)
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))



# Deliverable 3 
# Is the mean=1500 PSI in relation to all lots? 
t.test(sus_coil$PSI, mu = 1500)
# p-value = 0.06028 

# Seperate the 3 seperate lots  
Lot1 = subset(sus_coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(sus_coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(sus_coil, Manufacturing_Lot == 'Lot3')

# Perform t-tests on each lot to determine whether the mean is equal to 1500 or not
t.test(Lot1$PSI, mu = 1500) 
# p-value = 1
t.test(Lot2$PSI, mu = 1500)
# p-value = 0.6072
t.test(Lot3$PSI, mu = 1500)
# p-value = 0.04168


### A quicker method (Nesting)
# Lot 1: t.test(subset(sus_coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# Lot 2: t.test(subset(sus_coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Lot 3: t.test(subset(sus_coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

