###Subject.ID
A number 1-30 representing an individual in the study.

###Activity.Name
A string representing the activity being done. Possible values:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

###Activity.ID

A number representing the activity being done. Same numbering as above.

The rest of the columns are means of the following columns from the data set: 

* tBodyAcc-mean()-XYZ
* tBodyAcc-std()-XYZ
* tGravityAcc-mean()-XYZ
* tGravityAcc-std()-XYZ
* tBodyAccJerk-mean()-XYZ
* tBodyAccJerk-std()-XYZ
* tBodyGyro-mean()-XYZ
* tBodyGyro-std()-XYZ
* tBodyGyroJerk-mean()-XYZ
* tBodyGyroJerk-std()-XYZ
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-XYZ
* fBodyAcc-std()-XYZ
* fBodyAcc-meanFreq()-XYZ
* fBodyAccJerk-mean()-XYZ
* fBodyAccJerk-std()-XYZ
* fBodyAccJerk-meanFreq()-XYZ
* fBodyGyro-mean()-XYZ
* fBodyGyro-std()-XYZ
* fBodyGyro-meanFreq()-XYZ
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyAccMag-meanFreq()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyAccJerkMag-meanFreq()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroMag-meanFreq()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()
* fBodyBodyGyroJerkMag-meanFreq()

Note: a name above ending in -XYZ means there are three columns, each ending in one of those three letters. e.g.
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z

Please see the `features_info.txt` file in the original data set for further description.
