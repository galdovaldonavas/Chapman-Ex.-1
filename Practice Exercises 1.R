# =======================================
# ACTIVATING THE PROGRAMS
# =======================================

# Main programs used:
library(readxl)#to see the database
library(openxlsx)#to save the database in excel
library (lavaan)#to conduct the confirmatory factor analyses
library(MVN)#to obtain the htmt ratio
library(matrixStats) # to recode a variable with the maximum value of other variables
library(tidyr) # To reorganize the database so that each response is a case (for multilevel analysis)
library(ordinal) # For the logaritmic analyses with multilevel control in ordinal variables
library(lme4) # for multilevel analyisis in regression
library(lmerTest)  # Para p-values en multilevel analysis
library(tidyverse) #to select variables in the database
library(semTools) # to calculate the htmt ratio
library(writexl)
library(effsize)
library(dplyr)
library(psych)
library(summarytools) # para ver las frequencias de mi dataset
library(tidyr)
library(dplyr)
library(afex) #for repeated measures anova following same approach than SPSS and JASP
library(emmeans) # for posthoc tests in repeated measures Anova
library(ggplot2) # fo plots
library(ggformula) # also for plots
library(mosaic) # basic statistics
library(ARTool) # non parametric analyses for models that have between and within factors
library(effectsize)
library(nnet) # for logistic regression to predict ordinal variables
library (MASS) # for logistic regression to predict multicategorical nominal variables
library(brms) # for logistic regression to predict multicategorical nominal variables with multilevel correction (uses bayesian inference, so also for logistic regression with Bayes). 
library(moderndive) # for ANOVA analyses
library(factoextra) # for cluster analysis con K means
library(BayesFactor) # for bayesian analyses
library(supernova) #for ANOVA analyses, different package
library(mosaicCalc) # to do shuffle demonstrations of estimations of b1 from models

##1. Vector for all months
Months <- c("January", "February", "March", "April", "May", "June", "July", "August", "September", "November", "December")
Months

##2. Vector for summer months
Summer <- Months[6:9]
Summer

#correction
Summer<- 6:9

##3. Using the prior vector to obtain the summer months
Months[Summer]

##4. Loading the months resulting from multiplying the summer index by 3
Summer*3
Months[Summer*3]
#I obtain NA because the vector is shorter than the positions requested  E.g., there is no position 18 in the vector. 

##5. Obtaining the month corresponding to the mean time passed across all summer days
mean(Summer)
Months[mean(Summer)]

##6. Using floor() and celing() to see the upper and lower limits of the mean for the mean of time passed across all summer days
?ceiling()
Months[ceiling(mean(Summer))]
Months[floor(mean(Summer))]

##7. Using the store df , obtaining data about visits done by Bert's store

store.num <- factor(c(3, 14, 21, 32, 54))   # store id
store.rev <- c(543, 654, 345, 678, 234)     # store revenue, $1000
store.visits <- c(45, 78, 32, 56, 34)       # visits, 1000s
store.manager <- c("Annie", "Bert", "Carla", "Dave", "Ella")
(store.df <- data.frame(store.num, store.rev, store.visits,
                        store.manager, stringsAsFactors=F))  # F = FALSE
store.df[2,3]

##8. To make sure it corresponds to Bert, we print the whole line
store.df[2, ]

##9. Writing a function to that takes the radio of a slice of a pie and give us the length of the circunference of the whole pie: 
circunference <- function(x){
  radio<-x #we just call the imput as the radio
  pi <- 3.1416
  formula_circ <-pi*radio^2
  return(formula_circ)
  
}
circunference(1)

##10.Using the formula for a series of slices
slices<- c(1,4,4.5,5,6)
circunference(slices)


##11. Obtaining the same information without using the function above

3.1416*slices^2


