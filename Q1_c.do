clear 

cd "C:\Users\Balazs_Tibor\Desktop\Archives\Econometrics_II_Part_II_Assignment_II\Data"

// Load your dataset
use "nsw.dta", clear

*CPS

append using "cps_controls.dta"

// Summary statistics for re78 by treat (0 and 1)

summarize re78 if treat == 0, meanonly
local mean_re78_treat0 = r(mean)

summarize re78 if treat == 1, meanonly
local mean_re78_treat1 = r(mean)

// Display the means
di "Mean earnings in 1978 (re78) for treat=0: " `mean_re78_treat0'
di "Mean earnings in 1978 (re78) for treat=1: " `mean_re78_treat1'

// Perform t-tests to compare means between treat=0 and treat=1 for re75 and re78
ttest re78, by(treat)

regress re78 treat 

regress re78 treat age education black hispanic married nodegree

*CPS2

clear

// Load your dataset
use "nsw.dta", clear

append using "cps_controls2.dta"

// Summary statistics for re78 by treat (0 and 1)

summarize re78 if treat == 0, meanonly
local mean_re78_treat0 = r(mean)

summarize re78 if treat == 1, meanonly
local mean_re78_treat1 = r(mean)

// Display the means
di "Mean earnings in 1978 (re78) for treat=0: " `mean_re78_treat0'
di "Mean earnings in 1978 (re78) for treat=1: " `mean_re78_treat1'

// Perform t-tests to compare means between treat=0 and treat=1 for re75 and re78
ttest re78, by(treat)

regress re78 treat 

regress re78 treat age education black hispanic married nodegree

*CPS3

clear

// Load your dataset
use "nsw.dta", clear

append using "cps_controls3.dta"

// Summary statistics for re78 by treat (0 and 1)

summarize re78 if treat == 0, meanonly
local mean_re78_treat0 = r(mean)

summarize re78 if treat == 1, meanonly
local mean_re78_treat1 = r(mean)

// Display the means
di "Mean earnings in 1978 (re78) for treat=0: " `mean_re78_treat0'
di "Mean earnings in 1978 (re78) for treat=1: " `mean_re78_treat1'

// Perform t-tests to compare means between treat=0 and treat=1 for re75 and re78
ttest re78, by(treat)

regress re78 treat 

regress re78 treat age education black hispanic married nodegree


*PSID
clear

// Load your dataset
use "nsw.dta", clear

append using "psid_controls.dta"

// Summary statistics for re78 by treat (0 and 1)

summarize re78 if treat == 0, meanonly
local mean_re78_treat0 = r(mean)

summarize re78 if treat == 1, meanonly
local mean_re78_treat1 = r(mean)

// Display the means
di "Mean earnings in 1978 (re78) for treat=0: " `mean_re78_treat0'
di "Mean earnings in 1978 (re78) for treat=1: " `mean_re78_treat1'

// Perform t-tests to compare means between treat=0 and treat=1 for re75 and re78
ttest re78, by(treat)

regress re78 treat 

regress re78 treat age education black hispanic married nodegree

*PSID2
clear

// Load your dataset
use "nsw.dta", clear

append using "psid_controls2.dta"

// Summary statistics for re78 by treat (0 and 1)

summarize re78 if treat == 0, meanonly
local mean_re78_treat0 = r(mean)

summarize re78 if treat == 1, meanonly
local mean_re78_treat1 = r(mean)

// Display the means
di "Mean earnings in 1978 (re78) for treat=0: " `mean_re78_treat0'
di "Mean earnings in 1978 (re78) for treat=1: " `mean_re78_treat1'

// Perform t-tests to compare means between treat=0 and treat=1 for re75 and re78
ttest re78, by(treat)

regress re78 treat 

regress re78 treat age education black hispanic married nodegree

*PSID3

clear

// Load your dataset
use "nsw.dta", clear

append using "psid_controls3.dta"

// Summary statistics for re78 by treat (0 and 1)

summarize re78 if treat == 0, meanonly
local mean_re78_treat0 = r(mean)

summarize re78 if treat == 1, meanonly
local mean_re78_treat1 = r(mean)

// Display the means
di "Mean earnings in 1978 (re78) for treat=0: " `mean_re78_treat0'
di "Mean earnings in 1978 (re78) for treat=1: " `mean_re78_treat1'

// Perform t-tests to compare means between treat=0 and treat=1 for re75 and re78
ttest re78, by(treat)

regress re78 treat 

regress re78 treat age education black hispanic married nodegree


*Seemingly the more focused control group we use (either cps or psid) the larger the treatment effect will be