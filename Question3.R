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


names(df)[sapply(df, is.numeric)] <- gsub("quast.", "", names(df)[sapply(df, is.numeric)])
names(df)[sapply(df, is.numeric)] <- gsub(".metric_value", "", names(df)[sapply(df, is.numeric)])
colnames(df)[colnames(df) == "confindr.percentage_contamination"] ="contamination_percent"
names(df)
