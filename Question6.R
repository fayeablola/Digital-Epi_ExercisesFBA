#package used for manipulating data in dataframes
library(dplyr)
library(tidyr)

#package used for plotting graphs
library(ggplot2)
library(gridExtra)

# Get the current path of your R script
current_path <- dirname(rstudioapi::getSourceEditorContext()$path)

# Set the working directory to the current path
setwd(current_path)


#importing of data.csv to dataframe
df <- read.csv("data.csv")


contam_status_violin_plt<-ggplot(df, aes(x=confindr.contam_status.check_result, y=confindr.percentage_contamination.metric_value,color=confindr.contam_status.check_result)) +
  geom_violin(trim=FALSE) + geom_jitter(shape=16, position=position_jitter(0.2)) + xlab("Contamination Status") + ylab("Contamination Percentage")  + theme(legend.position = "none")

contigs_violin_plt<-ggplot(df, aes(x=quast...contigs.....1000.bp..check_result, y=quast...contigs....1000.bp..metric_value,color=quast...contigs.....1000.bp..check_result)) +
  geom_violin(trim=FALSE) + geom_jitter(shape=16, position=position_jitter(0.2)) + xlab("Contigs(metrics)") + ylab("Contigs(values)")  + theme(legend.position = "none")

n50_violin_plt<-ggplot(df, aes(x=quast.N50.check_result , y=quast.N50.metric_value,color=quast.N50.check_result )) +
  geom_violin(trim=FALSE) + geom_jitter(shape=16, position=position_jitter(0.2)) + xlab("N50(metrics)") + ylab("N50(values)") + theme(legend.position = "none")

total_length_violin_plt<-ggplot(df, aes(x=quast.Total.length.....1000.bp..check_result , y=quast.Total.length.....1000.bp..metric_value ,color=quast.Total.length.....1000.bp..check_result )) +
  geom_violin(trim=FALSE) + geom_jitter(shape=16, position=position_jitter(0.2)) + xlab("Total Length(metrics)") + ylab("Total Lenght(values)") + theme(legend.position = "none")

grid.arrange(contam_status_violin_plt, contigs_violin_plt, n50_violin_plt, total_length_violin_plt, ncol=2, top="Combined Violin Plots")


