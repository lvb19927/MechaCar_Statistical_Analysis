 library(readr)
> MechaCar_mpg <- read_csv("WashU/MechaCar_Statistical_Analysis/Starter_Code-2/MechaCar_mpg.csv")
Rows: 50 Columns: 6                                                                                        
── Column specification ─────────────────────────────────────────────────────────────────────────────────────
Delimiter: ","
dbl (6): vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD, mpg

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> View(MechaCar_mpg)
> View(MechaCar_mpg)
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file 'MechaCar_mpg.csv': No such file or directory
> head(MechaCar_mpg)
# A tibble: 6 × 6
  vehicle_length vehicle_weight spoiler_angle ground_clearance   AWD   mpg
           <dbl>          <dbl>         <dbl>            <dbl> <dbl> <dbl>
1           14.7          6408.          48.8             14.6     1  49.0
2           12.5          5182.          90               14.4     1  36.8
3           20            8338.          78.6             12.3     0  80  
4           13.4          9420.          55.9             13.0     1  18.9
5           15.4          3773.          26.1             15.1     1  63.8
6           14.5          7287.          30.6             13.1     0  48.5
> lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg)

Call:
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = MechaCar_mpg)

Coefficients:
     (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  ground_clearance               AWD  
      -1.040e+02         6.267e+00         1.245e-03         6.877e-02         3.546e+00        -3.411e+00  

> library(tidyverse) #import tidyverse package
── Attaching core tidyverse packages ───────────────────────────────────────────────────── tidyverse 2.0.0 ──
✔ forcats   1.0.0     ✔ stringr   1.5.0
✔ ggplot2   3.4.1     ✔ tibble    3.2.1
✔ lubridate 1.9.2     ✔ tidyr     1.3.0
✔ purrr     1.0.1     
── Conflicts ─────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
ℹ Use the conflicted package to force all conflicts to become errors
> library(tidyverse)
> mechaCarData <- read_csv("Resources/MechaCar_mpg.csv") #import MechaCar data
Error: 'Resources/MechaCar_mpg.csv' does not exist in current working directory ('/Users/lainevandenbrink').
> setwd("/Users/lainevandenbrink/WashU/MechaCar_Statistical_Analysis")
> mechaCarData <- read_csv(".../MechaCar_mpg.csv") #import MechaCar data
Error: '.../MechaCar_mpg.csv' does not exist in current working directory ('/Users/lainevandenbrink/WashU/MechaCar_Statistical_Analysis').
> mechaCarData <- read_csv("MechaCar_mpg.csv") #import MechaCar data
Error: 'MechaCar_mpg.csv' does not exist in current working directory ('/Users/lainevandenbrink/WashU/MechaCar_Statistical_Analysis').
> mechaCarData <- read_csv("Starter_Code-2/MechaCar_mpg.csv") #import MechaCar data
Rows: 50 Columns: 6                                                                                        
── Column specification ─────────────────────────────────────────────────────────────────────────────────────
Delimiter: ","
dbl (6): vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD, mpg

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> head(mechaCarData) #display first rows of imported data
# A tibble: 6 × 6
  vehicle_length vehicle_weight spoiler_angle ground_clearance   AWD   mpg
           <dbl>          <dbl>         <dbl>            <dbl> <dbl> <dbl>
1           14.7          6408.          48.8             14.6     1  49.0
2           12.5          5182.          90               14.4     1  36.8
3           20            8338.          78.6             12.3     0  80  
4           13.4          9420.          55.9             13.0     1  18.9
5           15.4          3773.          26.1             15.1     1  63.8
6           14.5          7287.          30.6             13.1     0  48.5
> lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechaCarData) #generate multiple linear regression model

Call:
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    AWD + ground_clearance, data = mechaCarData)

Coefficients:
     (Intercept)    vehicle_length    vehicle_weight     spoiler_angle               AWD  ground_clearance  
      -1.040e+02         6.267e+00         1.245e-03         6.877e-02        -3.411e+00         3.546e+00  

> summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechaCarData)) #generate summary statistics

Call:
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    AWD + ground_clearance, data = mechaCarData)

Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

