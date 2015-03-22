loadUCIDataset <- function(dir = "UCI HAR Dataset",
                   dataFileName = "UCIData.txt", 
                   agregateDataFileName = "UCIAgregateData.txt") {
  
  # Loads, tidy up and write a UCI HAR Dataset.
  # Combine together test and train data
  # Generate a mean aggregate by subject and activity
  #
  # Args:
  #   dir: Directory where data is located, a subdirectoy inside the workig directory
  #   dataFileName: Name of the file where tidy data will be written
  #   agregateDataFileName: Name of the file where aggregate data will be written
  #
  # Returns:
  #   Nothing

  load_summary <- function (dataset) {
    
    # Read the summary data
    #
    # Args:
    #   dataset: the name of the directory where data is located.
    #
    # Returns:
    #   A data frame with the summary data, with the activity and the subject in it
    
    cat("Loading", dataset, "...\n")
    
    #Dataset is located in a directory with the same name, so let's go for it
    setwd(dataset)
    
    #Data files has the dataset name inside, so let's make them up
    #Y dataset contains the activity code that has been performed
    y_name <- paste("y_", dataset, ".txt", sep = "")
    
    #Subject dataset contains the person who performed the activity
    subject_name <- paste("subject_", dataset, ".txt", sep = "")
    
    #Y dataset contains all the summary data
    x_name <-paste("x_", dataset, ".txt", sep = "")
    
    #Let's read the data files ...
    y <- read.csv(y_name, header = FALSE, sep = " ")
    subject <- read.csv(subject_name, header = FALSE, sep = " ")
    
    #We are using the "" separator because can be one or more blanks
    x <- read.csv(x_name, header = FALSE, sep = "")
    
    #Restoriing the working directy
    setwd("..")
    
    #These are all the columns with the mean and the standard desviation
    cols <- c("V1","V2","V3","V4","V5","V6","V41","V42","V43","V44","V45","V46","V81",
             "V82","V83","V84","V85","V86","V121","V122","V123", "V124","V125","V126",
             "V161","V162","V163","V164","V165","V166","V201","V202","V214","V215",
             "V227","V228","V240","V241","V253","V254","V266","V267","V268","V269",
             "V270","V271","V345","V346","V347","V348","V349","V350","V424","V425",
             "V426","V427","V428","V429","V503",  "V504","V516","V517","V529","V530",
             "V542","V543")
    
    #Droping all the columns that are not in the previos list
    df <- x[, names(x) %in% cols]
    #df$VtBodyAcc-mean()-X <- x$V1
    
    #Renaming the columns 
    #let's use the same column name used in the original source
    colnames(df) <- c("tBodyAcc-mean()-X",
                     "tBodyAcc-mean()-Y",
                     "tBodyAcc-mean()-Z",
                     "tBodyAcc-std()-X",
                     "tBodyAcc-std()-Y",
                     "tBodyAcc-std()-Z",
                     "tGravityAcc-mean()-X",
                     "tGravityAcc-mean()-Y",
                     "tGravityAcc-mean()-Z",
                     "tGravityAcc-std()-X",
                     "tGravityAcc-std()-Y",
                     "tGravityAcc-std()-Z",
                     "tBodyAccJerk-mean()-X",
                     "tBodyAccJerk-mean()-Y",
                     "tBodyAccJerk-mean()-Z",
                     "tBodyAccJerk-std()-X",
                     "tBodyAccJerk-std()-Y",
                     "tBodyAccJerk-std()-Z",
                     "tBodyGyro-mean()-X",
                     "tBodyGyro-mean()-Y",
                     "tBodyGyro-mean()-Z",
                     "tBodyGyro-std()-X",
                     "tBodyGyro-std()-Y",
                     "tBodyGyro-std()-Z",
                     "tBodyGyroJerk-mean()-X",
                     "tBodyGyroJerk-mean()-Y",
                     "tBodyGyroJerk-mean()-Z",
                     "tBodyGyroJerk-std()-X",
                     "tBodyGyroJerk-std()-Y",
                     "tBodyGyroJerk-std()-Z",
                     "tBodyAccMag-mean()",
                     "tBodyAccMag-std()",
                     "tGravityAccMag-mean()",
                     "tGravityAccMag-std()",
                     "tBodyAccJerkMag-mean()",
                     "tBodyAccJerkMag-std()",
                     "tBodyGyroMag-mean()",
                     "tBodyGyroMag-std()",
                     "tBodyGyroJerkMag-mean()",
                     "tBodyGyroJerkMag-std()",
                     "fBodyAcc-mean()-X",
                     "fBodyAcc-mean()-Y",
                     "fBodyAcc-mean()-Z",
                     "fBodyAcc-std()-X",
                     "fBodyAcc-std()-Y",
                     "fBodyAcc-std()-Z",
                     "fBodyAccJerk-mean()-X",
                     "fBodyAccJerk-mean()-Y",
                     "fBodyAccJerk-mean()-Z",
                     "fBodyAccJerk-std()-X",
                     "fBodyAccJerk-std()-Y",
                     "fBodyAccJerk-std()-Z",
                     "fBodyGyro-mean()-X",
                     "fBodyGyro-mean()-Y",
                     "fBodyGyro-mean()-Z",
                     "fBodyGyro-std()-X",
                     "fBodyGyro-std()-Y",
                     "fBodyGyro-std()-Z",
                     "fBodyAccMag-mean()",
                     "fBodyAccMag-std()",
                     "fBodyBodyAccJerkMag-mean()",
                     "fBodyBodyAccJerkMag-std()",
                     "fBodyBodyGyroMag-mean()",
                     "fBodyBodyGyroMag-std()",
                     "fBodyBodyGyroJerkMag-mean()",
                     "fBodyBodyGyroJerkMag-std()")
    
    
    #Renaming the column of the activity dataset
    colnames(y) <- "y"
    
    #Renaming the column of the subject dataset
    colnames(subject) <- "subject"
    
    #Let's combine the activity and the subject dataset with the summary data
    df <- cbind(df, y)
    df <- cbind(df, subject)
    
    df
  }
  
  load_activities <- function () {
    
    # Read the activity names file
    #
    # Returns:
    #   A data frame with the activity names data

    activities <- read.csv("activity_labels.txt", header = FALSE, sep = " ")
    
    #Let's rename the column. 
    #The activity code has to have the same name used in the summary dataset
    colnames(activities) <- c("y", "activity")
    
    activities
  }
  
  #Ok. Let's change the directory to the dataset directory
  setwd(dir)

  #Loading activities
  activities <- load_activities()
  
  #Loading test dataset
  test <- load_summary("test");
  
  #Loading train dataset
  train <- load_summary("train");
  
  setwd("..") 
  
  #Let's combine test and train data together
  all <- rbind(test, train)
  
  #Let's add a new column with the activity name
  all_merge <- merge(all, activities, by="y", all=TRUE)
  
  #Removing the activity code. The activity name remains
  all_merge <- all_merge[, names(all_merge) != "y"]

  #Wrinting data
  cat("Writing data to file", dataFileName, "...\n")
  write.table(all_merge, file = dataFileName, row.names=FALSE)
  
  #Aggregating data by subject and activity
  agregateData <- aggregate(all_merge[, 1:66], list(all_merge$subject, 
                                              all_merge$activity), mean)
  
  #Let's rename the subject and activity columns
  colnames(agregateData)[1:2] <- c("subject", "activity")
  
  #Writing the aggregate data
  cat("Writing aggregate data to file", agregateDataFileName, "...\n")
  write.table(agregateData, file = agregateDataFileName, row.names=FALSE)
  
  #All done
}
