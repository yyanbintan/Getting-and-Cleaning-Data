# Code Book

## Variables:
* `subjectid` - ranged from 1 to 30, represents the 30 volunteers involved in the experiment.
* `activitylabel` - each subject is required to perform 6 activities (labeled as follow) wearing a smartphone (Samsung Galaxy S II) on the waist.
  * `1` - walking
  * `2` - walking upstairs
  * `3` - walking downstairs
  * `4` - sitting
  * `5` - standing
  * `6` - laying
* `features` - signals produced were used to estimate 561 variables of various feature vectors.

## Reference:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

## Workflow:
* Download the files from [HERE](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip to a preferred local work directory. Set the work directory in R code with `setwd()` function.
* Load data for the `features` and the `activity_labels`, as well as those in the `train` and `test` folders.
* **Task 4** is achieved by creating `traindata` using `cbind` function to bind the `subject_id`, `activity_label`, and `feature data` for the training data. Repeat for the testing data and create `testdata`.
* **Task 1** is achieved by creating `data` dataset to merge the training and the test sets as one data set.
* Rename the columns in `data` dataset according to the `features` list.
* **Task 2** is achieved by extracting columns that represent measurements on the mean and standard deviation for each measurement. The extracted columns are stored in the `meansd` dataset.
* **Task 3** is achieved by merging the `activity_labels` into `data` so that the activity done are labelled by descriptive words instead of numeric labels.
* **Task 5** is achieved by getting the mean after implementing the `group_by` function in `dplyr` package to group `data` with `subject_id` and `activity`.
* After going through the previous tasks, the final dataset is exported as `FinalData.txt` file.
