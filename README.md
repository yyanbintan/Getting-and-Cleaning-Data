# Getting and Cleaning Data
This is my course project for the coursera course Getting and Cleaning Data. 

### Description of the project:
The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

### About UCI HAR (Human Activity Recognition Using Smartphones) Dataset
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available [HERE](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and the dataset is downloaded from [HERE](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

### Files in this repo:
* `<CodeBook.md>` is a code book that describes the workflow for this project.
* `<run_analysis.R>` is the R programming code that performs the workflow required in this project, which include: -
  * Merges the training and the test sets to create one data set.
  * Extracts only the measurements on the mean and standard deviation for each measurement.
  * Uses descriptive activity names to name the activities in the data set
  * Appropriately labels the data set with descriptive variable names.
  * From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* `<FinalData.txt>` is the final exported tidy data after going through the workflow above.
