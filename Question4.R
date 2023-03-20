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

str(df)

ggplot(df, aes(x=quast.Total.length.....1000.bp..check_result, y=quast.Total.length.....1000.bp..metric_value,color=quast.Total.length.....1000.bp..check_result)) + 
  geom_boxplot(fill="slateblue", alpha=0.2) +  xlab("Total Length (metrics)") + ylab("Total Length (values)")  + theme(legend.position = "none")
