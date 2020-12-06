#===================================================================================================================================#
#-------------------------------------- Coursera - Getting and Cleaning Data: Course Project ---------------------------------------#
#===================================================================================================================================#


# Download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Set working directory

setwd("D:/Google Drive (tanyb@tarc.edu.my)/My Courses - Attended/Coursera/Getting and Cleaning Data/UCI HAR Dataset")

library(dplyr)

#-----------------------------------------------------------------------------------------------------------------------------------#
# ==> 4: Appropriately labels the data set with descriptive variable names.
# ==> 1: Merges the training and the test sets to create one data set

# Read data and create data objects

traindata <- cbind(read.table('./train/subject_train.txt'), 
                   read.table('./train/y_train.txt'), 
                   read.table('./train/X_train.txt'))

testdata <- cbind(read.table('./test/subject_test.txt'), 
                  read.table('./test/y_test.txt'),
                  read.table('./test/X_test.txt'))

data <- rbind(traindata, testdata)


# Rename columns

features <- tolower(read.table('features.txt')$V2)

colnames(data) <- c("subjectid", "label", features)


#-----------------------------------------------------------------------------------------------------------------------------------#
# ==> 2: Extracts only the measurements on the mean and standard deviation for each measurement.

meansd <- cbind(data[1:2], data[, grepl("mean\\(|std\\(", names(data))])


#-----------------------------------------------------------------------------------------------------------------------------------#
# ==> 3: Uses descriptive activity names to name the activities in the data set

# load the activity labels

activitylabels <- read.table('activity_labels.txt', col.names = c("label", "activity"))

data <- merge(activitylabels, data, by = 'label')

tidydata <- data %>%
  arrange(subjectid, label) %>% 
  select(-label)

#-----------------------------------------------------------------------------------------------------------------------------------#
# ==> 5: From 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

finaldata <- 
  tidydata %>% 
  group_by(subjectid, activity) %>%
  summarise_all(list(mean = mean))

write.table(finaldata, "FinalData.txt", row.name = FALSE)




