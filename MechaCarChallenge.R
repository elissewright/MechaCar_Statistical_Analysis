# Part 1:
# Load libraries for project
library(dplyr)
library(tidyverse)

# Import MechaCar_mpg CSV and read it in as a DF
mecha_cars <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
# Inspect newly created DF
head(mecha_cars)

# Perform a linear regression with all variables, using the DF as the data parameter
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mecha_cars)

# Get summary, including p-values and r^2
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mecha_cars))

# -------------------------------------------------------------------------------------------------------------------------------------------------------

# Part 2:
# Import Suspension_Coil CSV and read it in as a DF
susp_coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
# Inspect newly created DF
head(susp_coil)

# Get a total summary of the DF, including mean, median, variance, and std dev of PSI column
total_summary <- susp_coil %>% summarize(mean_psi=mean(PSI),
                                         med_psi=median(PSI),
                                         var_psi=var(PSI),
                                         sd_psi=sd(PSI),
                                         .groups = 'keep')
# Check total_summary
total_summary

# Create a lot_summary DF to group each manufacturing lot and summarize the statistical measures 
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(mean_psi=mean(PSI), 
                                                                       med_psi=median(PSI), 
                                                                       var_psi=var(PSI), 
                                                                       sd_psi=sd(PSI), 
                                                                       .groups = 'keep')

# Check lot_summary
lot_summary

# Perform a t-test to determine if PSI across all lots is different from the population mean of 1500 PSI
t.test(susp_coil$PSI,mu=1500)

# Perform 3 more t-tests to see if PSI for each lot is different from the population mean of 1500 PSI
lot1 <- subset(susp_coil, Manufacturing_Lot == "Lot1")
lot2 <- subset(susp_coil, Manufacturing_Lot == "Lot2")
lot3 <- subset(susp_coil, Manufacturing_Lot == "Lot3")
t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)

