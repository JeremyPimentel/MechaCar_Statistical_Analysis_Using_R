# MechaCar_Statistical_Analysis_Using_R

## Linear Regression to Predict MPG
Using our linear regression analysis of the data, we can see that the slope of the linear model is is 10.85 mpg, indicating a non-zero and positive slope. Based on the calculatedf R-Squared values of 0.0084, and that our error in the slope is greater than the value of the slope, I would not say this model predicts mpg of prototypes effectively.
![image](https://user-images.githubusercontent.com/107723677/196224139-a6f9690a-5a73-4b4e-8742-b4471847af48.png)

## Summary Statistics on Suspension Coils 
**Total Summary**
![image](https://user-images.githubusercontent.com/107723677/196224501-081e5ab8-a30b-4d9f-a0da-a3301daf9888.png)
--
**Lot Summary**
![image](https://user-images.githubusercontent.com/107723677/196224613-457bc550-327b-43fd-921c-02273214c205.png)

Based on the data for all lots combined, the variance in PSI for the suspension coils does not exceed 100 PSI (calculated variance = 62.29).

However, looking at each lot individually, we noticed that Lot 3 has a caluclated variance of 170.29, which exceeds the limit of 100. Therefore, only Lots 1 and 2 are well below the variance limit of 100, but Lot 3 does not meet design specifications. 

## T-Tests on Suspension Coils 
**One Sample T-Test**
![image](https://user-images.githubusercontent.com/107723677/196225775-ef35fa5e-65bd-4f1e-ba74-33ed0ad7a408.png)
Based on our one sample T-Test, we fail to reject the null hypothesis that our population is not equal to 1500, based on our calculated p-value of 0.06 and CI of 95%, we can not argue that there is a statistically relevant effect on the population mean. 

**Two Sample T-Test**
![image](https://user-images.githubusercontent.com/107723677/196226473-74603492-c8fc-4c33-b989-bee2a728109d.png)
Based on our Two Sample T-Tests for Lot 1 and Lot 2, Lot 1 and Lot 3 and Lot 2 and Lot 3, we can determine the difference in means between each group. For lot 1 and 2, the p-value was calculated to be 0.6283, which means we fail to reject the null hypothesis that our true difference in means in not equal to 0. 

For Lot 1 and Lot 3, the p-value was calculated to be 0.04, which means we reject the null hypothesis that our true difference in means in not equal to 0. 

For Lot 2 and Lot 3, the p-value was calculated to be 0.035, which means we reject the null hypothesis that our true difference in means in not equal to 0. 


## Study Design: MechaCar vs Competition
To design a study to compare MechaCar vehicles and their competition, I would use variables such as safety ratings, fuel effiency, and price. I would need data from both companies that includes all vehicle types, their safety ratings, fuel efficiency and latest prices. 

I would first compare all vehicles from MechaCar and their competition based on these metrics and perform a Two-Sample T-Test for both companies. 

The null hypothesis would be that the true difference in means in not equal to zero. I would perform this test for each of the 3 variables: Safety ratings, price and fuel efficiency. 

If there were to be a difference in means for either the three variables, that could be used to determine valuable differentiators for consumers. 
