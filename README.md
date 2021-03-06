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
```R
source("run_analysis.R")
loadUCIDataset()
```


## Dependencies

No dependencies

## Files

The files included in this repo are the following:

File       | Description
:----------|:-----------------
README.md|The README file for this repo
run_analysis.R|The R script processes the data and generated the required tidy dataset
CodeBook.md|This file describes the variables, the data, and any transformations or work performed to clean up the data.
