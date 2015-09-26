library(dplyr)
library(plyr)

##Read text for activities and measurement variables
activity_labels <- read.table("activity_labels.txt", stringsAsFactors = FALSE,col.names =c("activity_num","activity_name"))
            #read in activity labels for level names
feature_labels <- read.table("features.txt", stringsAsFactors = FALSE,col.names =c("feature_num","feature_name"))
            #read in labels for each measurement variable name

##Step 4 - label the data set with descriptive variable names. 
feature_labels$feature_name  <- gsub("mean\\(\\)" ,"mean", feature_labels$feature_name)
feature_labels$feature_name  <- gsub("std\\(\\)" ,"standard.dev", feature_labels$feature_name)
feature_labels$feature_name  <- gsub("meanFreq\\(\\)" ,"Mean.frequency", feature_labels$feature_name)
feature_labels$feature_name  <- gsub("-" ,"_", feature_labels$feature_name)
feature_labels$feature_name  <- gsub("\\)" ,"", feature_labels$feature_name)
feature_labels$feature_name  <- gsub("Mean\\)" ,"Mean", feature_labels$feature_name)
            #change "mean()", "std()", "meanFreq()" & "Mean)" to more readable variable names
feature_labels$feature_name <- make.names(feature_labels$feature_name, unique = TRUE)
            #change labels for all measurement variables to be valid variable names

##Read data (applying the variable names created above)
subject_test <- read.table("./test/subject_test.txt", col.names = "subject_num")
            #read test subject data
X_test <- read.table("./test/X_test.txt", col.names = feature_labels$feature_name)
            #read test measurement data; use the measurement labels (read above) for column names
y_test <- read.table("./test/y_test.txt", col.names = "activity")
            #read test activity data
subject_train <- read.table("./train/subject_train.txt", col.names = "subject_num")
            #read training subject data
X_train <- read.table("./train/X_train.txt", col.names = feature_labels$feature_name)
            #read measurement data; use the measurement labels (read above) for column names
y_train <- read.table("./train/y_train.txt", col.names = "activity")
            #read training activity data

##Step 1 - merge the training and the test sets to create one data set.
train_data <- cbind(subject_train,y_train,X_train)
test_data <- cbind(subject_test,y_test, X_test) 
            #combine the measurement data "X_" with the subject data "subject_" 
            ##and activity data "y_" for both train and test sets
total_data <- rbind(train_data, test_data)
            #combine the training and testing data into one total dataset

##Step 3 - use descriptive activity names to name the activities in the data set
for(j in 1:nrow(total_data)){
            #loop to change each numeric activity identifier to its corresponding name
      for(i in 1:6){
            if(total_data$activity[j] ==activity_labels$activity_num[i]){
                  total_data$activity[j] <- activity_labels$activity_name[i]
            }
      }
}

##Step 2 - extract only the measurements on the mean and standard deviation for each measurement 
tidydata  <- select(total_data,c(subject_num, activity,contains("mean",ignore.case=FALSE), contains("standard.dev"),contains("Mean",ignore.case=FALSE)))
            #select only variables that are specified as means and standard deviations

##Step 5 -create tidy data set with the average of each variable for each activity and each subject.
tidydata <- tidydata %>%
      group_by(subject_num, activity)%>%
      summarize_each(funs(mean))
            #grouped data by subject and activity name and then found the mean of each variable


write.table(tidydata, "tidydata.txt", row.name = FALSE)
