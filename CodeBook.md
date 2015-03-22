# CodeBook

This file describes the variables, the data, and any transformations or work performed to clean up the data.

## DataSource

[Original data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  
[Original description of the dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## DataSet Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Description of the tidy Data

The dataset include a file named 'UCIAgregateData.txt' with the mean by subject and activity of the following variables:

Column            | Description
------------------|----------------------------------------------------------------------------------------------------
tBodyAcc-mean()-X | Mean of the X direction of the body linear acceleration signal (time domain signal)
tBodyAcc-mean()-Y | Mean of the Y direction of the body linear acceleration signal (time domain signal)
tBodyAcc-mean()-Z | Mean of the Z direction of the body linear acceleration signal (time domain signal)
tBodyAcc-std()-X | Standard deviation of the X direction of the body linear acceleration signal (time domain signal)
tBodyAcc-std()-Y | Standard deviation of the Y direction of the body linear acceleration signal (time domain signal)
tBodyAcc-std()-Z | Standard deviation of the Z direction of the body linear acceleration signal (time domain signal)
tGravityAcc-mean()-X | Mean of the X direction of the gravity acceleration signal (time domain signal)
tGravityAcc-mean()-Y | Mean of the Y direction of the gravity acceleration signal (time domain signal)
tGravityAcc-mean()-Z | Mean of the Z direction of the gravity acceleration signal (Time Signal) (time domain signal)
tGravityAcc-std()-X | Standard deviation of the X direction of the gravity acceleration signal (time domain signal)
tGravityAcc-std()-Y | Standard deviation of the Y direction of the gravity acceleration signal (time domain signal)
tGravityAcc-std()-Z | Standard deviation of the Z direction of the gravity acceleration signal (time domain signal)
tBodyAccJerk-mean()-X | Mean of the X direction of the Jerk signal, derived from the body linear acceleration signal (time domain signal)
tBodyAccJerk-mean()-Y | Mean of the Y direction of the Jerk signal, derived from the body linear acceleration signal (time domain signal)
tBodyAccJerk-mean()-Z | Mean of the Z direction of the Jerk signal, derived from the body linear acceleration signal (time domain signal)
tBodyAccJerk-std()-X | Standard deviation of the X direction of the Jerk signal, derived from the body linear acceleration signal (time domain signal)
tBodyAccJerk-std()-Y | Standard deviation of the Y direction of the Jerk signal, derived from the body linear acceleration signal (time domain signal)
tBodyAccJerk-std()-Z | Standard deviation of the Z direction of the Jerk signal, derived from the body linear acceleration signal (time domain signal)
tBodyGyro-mean()-X | Mean of the X direction of the body gyroscope signal (time domain signal)
tBodyGyro-mean()-Y | Mean of the Y direction of the body gyroscope signal (time domain signal)
tBodyGyro-mean()-Z | Mean of the Z direction of the body gyroscope signal (time domain signal)
tBodyGyro-std()-X | Standard deviation of the X direction of the body gyroscope signal (time domain signal)
tBodyGyro-std()-Y | Standard deviation of the Y direction of the body gyroscope signal (time domain signal)
tBodyGyro-std()-Z | Standard deviation of the Z direction of the body gyroscope signal (time domain signal)
tBodyGyroJerk-mean()-X | Mean of the X direction of the Jerk signal, derived from the body gyroscope signal (time domain signal)
tBodyGyroJerk-mean()-Y | Mean of the Y direction of the Jerk signal, derived from the body gyroscope signal (time domain signal)
tBodyGyroJerk-mean()-Z | Mean of the Z direction of the Jerk signal, derived from the body gyroscope signal (time domain signal)
tBodyGyroJerk-std()-X | Standard deviation of the X direction of the Jerk signal, derived from the body gyroscope signal (time domain signal)
tBodyGyroJerk-std()-Y | Standard deviation of the Y direction of the Jerk signal, derived from the body gyroscope signal (time domain signal)
tBodyGyroJerk-std()-Z | Standard deviation of the Z direction of the Jerk signal, derived from the body gyroscope signal (time domain signal)
tBodyAccMag-mean() | Mean the body linear acceleration signal using the Euclidean norm (time domain signal)
tBodyAccMag-std() | Standard deviation the body linear acceleration signal using the Euclidean norm (time domain signal)
tGravityAccMag-mean() | Mean the gravity acceleration signal using the Euclidean norm (time domain signal)
tGravityAccMag-std() | Standard deviation the gravity acceleration signal using the Euclidean norm (time domain signal)
tBodyAccJerkMag-mean() | Mean of the Jerk signal, derived from the body linear acceleration signal, using the Euclidean norm (time domain signal)
tBodyAccJerkMag-std() | Standard deviation of the Jerk signal, derived from the body linear acceleration signal, using the Euclidean norm (time domain signal)
tBodyGyroMag-mean() | Mean of the body gyroscope signal using the Euclidean norm (time domain signal)
tBodyGyroMag-std() | Standard deviation of the body gyroscope signal using the Euclidean norm (time domain signal)
tBodyGyroJerkMag-mean() | Mean of the Jerk signal, derived from the body gyroscope signal, using the Euclidean norm (time domain signal)
tBodyGyroJerkMag-std() | Standard deviation of the Jerk signal, derived from the body gyroscope signal, using the Euclidean norm (time domain signal)
fBodyAcc-mean()-X | Mean of the X direction of the body linear acceleration signal (frequency domain signal)
fBodyAcc-mean()-Y | Mean of the Y direction of the body linear acceleration signal (frequency domain signal)
fBodyAcc-mean()-Z | Mean of the Z direction of the body linear acceleration signal (frequency domain signal)
fBodyAcc-std()-X | Standard deviation of the X direction of the body linear acceleration signal (frequency domain signal)
fBodyAcc-std()-Y | Standard deviation of the Y direction of the body linear acceleration signal (frequency domain signal)
fBodyAcc-std()-Z | Standard deviation of the Z direction of the body linear acceleration signal (frequency domain signal)
fBodyAccJerk-mean()-X | Mean of the X direction of the Jerk signal, derived from the body linear acceleration signal (frequency domain signal)
fBodyAccJerk-mean()-Y | Mean of the Y direction of the Jerk signal, derived from the body linear acceleration signal (frequency domain signal)
fBodyAccJerk-mean()-Z | Mean of the Z direction of the Jerk signal, derived from the body linear acceleration signal (frequency domain signal)
fBodyAccJerk-std()-X | Standard deviation of the X direction of the Jerk signal, derived from the body linear acceleration signal (frequency domain signal)
fBodyAccJerk-std()-Y | Standard deviation of the Y direction of the Jerk signal, derived from the body linear acceleration signal (frequency domain signal)
fBodyAccJerk-std()-Z | Standard deviation of the Z direction of the Jerk signal, derived from the body linear acceleration signal (frequency domain signal)
fBodyGyro-mean()-X | Mean of the X direction of the body gyroscope signal (frequency domain signal)
fBodyGyro-mean()-Y | Mean of the Y direction of the body gyroscope signal (frequency domain signal)
fBodyGyro-mean()-Z | Mean of the Z direction of the body gyroscope signal (frequency domain signal)
fBodyGyro-std()-X | Standard deviation of the X direction of the body gyroscope signal (frequency domain signal)
fBodyGyro-std()-Y | Standard deviation of the Y direction of the body gyroscope signal (frequency domain signal)
fBodyGyro-std()-Z | Standard deviation of the Z direction of the body gyroscope signal (frequency domain signal)
fBodyAccMag-mean() | Mean the body linear acceleration signal using the Euclidean norm (frequency domain signal)
fBodyAccMag-std() | Standard deviation the body linear acceleration signal using the Euclidean norm (frequency domain signal)
fBodyBodyAccJerkMag-mean() | Mean the gravity acceleration signal using the Euclidean norm (frequency domain signal)
fBodyBodyAccJerkMag-std() | Standard deviation the gravity acceleration signal using the Euclidean norm (frequency domain signal)
fBodyBodyGyroMag-mean() | Mean of the Jerk signal, derived from the body linear acceleration signal, using the Euclidean norm (frequency domain signal)
fBodyBodyGyroMag-std() | Standard deviation of the Jerk signal, derived from the body linear acceleration signal, using the Euclidean norm (frequency domain signal)
fBodyBodyGyroJerkMag-mean() | Mean of the body gyroscope signal using the Euclidean norm (frequency domain signal)
fBodyBodyGyroJerkMag-std() | Standard deviation of the body gyroscope signal using the Euclidean norm (frequency domain signal)
subject | Subject who performed the activity
activity | Name of the activity being performed


# Work / Transforation details

The R script implements the following steps:

* Loads the activities file (activity_labels.txt)
* Loads test and train datasets. Each dataset is inside a directory with the same name.
  - Loads the subject data (subject file)
  - Loads the activities data (y file)
  - Loads the summary data (x file)
  - Drops the columns not needed. Only remains all the mean and standard deviation columns
  - Set the column name for all the columns
  - Combine the activity and subject info into the the summary data
* Merges train and test datasets in one unique dataset
* Adds a new column with the activity name
* Removes the activity code
* Aggregates data by subject and activity
* Writes a file with the aggregated data

