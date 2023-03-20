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


df <- df %>%
  mutate(across(everything(), as.character))


df %>%
  pivot_longer(
    cols = !sample_name, # select columns to be unpivoted
    names_to = "metric", # new column name  for the unpivoted column names
    values_to = "value", # new column name for the unpivoted column values
  ) %>%
  select(sample_name, metric, value)
