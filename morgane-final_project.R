library(readr)
data <- read_csv("data.csv")
dim(data)
names(data)
summary(data)

# What is the relationship between an 
# individual's gender and their
# stance on abortion rights. 

# Descriptive statistics
#Gender
table(data$gender)
50/70 # 71 percent of candidates are men
20/70 # 29 percent of candidates are women
# abortion right
table(data$abortion_opinion)
33/70 # 47 percent of candidates are pro life
34/70 # 49 percent of candidates are pro choice
3/70  # 4 percent of candidates have no stated opinion

# Cross tabulation of gender and abortion opinion
table(data$gender, data$abortion_opinion)

# Chi squared
chisq.test(table(data$gender, data$abortion_opinion))

# Summary statistics for 1st variable 
mean(data$gender) 
sd(data$gender)

# summary statistics for 2nd variable - are these needed?
mean(data$abortion_opinion)
sd(data$abortion_opinion)







