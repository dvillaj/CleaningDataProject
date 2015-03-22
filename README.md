# Getting and Cleaning Data
## Course Project

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Steps

- Download the [data source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
- Extract it inside your working directory. It will generate a directory named "UCI HAR Dataset"
- Put run_analysis.R in your working directory
- Run the following sentences:
                   source("run_analysis.R")
                   loadUCIDataset()


## Dependencies

No dependencies

run_analysis.R The r script processes the data and generated the required tidy dataset for submission.
submit.txt The text file contains the required tidy dataset for submission.
UCI HAR Dataset This folder contains the input data, which downloads from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
CodeBook.md A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data
README.md The README file for this repo.

