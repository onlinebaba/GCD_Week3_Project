Getting and Cleaning Data Course Project - Week 3
=================

This repository contains a file run_analysis.R in the main directory. This R script expects the Samsung data directory to exist in your working directory. 

Ex: On Mac, my current working directory is ~/Documents/Getting_and_Cleaning_Data/Week3 and I have the Samsung data directory "UCI HAR Dataset" in it. (~/Documents/Getting_and_Cleaning_Data/Week3/UCI HAR Dataset/)

When executed this script will process the data under the Samsung data directory and will output the tidy data to "Week3_Project_TabDelimited_TidyData.txt" file inside your working directory.

The is logically divided into 6 steps

Step 1: Read the test data under /test subfolder in Samsung data directory  ("subject_test.txt", "X_test.txt", "y_test.txt")

Step 2: Read the train data under /train subfolder in Samsung data directory ("subject_train.txt", "X_train.txt", "y_train.txt"

Step 3: Combine the test and train data containing just the mean and standard deviation measurements

Step 4: Calculate average of each variable for each activity and subject

Step 5: Clean up the column names

Step 6: Write the tidy data to "Week3_Project_TabDelimited_TidyData.txt" file





