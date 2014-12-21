# tidyDataProject - Create Tidy Data Set

This repository provides information for the Coursera *Getting and Cleaning Data* class project.

The *run_analysis.R* program is used with data from the data from the data set described on the
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones web site.

The program requires the following files to be in the working directory when running the
*run_analysis.R* program.

* X_train.txt - from train/X_train.txt which contains the training data set
* subject_train.txt - from train/subject_train.txt which identifies the subject for each row of the training data set
* y_train.txt - from train/y_train.txt which contains the activity for each row of the training data set.
* X_test.txt - from test/X_test.txt which contains the test data set
* subject_test.txt - from test/subject_train.txt which identifies the subject for each row of the test data set
* y_test.txt - from test/y_test.txt which contains the activity for each row of the test data set.
* features.txt - the labels for each of the columns in the data sets
* activity_labels.txt - the labels for each of the activities in the y_*.txt files

## Libraries

The *run_analysis.R* program requires the LaF (large ascii file) package to handle the large data set on computers
with insufficient memory to directly load all data using the standard read.* commands.

## Transform Description

The *run_analysis.R* program creates the output file *samsungDataSet.txt* using the following steps:

* Read the X_train.txt data set and add the subjects (subject_train.txt) and activities (y_train.txt) columns
  at the start of the data set.  At this point, the activities are simply numbers rather than labels.
* Read the Y_test.txt data set add add the subjects (subject_test.txt) and activities (y_test.txt) columns
  at the start of the test data set.
* Merge the two data sets using rbind.
* Load the feature labels (labels for columns 3 and larger) from the features.txt file.  Use these to set
  the column names of all columns (adding the subject and activity column names that were added in the first
  steps.
* Extract the first two columns (subject and activity) and any other column whose name contains "-std" or
  *-mean*.  This gives a data set with only mean values and standard deviation values.
* Convert the numeric values of the activity column into labels.  This is done by converting the
  activity values to factors (as.factor(data$activity)) and then changing the labels to the labels
  obtained from the activity_labels.txt file.
* Aggregate the resulting data by subject + activity and provide the average value for each mean and
  standard deviation.


