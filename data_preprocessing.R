#external R script
library(dplyr)

#creating status column
df <- df %>%
  mutate(Status = case_when(
    Score >= 90 ~ "Excellent",
    Score >= 80 ~ "Good",
    Score >= 70 ~ "Average",
    TRUE ~ "Needs Improvement"
  ))

#filtering by age
df_filtered <- df %>%
  filter(Age > 20)

#average age statistic
average_age <- mean(df$Age)

#printing df data frame
print("Summary of the data frame:")
print(summary(df))

#writing csv of data frame
write_csv(df, "processed_data.csv")

#printing message if script properly ran
print("success! data preprocessing script executed")