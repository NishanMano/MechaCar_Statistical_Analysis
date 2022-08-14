# MechaCar Challenge

## Overview: 

The purpose behind this project is to help AutosRUs with data analytics to select the most profitable line-up for their vehicles. This analysis will provide a clear interpretation of the statistics retrieved based on the data analyzed. There are various metrics used in carrying out this analysis. We look at the following metrics:

1. AWD Capabilities
2. Ground Clearance
3. MPG
4. PSI 
5. Vehicle Length
6. Weight 

## Deliverable 1: 
## Linear Regression to Predict MPG: 
![Linear_Regression](https://i.ibb.co/2NNr4Qh/Deliverable-1.png)

### Questions: 
(A) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

This data above was obtained after performing a multiple linear regression analysis which was used to identify the miles per gallon (mpg) of MechaCar prototypes. We used the MechaCar_mpg dataset which was provided to us by AutosRUs. We use five AWD, Ground Clearance, PSI, Vehicle Length and Weight. 
Based off of our model the p-test determines which variable may have provided a non-random amount of variance to the mpg values. In this case, the two variables were:

1. Ground Clearance
2. Vehicle Length 

The two variables would not provide a statistical result of variance which is what is required for our model. The variance of a non-random variable is almost always 0. This is why we use this property to check out our Pr(>|t|) column and view the results. For vehicle_length = 2.60e-12, which is extremely close to 0. The same follows for ground clearance = 5.21e-08. 

(B) Is the slope of the linear model considered to be zero? Why or why not?

Using our significance level of 0.05, we would reject the null hypothesis due to the very small p-value. Slope (β1) is considered to equal 0 in terms of the null hypothesis. We would reject the null hypothesis which means that we believe that the slope (β1) is not equal to 0. This would conclude that the relationship shared between the variables and mpg is due to more than just chance. 

(C) Does this linear model predict the mpg of MechaCar prototypes effectively? Why or why not?

Overall the analysis would prove to be effective in MPG predictions of MechaCar prototypes. The R-Squared value increases when we use more variables for the regression. Adjusted R-Square controls this issue and adds a penalty for multiple predictors used in the model. We see that in our analysis the adjusted R-square provides an answer of 0.6825 which indicates that the linear model has a strong correlation and can be used to predict the mpg of MechaCar prototypes. 

## Deliverable 2: 
## Summary Statistics on Suspension Coils 

![Dataset2](https://i.ibb.co/xhWCM7C/sus-coil.png)

The dataset above was used to compare the company's suspensions coils' PSI continuous variable across all 3 manufacturing lots. We have 150 entries which would be a suitable sample size to draw a conclusion from. 

![TotalSummary](https://i.ibb.co/R4RcvT9/total-summary.png) 

When we look at the overall statistics of the three lots combined we are able to see that the variance level between the PSI is below 100 which is good. 

![LotSummary](https://i.ibb.co/jHRps67/lot-summary.png) 

Upon taking a closer analysis of each individual lot we are able to track a problem that we had not noticed earlier. Lot 3 poses a major problem as its variance among PSI is close to 170.29. This exceeds our 100 PSI variance threshold. If you take a closer look at the other two lots you see that they are in a single-digit variance. 

## Deliverable 3: 
## T-Tests on Suspension Coils

### All Lots Combined:
![Lot_T-Test](https://i.ibb.co/Dr0Kmfn/t-test.png)

We would fail to reject the null hypothesis as the lot as a whole has a p-value that equals 0.06. Since 0.06 > 0.05, we would not reject the fact that the sample mean may possibly equal the true population mean. 

### Smaller Lots: 
Lot 1: (Mean = 1500) 

![Lot1](https://i.ibb.co/f8s9byd/3-1.png) 

We would not reject the null hypothesis as the p-value equals 1 which is greater than 0.05. We don't have enough statistical differences between the sample mean and population mean. 

95% CI for Lot 1 = [ 1499.719 , 1500.281 ] 

Lot 2: (Mean = 1500.2)

![Lot2](https://i.ibb.co/Fs3d9QL/3-2.png)

We would follow the same path as Lot 1 and not reject the null hypothesis as the p-value for this lot is 0.6072 > 0.05. 

95% CI for Lot 2 = [ 1499.423 , 1500.977 ] 

Lot 3: (Mean = 1496.14)

![Lot3](https://i.ibb.co/Mh2Yt1h/3-3.png)

You would reject the null hypothesis in this case as the p-value 0.04168 < 0.05. The mean of this lot is much smaller than Lot 1 and Lot 2. 

95% CI for Lot 3 = [ 1492.431 , 1499.849 ] 

Notice that the Confidence Interval for Lot 3 does not even include the population mean which is equivalent to 1500. 

## Deliverable 4: 
## Study Design: MechaCar vs Competition 
We could check our vehicle safety features and highway fuel efficiency vs our competitors' vehicles. If we are able to reach a very high rating in both fields, we can advertise that we are providing fuel-efficient cars that have top-level safety ratings. This would appeal to today's audience, as gas prices are skyrocketing and safety has always been a concern. 

Null Hypothesis: 
There is no difference in fuel efficiency and safety features between MechaCar vehicles in comparison to the competitor vehicles. 

Alternative Hypothesis:
There are differences in fuel efficiency and safety features between MechaCar vehicles in comparison to the competitor vehicles. 

In cases that reject the null hypothesis, I would further investigate whether there is a correlation between the number of sales & the company with more vehicles that have better fuel efficiency and safety features. 

We would use the multiple linear regression statistical summary because we are trying to look for a correlation between fuel efficiency and safety features. 

We would focus on safety features and fuel efficiency on vehicles from both MechaCar as well as competitors' vehicles. We would perform random sampling on the dataset and provide our statistical analysis. 
