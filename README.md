#Getting and Cleaning Data Course Project
## Project Description
The data for this project comes from a machine learning study of human activity recognition using smartphones (specifically the Samsung Galaxy S II).  The goal was to simplify the data provided into a tidy data set that just included aggregate means of the mean and standard deviation variables for each subject/activity combination.

##Instructions from Project
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
	
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Walkthrough of runanalysis.R

Comments are included in the runanalysis.R file, but more detail is provided below.

###Read variable and activity names
``` 
activity_labels <- read.table("activity_labels.txt", stringsAsFactors = FALSE,col.names =c("activity_num","activity_name"))
feature_labels <- read.table("features.txt", stringsAsFactors = FALSE,col.names =c("feature_num","feature_name"))
``` 

 These two files, activity_labels.txt and features.txt, include the names of the activities and the names of the measurement (feature) variables or vectors.  They are read first so their values can be used to name variables when the data is read in.

###Clean the variable names read 
```
feature_labels$feature_name  <- gsub("mean\\(\\)" ,"mean", feature_labels$feature_name)
feature_labels$feature_name  <- gsub("std\\(\\)" ,"standard.dev", feature_labels$feature_name)
feature_labels$feature_name  <- gsub("meanFreq\\(\\)" ,"Mean.frequency", feature_labels$feature_name)
feature_labels$feature_name  <- gsub("-" ,"_", feature_labels$feature_name)
feature_labels$feature_name  <- gsub("\\)" ,"", feature_labels$feature_name)
feature_labels$feature_name  <- gsub("Mean\\)" ,"Mean", feature_labels$feature_name)
feature_labels$feature_name <- make.names(feature_labels$feature_name, unique = TRUE)
```

The variable or measurement identifiers in feature_labels are not valid variable names for R.  They include commas, dashes and parens.  In this section, the dashes are changed to underscores, the double parens () after function names are removed, single close parens are removed.  The variables that will be kept are cleaned up.  At the end, the make.names() function replaces the other illegal characters with periods and makes sure all of the variable names are unique.  This is part of Step 4 of the project.

###Reading data files into R
```
subject_test <- read.table("./test/subject_test.txt", col.names = "subject_num")
X_test <- read.table("./test/X_test.txt", col.names = feature_labels$feature_name)
y_test <- read.table("./test/y_test.txt", col.names = "activity")
subject_train <- read.table("./train/subject_train.txt", col.names = "subject_num")
X_train <- read.table("./train/X_train.txt", col.names = feature_labels$feature_name)
y_train <- read.table("./train/y_train.txt", col.names = "activity")
```

Each of the individual data files is read into R with read.table().  The variable names are assigned at read time , including all of the variable names from “features.txt” completing Step 4.

###Combining the data into one dataset
```
train_data <- cbind(subject_train,y_train,X_train)
test_data <- cbind(subject_test,y_test, X_test) 
total_data <- rbind(train_data, test_data) 
```

The train and test data are created by appending the subject and activity vectors to the front of the large dataset of features.  Then the rows of observations from the test data are added to the bottom of the train data.  This completes Step 1 of the project.

###Change activity variable from numbers to activity names
```
for(j in 1:nrow(total_data)){
       
      for(i in 1:6){
            if(total_data$activity[j] ==activity_labels$activity_num[i]){
                  total_data$activity[j] <- activity_labels$activity_name[i]
            }
      }
}
```

This loop goes through each row of observations, finds the activity number, matches it to and activity name and changes the variable.  R automatically coerces the integer variable to a character variable.  This completes Step 3.

###Select only variables that represent means and standard deviations
```
tidydata  <- select(total_data,c(subject_num, activity,contains("mean",ignore.case=FALSE), contains("standard.dev"),contains("Mean",ignore.case=FALSE))) 
```

Using select(), the subject and activity variables are kept along with any variable with mean, Mean or standard.dev in the name.  Even though it is possible only the first set of mean() data was needed, I also included the meanFreq and angle mean data.  I placed these at the end, and in the codebook, I gave the columns numbers to aid in removal if these variables are not useful.  This completes Step 2.

###Group and aggregate data by subject and activity
```
tidydata <- tidydata %>%
    group_by(subject_num, activity)%>%
      summarize_each(funs(mean)) 
```

Here the data is grouped by subject and activity, then each of the additional variables is aggregated by taking the mean with summarize_each().   The tidy dataset is replaced with this aggregated data               completing Step 5.

###Writing data to file

 `write.table(tidydata, "tidydata.txt", row.name = FALSE)` 

The data is written to a space delimited text file to submit.





