Getting and Cleaning Data Course Project - Week 3
=================

This repository contains a file run_analysis.R in the main directory. This R script expects the Samsung data directory to exist in your working directory. 

Ex: On Mac, my current working directory is ~/Documents/Getting_and_Cleaning_Data/Week3 and I have the Samsung data directory "UCI HAR Dataset" in it. (~/Documents/Getting_and_Cleaning_Data/Week3/UCI HAR Dataset/)

When executed this script will process the data under the Samsung data directory and will output the tidy data to "Week3_Project_TabDelimited_TidyData.txt" file inside the Samsung data directory directory.

The is logically divided into 7 steps

Step 1: Read all activity and feature names into a data frame
  - Read "UCI HAR Dataset/activity_labels.txt" into a data frame
    - From this dataset get the activityId and activityName into a vector, we will use these later in our computation
  - Read "UCI HAR Dataset/features.txt" into a data frame
    - From this dataset get the feature names [featuresDF$V2] into a vector, we will use these later in our computation

Step 2: Read the test data under /test subfolder in Samsung data directory into a data frame named "finalTestDataFrame"
  - Read Test Subjects data file "subject_test.txt" into a data frame 
    - Add a column name header by name "subject" to this data frame
  - Read Features Test data file "X_test.txt" and add columm name headers
    - Add column names to this data frame wsing the feature names vector from step 1
  - Read Activity y test data file "y_test.txt" and add column name header
    - Add a column name header by name "activityId" to this data frame
  - Combine feature, subject and activity data into one test data set
  - Extract required columns [column names containing mean() and std()] from test data set and Label column name.
  -   Uses grep command on the activityName vector from step 1 and apply the grep command to get all columns names containing mean() and std().
    -   c(names(xTestData[c(grep("[-]mean\\(|[-]std\\(\\)",names(xTestData)))]))
  - At the end of this step we will have bu   

Step 3: Read the train data under /train subfolder in Samsung data directory into a data frame named "finalTrainDataFrame"
  - Follow the procedures outlined in step 2 on the training data to build "finalTrainDataFrame"

Step 4: Combine the test and train data containing just the mean and standard deviation measurements
  - Using rbind combine "finalTestDataFrame" and "finalTrainDataFrame" data frames to finalMergedDataFrame data frame.

Step 5: Calculate average of each variable for each activity and subject
  - Use the aggregate function to calculate the mean for each variable for each activity and each subject
    - aggregate(.~subject+activityId, FUN=mean, data=finalMergedDataFrame)

Step 6: Clean up the column names
  - Strip off braces, t and f prefixes, expand the names (ex: std to StandardDeviation, mag to Magnitude etc) for X,Y and Z axis data. Name is tidy data frame as myTidyDF

Step 7: Write the tidy data to "Week3_Project_TabDelimited_TidyData.txt" file under Samsung data directory
  - Write the myTidyDF to a text file using write.table command





