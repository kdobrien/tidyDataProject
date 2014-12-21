# Code book for tidy data set
This data set is based on data from the http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones web site.

The data set is available from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

## Description
From the README.txt file provided with the data set:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
  Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
  wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 
  3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been 
  video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, 
  where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled 
  in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, 
  which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body 
  acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a 
  filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating 
  variables from the time and frequency domain. See 'features_info.txt' for more details. 

Each value except subject and activity fall within the range of -1 to +1.

## Modifications to the original data set

The samsungDataSet provided differs from the orignal data set as follows:

* Data from the test and training data sets have been merged into a single data set.
* The subject and activity have been added into the data set rather than being provided as separate files
* Only the mean and standard deviation values are included with this data set.

## Data Elements

* **subject** - the test subject (1 to 30) that performed the activity
* **activity** - the activity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING or LAYING)
* **tBodyAcc-mean()-X** - The *mean* of tBodyAcc for the X axis
* **tBodyAcc-mean()-Y** - The *mean* of tBodyAcc for the Y axis
* **tBodyAcc-mean()-Z** - The *mean* of tBodyAcc for the Z axis
* **tBodyAcc-std()-X** - The *standard deviation*  of tBodyAcc for the X axis
* **tBodyAcc-std()-Y** - The *standard deviation*  of tBodyAcc for the Y axis
* **tBodyAcc-std()-Z** - The *standard deviation*  of tBodyAcc for the Z axis
* **tGravityAcc-mean()-X** - The *mean* of tGravityAcc for the X axis
* **tGravityAcc-mean()-Y** - The *mean* of tGravityAcc for the Y axis
* **tGravityAcc-mean()-Z** - The *mean* of tGravityAcc for the Z axis
* **tGravityAcc-std()-X** - The *standard deviation*  of tGravityAcc for the X axis
* **tGravityAcc-std()-Y** - The *standard deviation*  of tGravityAcc for the Y axis
* **tGravityAcc-std()-Z** - The *standard deviation*  of tGravityAcc for the Z axis
* **tBodyAccJerk-mean()-X** - The *mean* of tBodyAccJerk for the X axis
* **tBodyAccJerk-mean()-Y** - The *mean* of tBodyAccJerk for the Y axis
* **tBodyAccJerk-mean()-Z** - The *mean* of tBodyAccJerk for the Z axis
* **tBodyAccJerk-std()-X** - The *standard deviation*  of tBodyAccJerk for the X axis
* **tBodyAccJerk-std()-Y** - The *standard deviation*  of tBodyAccJerk for the Y axis
* **tBodyAccJerk-std()-Z** - The *standard deviation*  of tBodyAccJerk for the Z axis
* **tBodyGyro-mean()-X** - The *mean* of tBodyGyro for the X axis
* **tBodyGyro-mean()-Y** - The *mean* of tBodyGyro for the Y axis
* **tBodyGyro-mean()-Z** - The *mean* of tBodyGyro for the Z axis
* **tBodyGyro-std()-X** - The *standard deviation*  of tBodyGyro for the X axis
* **tBodyGyro-std()-Y** - The *standard deviation*  of tBodyGyro for the Y axis
* **tBodyGyro-std()-Z** - The *standard deviation*  of tBodyGyro for the Z axis
* **tBodyGyroJerk-mean()-X** - The *mean* of tBodyGyroJerk for the X axis
* **tBodyGyroJerk-mean()-Y** - The *mean* of tBodyGyroJerk for the Y axis
* **tBodyGyroJerk-mean()-Z** - The *mean* of tBodyGyroJerk for the Z axis
* **tBodyGyroJerk-std()-X** - The *standard deviation*  of tBodyGyroJerk for the X axis
* **tBodyGyroJerk-std()-Y** - The *standard deviation*  of tBodyGyroJerk for the Y axis
* **tBodyGyroJerk-std()-Z** - The *standard deviation*  of tBodyGyroJerk for the Z axis
* **tBodyAccMag-mean()** - The *mean* of tBodyAccMag
* **tBodyAccMag-std()** - The *standard deviation*  of tBodyAccMag
* **tGravityAccMag-mean()** - The *mean* of tGravityAccMag
* **tGravityAccMag-std()** - The *standard deviation*  of tGravityAccMag
* **tBodyAccJerkMag-mean()** - The *mean* of tBodyAccJerkMag
* **tBodyAccJerkMag-std()** - The *standard deviation*  of tBodyAccJerkMag
* **tBodyGyroMag-mean()** - The *mean* of tBodyGyroMag
* **tBodyGyroMag-std()** - The standard dweviation of tBodyGyroMag
* **tBodyGyroJerkMag-mean()** - The *mean* of tBodyGyroJerkMag
* **tBodyGyroJerkMag-std()** - The *standard deviation*  of tBodyGyroJerkMag
* **fBodyAcc-mean()-X** - The *mean* of fBodyAcc for the X axis
* **fBodyAcc-mean()-Y** - The *mean* of fBodyAcc for the Y axis
* **fBodyAcc-mean()-Z** - The *mean* of fBodyAcc for the Z axis
* **fBodyAcc-std()-X** - The *standard deviation*  of fBodyAcc for the X axis
* **fBodyAcc-std()-Y** - The *standard deviation*  of fBodyAcc for the Y axis
* **fBodyAcc-std()-Z** - The *standard deviation*  of fBodyAcc for the Z axis
* **fBodyAcc-meanFreq()-X** - The *mean* of fBodyAcc frequency for the X axis
* **fBodyAcc-meanFreq()-Y** - The *mean* of fBodyAcc frequency for the Y axis
* **fBodyAcc-meanFreq()-Z** - The *mean* of fBodyAcc frequency for the Z axis
* **fBodyAccJerk-mean()-X** - The *mean* of fBodyAccJerk for the X axis
* **fBodyAccJerk-mean()-Y** - The *mean* of fBodyAccJerk for the Y axis
* **fBodyAccJerk-mean()-Z** - The *mean* of fBodyAccJerk for the Z axis
* **fBodyAccJerk-std()-X** - The *standard deviation*  of fBodyAccJerk for the X axis
* **fBodyAccJerk-std()-Y** - The *standard deviation*  of fBodyAccJerk for the Y axis
* **fBodyAccJerk-std()-Z** - The *standard deviation*  of fBodyAccJerk for the Z axis
* **fBodyAccJerk-meanFreq()-X** - The *mean* of fBodyAccJerk frequency
* **fBodyAccJerk-meanFreq()-Y** - The *mean* of fBodyAccJerk frequqncy
* **fBodyAccJerk-meanFreq()-Z** - The *mean* of fBodyAccJerk frequency
* **fBodyGyro-mean()-X** - The *mean* of fBodyGyro for the X axis
* **fBodyGyro-mean()-Y** - The *mean* of fBodyGyro for the Y axis
* **fBodyGyro-mean()-Z** - The *mean* of fBodyGyro for the Z axis
* **fBodyGyro-std()-X** - The *standard deviation*  of fBodyGyro for the X axis
* **fBodyGyro-std()-Y** - The *standard deviation*  of fBodyGyro for the Y axis
* **fBodyGyro-std()-Z** - The *standard deviation*  of fBodyGyro for the Z axis
* **fBodyGyro-meanFreq()-X** - The *mean* of fBodyGyro frequency
* **fBodyGyro-meanFreq()-Y** - The *mean* of fBodyGyro frequency
* **fBodyGyro-meanFreq()-Z** - The *mean* of fBodyGyro frequency
* **fBodyAccMag-mean()** - The *mean* of fBodyAccMag
* **fBodyAccMag-std()** - The *standard deviation*  of fBodyAccMag
* **fBodyAccMag-meanFreq()** - The *mean* of fBodyAccMag frequency
* **fBodyBodyAccJerkMag-mean()** - The *mean* of fBodyBodyAccJerkMag
* **fBodyBodyAccJerkMag-std()** - The *standard deviation*  of fBodyBodyAccJerkMag
* **fBodyBodyAccJerkMag-meanFreq()** - The *mean* of fBodyBodyAccJerkMag frequency
* **fBodyBodyGyroMag-mean()** - The *mean* of fBodyBodyGyroMag
* **fBodyBodyGyroMag-std()** - The *standard deviation*  of fBodyBodyGyroMag
* **fBodyBodyGyroMag-meanFreq()** - The *mean* of fBodyBodyGyroMag frequency
* **fBodyBodyGyroJerkMag-mean()** - The *mean* of fBodyBodyGyroJerkMag
* **fBodyBodyGyroJerkMag-std()** - The *standard deviation*  of fBodyBodyGyroJerkMag
* **fBodyBodyGyroJerkMag-meanFreq()** - The *mean* of fBodyBodyGyroJerkMag frequency