> suspension_coil_data <- read_csv("Resources/Suspension_Coil.csv") #import suspension coil data
Error: 'Resources/Suspension_Coil.csv' does not exist in current working directory ('/Users/lainevandenbrink/WashU/MechaCar_Statistical_Analysis').
> suspension_coil_data <- read_csv("Starter_Code-2/Suspension_Coil.csv") #import suspension coil data
Rows: 150 Columns: 3                                                                                                                            
── Column specification ─────────────────────────────────────────────────────────────────────────────────────
Delimiter: ","
chr (2): VehicleID, Manufacturing_Lot
dbl (1): PSI

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> head(suspension_coil_data)
# A tibble: 6 × 3
  VehicleID Manufacturing_Lot   PSI
  <chr>     <chr>             <dbl>
1 V40858    Lot1               1499
2 V40607    Lot1               1500
3 V31443    Lot1               1500
4 V6004     Lot1               1500
5 V7000     Lot1               1501
6 V17344    Lot1               1501
> total_summary <- suspension_coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create total summary table
> total_summary
# A tibble: 1 × 4
   Mean Median Variance    SD
  <dbl>  <dbl>    <dbl> <dbl>
1 1499.   1500     62.3  7.89
> lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create lot summary table
> lot_summary
# A tibble: 3 × 5
# Groups:   Manufacturing_Lot [3]
  Manufacturing_Lot  Mean Median Variance     SD
  <chr>             <dbl>  <dbl>    <dbl>  <dbl>
1 Lot1              1500   1500     0.980  0.990
2 Lot2              1500.  1500     7.47   2.73 
3 Lot3              1496.  1498.  170.    13.0  
> global_sample_table <- suspension_coil_data %>% sample_n(50) #randomly sample 50 data points
> plt <- ggplot(suspension_coil_data,aes(x=PSI)) #import all coil data into ggplot2
> plt + geom_density() #visualize distribution with density plot
> plt <- ggplot(global_sample_table,aes(x=PSI)) #import sample coil data into ggplot2
> plt + geom_density() #visualize distribution with density plot
> plt <- ggplot(global_sample_table,aes(x=log10(PSI))) #import sample coil data into ggplot2
> plt + geom_density() #visualize distribution with density plot
> t.test(global_sample_table$PSI,mu=mean(suspension_coil_data$PSI)) #compare sample versus population mean

	One Sample t-test

data:  global_sample_table$PSI
t = -0.71842, df = 49, p-value = 0.4759
alternative hypothesis: true mean is not equal to 1498.78
95 percent confidence interval:
 1496.046 1500.074
sample estimates:
mean of x 
  1498.06 

> psi_lot1_sample <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot1') %>% sample_n(25) #create a sample table of 25 data points with Lot 1
> t.test(psi_lot1_sample$PSI,mu=mean(suspension_coil_data$PSI)) #compare Lot1 sample versus population mean

	One Sample t-test

data:  psi_lot1_sample$PSI
t = 5.1947, df = 24, p-value = 2.54e-05
alternative hypothesis: true mean is not equal to 1498.78
95 percent confidence interval:
 1499.491 1500.429
sample estimates:
mean of x 
  1499.96 

> psi_lot2_sample <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot2') %>% sample_n(25) #create a sample table of 25 data points with Lot 2
> t.test(psi_lot2_sample$PSI,mu=mean(suspension_coil_data$PSI)) #compare Lot2 sample versus population mean

	One Sample t-test

data:  psi_lot2_sample$PSI
t = 2.5831, df = 24, p-value = 0.01632
alternative hypothesis: true mean is not equal to 1498.78
95 percent confidence interval:
 1499.106 1501.694
sample estimates:
mean of x 
   1500.4 

> psi_lot3_sample <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot3') %>% sample_n(25) #create a sample table of 25 data points with Lot 3
> t.test(psi_lot3_sample$PSI,mu=mean(suspension_coil_data$PSI)) #compare Lot3 sample versus population mean

	One Sample t-test

data:  psi_lot3_sample$PSI
t = -1.7341, df = 24, p-value = 0.09573
alternative hypothesis: true mean is not equal to 1498.78
95 percent confidence interval:
 1489.975 1499.545
sample estimates:
mean of x 
  1494.76 