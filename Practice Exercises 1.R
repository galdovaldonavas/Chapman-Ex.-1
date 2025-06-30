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
