# Step 1
# Import studeent data to R
Students <- read.table("Student_Data.txt", header = T, sep = ",")

# Load required packages
install.packages("plyr")
library(plyr)

# Mean command based on sex
Students_Gendered_Mean <- ddply(Students, "Sex", transform, Grade.Average = mean(Grade))

# Step 2
# Write new data into new file
write.table(Students_Gendered_Mean, "Students_Gendered_Mean")

# Filter original data set to include only data for which the student name contains the letter i
i_students <- subset(Students, grepl("i", Students$Name, ignore.case = T))

# Step 3
# Write filtered data set and convert it to CSV file
write.table(i_students, "iStudent_DataSet.csv", sep = ",")
