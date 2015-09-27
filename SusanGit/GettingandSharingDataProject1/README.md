==================================================================
Tidy Dataset - Means of mean and standard deviation measures in 
Samsung Dataset [1]

Run in R x64 3.2.0, Windows 7 64-bit

The dataset includes the following files:
=========================================

- 'README.md'

- 'CodeBook.md': Information about the variables.

- 'meanGrouped.txt': Tidy data set of means of source variables grouped by Subject and Activity

- 'run_analysis.R': Code to replicate result set that can be run as long as the Samsung data is in your working directory.


Description of transformations: 
======
Uses data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Additional information at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The goals for analysis:
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


The specific steps to accomplish the goals:
1. Load required libraries data.table and dplyr
2. Read in data sets. Data sets used were
  - 'train/X_train.txt': Training set.
 - 'train/y_train.txt': Training activity IDs.
 - 'train/subject_train.txt': Training subject IDs.
 - 'test/X_test.txt': Test set.
 - 'test/y_test.txt': Test activity IDs.
 - 'test/subject_test.txt': Test subject IDs.
 - 'features.txt': Variable labels.
 - 'activity_labels.txt': Activity descriptive names.
3. Combine train and test data
4. Combine train and test activities
5. Add activity desciption
6. Combine (row bind) train and test subjects
7. Combine (column bind) Subject, Activity, and other variables
8. Extracts only the measurements on the mean and standard deviation for each measurement. Used grep function to search for mean or std in the variable label.
9. Uses dplyr package to group and summarize data. 
10.Write out results to meanGrouped.txt

======
Reference:
==================================================================
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

