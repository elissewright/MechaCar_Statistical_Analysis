# MechaCars Statistical Analysis

## Summary Statistics on Suspension Coils

#### This analysis was performed on behalf of AutosRUs, in order to identify issues the production team may be facing in manufacturing their prototype MechaCar vehicle.
#### R Studio was used to evaluate variables that have an impact on miles per gallon (mpg), pounds per square inch (PSI) of square coils, and performance across various manufacturing lots across each other and other manufacturers.
#### The data set included 50 MechaCars. 

### Linear regression to identify which variables predict the mpg:
  ![linear regression](https://github.com/elissewright/MechaCar_Statistical_Analysis/blob/main/images/lm_models.png)
#### Across all variables that may have an impact on mpg, the only two which were stastically significant at 95% confidence level were vehicle length (p=2.6e-12) and ground clearance (p=5.21e-08).
#### The intercept was also statistically significant (p=5.08e-08), suggesting there may by other factors impacting mpg which were not included as variables within this data set.
#### R-squared value of 0.71 suggests that this model has an accuracy of 71% in terms of which factors predict mpg in MechaCars. 

### Summary statistics on PSI of suspension coils:
  ![Summary statistics](https://github.com/elissewright/MechaCar_Statistical_Analysis/blob/main/images/susp_coil_summary.png)
#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
#### With an average PSI variance of 62.29, the current manufacturing data meets this qualification across all of AutosRUs's lots together. Individually, the variances for Lot 1, Lot 2, and Lot 3 were 0.98, 7.47, and 170, respectively, revealing that only lots 1 and 2 were compliant. 

## T-Tests on Suspension Coils

### T-test comparing lots to each other and other manufacturers: 
![T-tests](https://github.com/elissewright/MechaCar_Statistical_Analysis/blob/main/images/ttest.png)

#### A t-test comparing suspension coils across all lots of AutosRUs suggested that the average was not statistically different from the population mean of 1500 PSI (p=0.06)
#### T-tests performed individually for each lot suggest that only lot 3 is statistically different from population mean of 1500 PSI (p=0.04)

## Study Design: MechaCar vs Competition
### A new car is a major investment, and there are many factors that impact consumers in determining which car to purchase across various manufacturers. 
### Global Consumer Data has [suggested](https://www.statista.com/chart/13075/most-important-factors-when-buying-a-car/#:~:text=According%20to%20data%20from%20Statista's,top%20priority%20when%20shopping%20around.) that the top two factors for many consumers are fuel efficientcy and safety, followed by price, suitability for daily use, and comfort. Design and customer service are ranked much lower in importance. 
### Given these findings, AutosRUs may want to focus on how they can improve mpg of the MechaCar in the future. 
### A study may be performed to compare MechaCar highway mpg to leading competitors, as well as evaluating safety performance compared to competitors via crash tests. 
### Metrics for both measures would be evaluated via series' of twenty two-sample t-tests, comparing mean mpg and safety performance of MechaCars to those of AutosRUs's top 10 competitor vehicles. Performing a series of t-tests as opposed to ANOVA would allow for the possibility to see which differences occur between MechaCars and specific competitors, as opposed to identifying the presence of differences but not knowing where they exist. 
#### Null hypothesis: There are no statistically significant differences in means of mpg and safety performance between MechaCar and the competitor vehicle. 
#### Alternative hypothesis: There are statistically significant differences in the means of mpg and safety performance between MechaCar and the competitor vehicle.
### In order to run this statistical test, we will need access to highway mpg data of at least 50 individual MechaCars, averaged together. We will also need data on MechaCar safety rating scores from dummy crash tests. In addition to means, we will also need to know the variances and distribution of all pools of data in order to determine if assumptions are met for 2-sample t-tests. 

