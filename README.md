# MechaCar_Statistical_Analysis
## Project Overview
We are looking at the automotive industry data through the lense of stats and R.

## Linear Regression to Predict MPG

![Screenshot 2023-03-29 at 4 22 28 PM](https://user-images.githubusercontent.com/117100491/228670791-2d2b9059-0b0c-48c8-aaa7-e0bc4e13909a.png)

- The summary output describes the probability that most the coefficients contribute to an amount of vairance to the linear model. Vehicle length and ground clearance are the non-random variants.
- The multi-linear model given is : mpg = 6.27 * vehicle_length + 1.25e-3 * vehicle_weigth + 6.88e-2 * spoiler_angle -3.41 * AWD + 3.55 * ground_clearance 1.04e+2
** AGAINST **
mpg = 6.27 * vehicle_length - 3.41 * AWD + 3.55 * ground_clearance - 104
- The slope is not zero.
- The variation in mpg can be attributed to the length, weight, drivetrain, ground clearance, and spoiler angle since the R-square is 71%.

## Summary Stats on Suspension Coils
![Screenshot 2023-03-29 at 4 30 21 PM](https://user-images.githubusercontent.com/117100491/228672210-2c804f2a-d2ac-452e-a6cb-bc9658a8e1ff.png)

**ALL MANUFACTURING LOTS**

![Screenshot 2023-03-29 at 4 29 50 PM](https://user-images.githubusercontent.com/117100491/228672301-298bbdbf-4c39-474b-aef2-cf516900f665.png)

**BY EACH MANUFACTURING LOT**

The design specifications are respected overall with a global variance of 62.3 psi. The lots show that 1 and 2 are respective in there variance with .98 & 7.5 while 3 is wwayyy out of specification and should be looked at.

## T-Test on Suspension Coils


![Screenshot 2023-03-29 at 4 40 29 PM](https://user-images.githubusercontent.com/117100491/228674147-2e9fbd08-ef46-4c03-835f-b5d6d181f380.png)

The p-value is above the significant level of .069. We cannot reject the hypothesis and can claim that the PSI is similar to the population mean.

**Lot1**

![Screenshot 2023-03-29 at 4 40 38 PM](https://user-images.githubusercontent.com/117100491/228674385-4e93489f-ce28-4caa-981e-e1695edd0a82.png)

Above, the p-value is below the significance level of 0.05 percent. We can reject the null hypothesis and conclude that the PSI across the Lot 1 is statistically different from the population mean.

**Lot2 & 3**

![Screenshot 2023-03-29 at 4 40 46 PM](https://user-images.githubusercontent.com/117100491/228674644-4a8be9f0-3a65-4ab8-8612-a6be7a56e845.png)


![Screenshot 2023-03-29 at 4 40 53 PM](https://user-images.githubusercontent.com/117100491/228674656-5c82f7a9-7d6b-4eab-9d2e-3bd6ee14e179.png)

With both p-values above the significance level, we can claim that Lot 2 & 3 are statistically similar to the population mean.

## Study Design: MechaCar v. Competition

Beginning this study, we will compare the following metrics to rate our performance:
- acceleration
- fuel economy
- safety rating
- cost
- city fuel efficieny

A null hypothesis would be the best test: each metric will be similar between MechaCar prototype and all other vehicles.

We should use an ANOVA test that will allow us to compare the numerical variables and compare metrics across manufacturers.

The data needed will come from the MechaCar stats and other manufacturer charts concerning acceleration, fuel economy, safety ratings, cost, and city fuel efficiency metrics.

