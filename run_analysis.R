library(data.table)

setwd(".")

# Read all activities
activitiesDF <- read.table("activity_labels.txt")
names(activitiesDF) <- c("ActivityId","ActivityName")

# Read all feature names
featuresDF <- read.table("features.txt")
featuresDF
featuresNames <- as.vector(featuresDF$V2)

############################## Read Test data ##############################

# Read Test Subjects and add column name header
subjectTestData <- read.table("subject_test.txt")
names(subjectTestData) <- c("Subject")

# Read X Test data and add columm name headers
xTestData <- read.table("X_test.txt")
# Normalize column names stripping special chars
names(xTestData) <- featuresNames

# Ready Activity y test data and add column name header
yTestData <- read.table("y_test.txt")
names(yTestData) <- c("ActivityId")

# Combine feature, subject and activity data into one test data set
combinedTestDataFrame <- as.data.frame(append(data.frame(),list(subjectTestData,yTestData,xTestData)))

# Extract required columns (mean and std cols) from test data set and Label column name correctly
subActCols <- c("Subject","ActivityId")
meanStdCols <- c(grep("std()",featuresNames),grep("mean()",featuresNames))
finalSubActTestDataFrame <- subset(combinedTestDataFrame,select = subActCols )
finalMeanStdTestDataFrame <- subset(combinedTestDataFrame,select = meanStdCols )
finalTestDataFrame <- cbind(finalSubActTestDataFrame,finalMeanStdTestDataFrame)

############################## Read train data ##############################
# Read Train Subjects and add column name header
subjectTrainData <- read.table("subject_train.txt")
subjectTrainData
names(subjectTrainData) <- c("Subject")

# Read X Train data and add columm name headers
xTrainData <- read.table("X_train.txt")
xTrainData
# Normalize column names stripping special chars
names(xTrainData) <- featuresNames

# Ready Activity y Train data and add column name header
yTrainData <- read.table("y_train.txt")
yTrainData
names(yTrainData) <- c("ActivityId")

# Combine feature, subject and activity data into one Train data set
combinedTrainDataFrame <- as.data.frame(append(data.frame(),list(subjectTrainData,yTrainData,xTrainData)))

############################## Combine test and train data ##############################

# Extract required columns (mean and std cols) from test data set and Label column name correctly
finalSubActTrainDataFrame <- subset(combinedTrainDataFrame,select = subActCols )
finalMeanStdTrainDataFrame <- subset(combinedTrainDataFrame,select = meanStdCols )
finalTrainDataFrame <- cbind(finalSubActTrainDataFrame,finalMeanStdTrainDataFrame)
finalMergedDataFrame <- rbind(finalTrainDataFrame,finalTestDataFrame)

# Check 1 for NA
# sum(is.na(finalMergedDataFrame))
# Check 2 for NA
# sapply(finalMergedDataFrame, function(x) sum(is.na(x)))

################# Average of each variable for each activity and each subject #################
myTidyDF <- aggregate(.~Subject+ActivityId, FUN=mean, data=finalMergedDataFrame)
myTidyDF <- merge(activitiesDF,myTidyDF,by.x="ActivityId",by.y="ActivityId")

# A total of 180 rows: 30 subjects x 6 activities
dim(myTidyDF)

###### Miscellaneous: Clean up the header names #######
names(myTidyDF) <- gsub("\\.", "_", names(myTidyDF))
names(myTidyDF) <- gsub("()-", "_", names(myTidyDF))
names(myTidyDF) <- gsub("___", "_", names(myTidyDF))
names(myTidyDF) <- gsub("__", "_", names(myTidyDF))
names(myTidyDF) <- gsub("fBody", "Body", names(myTidyDF))
names(myTidyDF) <- gsub("tBody", "Body", names(myTidyDF))
names(myTidyDF) <- gsub("tGravity", "Gravity", names(myTidyDF))
names(myTidyDF) <- gsub("BodyBody", "Body", names(myTidyDF))

################# Write the tidy data to a file #################
write.table(x=myTidyDF, file="Week3_Project_TidyData.txt", sep="\t",row.names = TRUE, col.names = TRUE,)
