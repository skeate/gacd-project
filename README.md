gacd-project
============

> The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

> You should create one R script called run_analysis.R that does the following.

> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
> 3. Uses descriptive activity names to name the activities in the data set
> 4. Appropriately labels the data set with descriptive variable names. 
> 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The file `run_analysis.R` produces this tidy dataset. How it works:

1. It will download and extract the data set if it does not already exist in the directory.
2. It loads the data from the test set and training set, by:
  1. reading in the X_, y_, and subject_ files for the respective set
  2. reading in the data names and activity labels
  3. giving the data frames headers
  4. extracting only those columns which are means or standard deviations
  5. concatenating them all into one table
  6. merging the activity labels in as another column
3. It combines the test and training sets
4. It uses `data.table` to group the data by subject ID/activity and average the rest of the columns
5. It writes that output (after some ordering) to `tidy.txt`
