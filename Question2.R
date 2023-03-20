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



count_of_contigs <- nrow(df[ df[[7]] <=50 & df[[9]] >= 750000, ])
count_of_contigs #this will return a value of 49
