clear 

cd "C:\Users\Balazs_Tibor\Desktop\Archives\Econometrics_II_Part_II_Assignment_II\Data"

// Load your dataset
use "nsw.dta", clear

// Summary statistics for re75 and re78 by treat (0 and 1)
summarize re75 if treat == 0, meanonly
local mean_re75_treat0 = r(mean)

summarize re75 if treat == 1, meanonly
local mean_re75_treat1 = r(mean)

summarize re78 if treat == 0, meanonly
local mean_re78_treat0 = r(mean)

summarize re78 if treat == 1, meanonly
local mean_re78_treat1 = r(mean)

// Display the means
di "Mean earnings in 1975 (re75) for treat=0: " `mean_re75_treat0'
di "Mean earnings in 1975 (re75) for treat=1: " `mean_re75_treat1'
di "Mean earnings in 1978 (re78) for treat=0: " `mean_re78_treat0'
di "Mean earnings in 1978 (re78) for treat=1: " `mean_re78_treat1'

// Perform t-tests to compare means between treat=0 and treat=1 for re75 and re78
ttest re75, by(treat)
ttest re78, by(treat)

regress re78 treat age education black hispanic married nodegree

*The results - specifically, the difference between average real earnings between the treatment and control groups - are very similar. Since the experiment was conducted in 
*form of a randomized control trial I did not expect to see economically or statistically significant changes in the results by including additional control variable, since
*these covariates have been balanced out in prior due to the setup of the experiment