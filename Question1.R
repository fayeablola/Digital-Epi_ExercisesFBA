#package used for manipulating data in dataframes
library(dplyr)
library(tidyr)

#package used for plotting graphs
library(ggplot2)


# Get the current path of your R script
current_path <- dirname(rstudioapi::getSourceEditorContext()$path)

# Set the working directory to the current path
setwd(current_path)


#importing of data.csv to dataframe
df <- read.csv("data.csv")


#Question 1 #using dplyr package
count_of_contam <- nrow(filter(df,confindr.contam_status.check_result == 'FAILURE' & confindr.percentage_contamination.metric_value > 5.0))
count_of_contam # this will return a value of 57
