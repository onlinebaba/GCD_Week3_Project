library(data.table)

# Read all activities
activitiesDF <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activitiesDF) <- c("activityId","activityName")

# Read all feature names
featuresDF <- read.table("UCI HAR Dataset/features.txt")
featuresNames <- as.vector(featuresDF$V2)

############################## Read Test data ##############################

# Read Test Subjects and add column name header
subjectTestData <- read.table("UCI HAR Dataset/test/subject_test.txt")
names(subjectTestData) <- c("subject")

# Read X Test data and add columm name headers
xTestData <- read.table("UCI HAR Dataset/test/X_test.txt")
names(xTestData) <- featuresNames

# Ready Activity y test data and add column name header
yTestData <- read.table("UCI HAR Dataset/test/y_test.txt")
names(yTestData) <- c("activityId")

# Combine feature, subject and activity data into one test data set
combinedTestDataFrame <- as.data.frame(append(data.frame(),list(subjectTestData,yTestData,xTestData)))

# Extract required columns (mean and std cols) from test data set and Label column name correctly
names(combinedTestDataFrame) <- c("subject","activityId", names(xTestData))
finalSubActTestDataFrame <- subset(combinedTestDataFrame,select = c("subject","activityId") )
finalMeanStdTestDataFrame <- subset(combinedTestDataFrame,select = c(names(xTestData[c(grep("[-]mean\\(|[-]std\\(\\)",names(xTestData)))])) )
finalTestDataFrame <- cbind(finalSubActTestDataFrame,finalMeanStdTestDataFrame)

############################## Read train data ##############################
# Read Train Subjects and add column name header
subjectTrainData <- read.table("UCI HAR Dataset/train/subject_train.txt")
names(subjectTrainData) <- c("subject")

# Read X Train data and add columm name headers
xTrainData <- read.table("UCI HAR Dataset/train/X_train.txt")
# Normalize column names stripping special chars
names(xTrainData) <- featuresNames

# Ready Activity y Train data and add column name header
yTrainData <- read.table("UCI HAR Dataset/train/y_train.txt")
names(yTrainData) <- c("activityId")

# Combine feature, subject and activity data into one Train data set
combinedTrainDataFrame <- as.data.frame(append(data.frame(),list(subjectTrainData,yTrainData,xTrainData)))

# Extract required columns (mean and std cols) from Train data set and Label column name correctly
names(combinedTrainDataFrame) <- c("subject","activityId", names(xTrainData))
finalSubActTrainDataFrame <- subset(combinedTrainDataFrame,select = c("subject","activityId") )
finalMeanStdTrainDataFrame <- subset(combinedTrainDataFrame,select = c(names(xTrainData[c(grep("[-]mean\\(|[-]std\\(\\)",names(xTrainData)))])) )
finalTrainDataFrame <- cbind(finalSubActTrainDataFrame,finalMeanStdTrainDataFrame)

############################## Combine test and train data ##############################
finalMergedDataFrame <- rbind(finalTrainDataFrame,finalTestDataFrame)
# Check 1 for NA
# sum(is.na(finalMergedDataFrame))
# Check 2 for NA
# sapply(finalMergedDataFrame, function(x) sum(is.na(x)))

################# Average of each variable for each activity and each subject #################
myTidyDF <- aggregate(.~subject+activityId, FUN=mean, data=finalMergedDataFrame)
myTidyDF <- merge(activitiesDF,myTidyDF,by.x="activityId",by.y="activityId")

# A total of 180 rows: 30 subjects x 6 activities
dim(myTidyDF)

################# Clean up column names #################
names(myTidyDF) <- gsub("[-]mean\\(\\)", "Mean", names(myTidyDF))
names(myTidyDF) <- gsub("[-]std\\(\\)", "StandardDeviation", names(myTidyDF))
names(myTidyDF) <- gsub("tBodyAcc", "bodyAcclTime", names(myTidyDF))
names(myTidyDF) <- gsub("tBodyGyro", "bodyGyroTime", names(myTidyDF))
names(myTidyDF) <- gsub("tGravityAcc", "gravityAcclTime", names(myTidyDF))
names(myTidyDF) <- gsub("fBodyAcc", "bodyAcclFrequency", names(myTidyDF))
names(myTidyDF) <- gsub("fGravityAcc", "gravityAcclFrequency", names(myTidyDF))
names(myTidyDF) <- gsub("fBodyGyro", "bodyGyroFrequency", names(myTidyDF))
names(myTidyDF) <- gsub("fBodyBodyGyro", "bodyGyroFrequency", names(myTidyDF))
names(myTidyDF) <- gsub("fBodyBodyGyroMagMean", "bodyGyroFrequencyMagnitude", names(myTidyDF))
names(myTidyDF) <- gsub("fBodyBodyGyroJerkMag", "bodyGyroJerkFrequencyMagnitude", names(myTidyDF))
names(myTidyDF) <- gsub("fBodyBodyAccJerkMag", "bodyAcclJerkFrequencyMagnitude", names(myTidyDF))
names(myTidyDF) <- gsub("MagMean", "MagnitudeMean", names(myTidyDF))
names(myTidyDF) <- gsub("MagStandardDeviation", "MagnitudeStandardDeviation", names(myTidyDF))
names(myTidyDF) <- gsub("[-]X", "OnXAxis", names(myTidyDF))
names(myTidyDF) <- gsub("[-]Y", "OnYAxis", names(myTidyDF))
names(myTidyDF) <- gsub("[-]Z", "OnZAxis", names(myTidyDF))

################# Write the tidy data to a file #################
write.table(x=myTidyDF, file="UCI HAR Dataset/Week3_Project_TabDelimited_TidyData.txt", sep="\t",row.names = TRUE, col.names = TRUE,)
