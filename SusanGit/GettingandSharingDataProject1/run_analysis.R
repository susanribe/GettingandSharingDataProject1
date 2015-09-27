## These were the five steps required. Each step is noted in the code, although they were done out of order:
## 1.Merges the training and the test sets to create one data set.
## 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3.Uses descriptive activity names to name the activities in the data set
## 4.Appropriately labels the data set with descriptive variable names. 
## 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

## uses data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##working directory should contain files features.txt, activity_labels.txt and folders "train" and "test".
 ##setwd("~/RStudioWork/getdata/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")
## load required libraries
library(data.table)
library(dplyr)

##1.Merges the training and the test sets to create one data set.
## read text files
dat_train <- read.table("train\\X_train.txt") 
dat_test <- read.table("test\\X_test.txt") 
activityid_train <- read.table("train\\y_train.txt") 
activityid_test <- read.table("test\\y_test.txt") 
subject_train <- read.table("train\\subject_train.txt") 
subject_test <- read.table("test\\subject_test.txt") 
headers <- read.table("features.txt")
activities <- read.table("activity_labels.txt")

## Combine train and test data
dat <- rbind(dat_train, dat_test)
## 4.Appropriately labels the data set with descriptive variable names. 
## apply header names
names(dat) <- headers[,2]

## Combine train and test activities
activityids <- rbind(activityid_train, activityid_test)
names(activityids) = "ActivityID"

## 3.Uses descriptive activity names to name the activities in the data set
## Add activity desciption
names(activities) <- c("ActivityID", "Activity")
activities1 <- merge(activityids, activities, by.x = "ActivityID", by.y = "ActivityID")

## Combine train and test subjects
subjects <- rbind(subject_train, subject_test)
names(subjects) = "Subject"

## Column bind Subject, Activity, and data details
dat1 <- cbind(subjects, activities1, dat)

## 2.Extracts only the measurements on the mean and standard deviation for each measurement.
dat1 <- dat1[, c(1,2, 3, grep("mean|std", names(dat1), ignore.case = TRUE))]

## 5.From the data set in step 4, creates a second,
## independent tidy data set with the average of each variable for each activity and each subject.
## uses dplyr package to group and summarize data
meanGrouped <- dat1 %>% group_by(Subject, Activity) %>% summarize_each(funs(mean))

## write out results to meanGrouped.txt
write.table(meanGrouped, "meanGrouped.txt", row.name = FALSE)

