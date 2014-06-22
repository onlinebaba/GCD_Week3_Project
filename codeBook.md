This code book outlines the data management aspects of this project.

#1. Introduction
This code book corresponds to the resultant tidy data file (Week3_Project_TabDelimited_TidyData.txt) that is obtained by processing the R scripts on the activities data obtained from Week 3 course project of Getting and Cleaning data. 

This document outlines various fields of the resultant tidy file. Please refer to the README.md file that outlines the processing steps that were required to create the tidy file.

#2. DATA DICTIONARY:

##activityId
*Corresponds to the numeric value that is assigned to 6 activity types*
- 1.WALKING
- 2.WALKING_UPSTAIRS
- 3.WALKING_DOWNSTAIRS
- 4.SITTING
- 5.STANDING
- 6.LAYING

##activityName
*Descriptive name of the activity Id*

##subject
*Identifies all 30 volunteer Ids*

*The next setof entries correspond to the mean and standard deviations of time domain and frequency signals that were captured at a constant rate of 50 Hz. The acceleration signal was then separated into body and gravity acceleration signals.*

*The body linear acceleration and angular velocity were derived in time to obtain Jerk signals and the magnitude of these three-dimensional signals were calculated using the Euclidean norm*

*X, Y and Z axis are usedto denote 1-axial signals in the X, Y and Z directions.*

##bodyAcclTimeMeanOnXAxis
*Mean of body acceleration time on X-axis*
##bodyAcclTimeMeanOnYAxis
*Mean of body acceleration time on Y-axis*
##bodyAcclTimeMeanOnZAxis
*Mean of body acceleration time on Z-axis*

##bodyAcclTimeStandardDeviationOnXAxis
*Standard deviation of body acceleration time on X-axis*
##bodyAcclTimeStandardDeviationOnYAxis
*Standard deviation of body acceleration time on Y-axis*
##bodyAcclTimeStandardDeviationOnZAxis
*Standard deviation of body acceleration time on Z-axis*

##gravityAcclTimeMeanOnXAxis
*Mean of gravitational acceleration time on X-axis*
##gravityAcclTimeMeanOnYAxis
*Mean of gravitational acceleration time on Y-axis*
##gravityAcclTimeMeanOnZAxis
*Mean of gravitational acceleration time on Z-axis*

##gravityAcclTimeStandardDeviationOnXAxis
*Standard deviation of gravitational acceleration time on X-axis*
##gravityAcclTimeStandardDeviationOnYAxis
*Standard deviation of gravitational acceleration time on Y-axis*
##gravityAcclTimeStandardDeviationOnZAxis
*Standard deviation of gravitational acceleration time on Z-axis*

##bodyAcclTimeJerkMeanOnXAxis
*Mean of jerk signals during body acceleration time on X-axis*
##bodyAcclTimeJerkMeanOnYAxis
*Mean of jerk signals during body acceleration time on Y-axis*
##bodyAcclTimeJerkMeanOnZAxis
*Mean of jerk signals during body acceleration time on Z-axis*

##bodyAcclTimeJerkStandardDeviationOnXAxis
*Standard deviation of jerk signals during body acceleration time on X-axis*
##bodyAcclTimeJerkStandardDeviationOnYAxis
*Standard deviation of jerk signals during body acceleration time on Y-axis*
##bodyAcclTimeJerkStandardDeviationOnZAxis
*Standard deviation of jerk signals during body acceleration time on Z-axis*

##bodyGyroTimeMeanOnXAxis
*Mean of gyroscopic raw signals during body motion on X-axis*
##bodyGyroTimeMeanOnYAxis
*Mean of gyroscopic raw signals during body motion on Y-axis*
##bodyGyroTimeMeanOnZAxis
*Mean of gyroscopic raw signals during body motion on Z-axis*

##bodyGyroTimeStandardDeviationOnXAxis
*Standard deviation of gyroscopic raw signals during body motion on X-axis*
##bodyGyroTimeStandardDeviationOnYAxis
*Standard deviation of gyroscopic raw signals during body motion on Y-axis*
##bodyGyroTimeStandardDeviationOnZAxis
*Standard deviation of gyroscopic raw signals during body motion on Z-axis*

##bodyGyroTimeJerkMeanOnXAxis
*Mean of gyroscopic raw jerk signals during body motion on X-axis*
##bodyGyroTimeJerkMeanOnYAxis
*Mean of gyroscopic raw jerk signals during body motion on Y-axis*
##bodyGyroTimeJerkMeanOnZAxis
*Mean of gyroscopic raw jerk signals during body motion on Z-axis*

##bodyGyroTimeJerkStandardDeviationOnXAxis
*Standard deviation of gyroscopic raw jerk signals during body motion on X-axis*
##bodyGyroTimeJerkStandardDeviationOnYAxis
*Standard deviation of gyroscopic raw jerk signals during body motion on X-axis*
##bodyGyroTimeJerkStandardDeviationOnZAxis
*Standard deviation of gyroscopic raw jerk signals during body motion on X-axis*

##bodyAcclTimeMagnitudeMean
*Mean of magnitude of the signals when body is accelearating*
##bodyAcclTimeMagnitudeStandardDeviation
*Standard deviation of magnitude of the signals when body is accelearating*

##gravityAcclTimeMagnitudeMean
*Mean of magnitude of the gravitational accelerations signals*
##gravityAcclTimeMagnitudeStandardDeviation
*Standard deviation  of magnitude of the gravitational accelerations signals*

##bodyAcclTimeJerkMagnitudeMean
*Mean of magnitude of the body jerk accelerations signals*
##bodyAcclTimeJerkMagnitudeStandardDeviation
*Standard deviation of magnitude of the body jerk accelerations signals*

##bodyGyroTimeMagnitudeMean
*Mean of magnitude of the gyroscopic signals*
##bodyGyroTimeMagnitudeStandardDeviation
*Standard deviation of magnitude of the gyroscopic signals*

##bodyGyroTimeJerkMagnitudeMean
*Mean of magnitude of the body's gyroscopic signals*
##bodyGyroTimeJerkMagnitudeStandardDeviation
*Standard deviation of magnitude of the body's gyroscopic signals*

##bodyAcclFrequencyMeanOnXAxis
*Mean of body's acceleration frequency on X-axis*
##bodyAcclFrequencyMeanOnYAxis
*Mean of body's acceleration frequency on Y-axis*
##bodyAcclFrequencyMeanOnZAxis
*Mean of body's acceleration frequency on Z-axis*

##bodyAcclFrequencyStandardDeviationOnXAxis
*Standard deviation of body's acceleration frequency on X-axis*
##bodyAcclFrequencyStandardDeviationOnYAxis
*Standard deviation of body's acceleration frequency on X-axis*
##bodyAcclFrequencyStandardDeviationOnZAxis
*Standard deviation of body's acceleration frequency on X-axis*

##bodyAcclFrequencyJerkMeanOnXAxis
*Mean of body acceleration frequecy jerk signals on X-axis*
##bodyAcclFrequencyJerkMeanOnYAxis
*Mean of body acceleration frequecy jerk signals on Y-axis*
##bodyAcclFrequencyJerkMeanOnZAxis
*Mean of body acceleration frequecy jerk signals on Z-axis*

##bodyAcclFrequencyJerkStandardDeviationOnXAxis
*Standard deviation of body acceleration frequecy jerk signals on X-axis*
##bodyAcclFrequencyJerkStandardDeviationOnYAxis
*Standard deviation of body acceleration frequecy jerk signals on Y-axis*
##bodyAcclFrequencyJerkStandardDeviationOnZAxis
*Standard deviation of body acceleration frequecy jerk signals on Y-axis*

##bodyGyroFrequencyMeanOnXAxis
*Mean of frequency of body's gyroscopic signals on X-axis*
##bodyGyroFrequencyMeanOnYAxis
*Mean of frequency of body's gyroscopic signals on Y-axis*
##bodyGyroFrequencyMeanOnZAxis
*Mean of frequency of body's gyroscopic signals on Z-axis*

##bodyGyroFrequencyStandardDeviationOnXAxis
*Mean of frequency of body's gyroscopic signals on X-axis*
##bodyGyroFrequencyStandardDeviationOnYAxis
*Mean of frequency of body's gyroscopic signals on Y-axis*
##bodyGyroFrequencyStandardDeviationOnZAxis
*Mean of frequency of body's gyroscopic signals on Z-axis*

##bodyAcclFrequencyMagnitudeMean
*Mean of the magnitude of the body's acceleration frequency*
##bodyAcclFrequencyMagnitudeStandardDeviation
*Standard deviation of the magnitude of the body's acceleration frequency*
##bodyAcclJerkFrequencyMagnitudeMean
*Mean of the magnitude of the body's acceleration jerk frequency*
##bodyAcclJerkFrequencyMagnitudeStandardDeviation
*Standard deviation of the magnitude of the body's acceleration jerk frequency*

##bodyGyroFrequencyMagnitude
*Mean of the magnitude of the body's gyroscopic frequency*
##bodyGyroMagnitudeStandardDeviation
*Standard deviation of the magnitude of the body's gyroscopic frequency*
##bodyGyroJerkFrequencyMagnitudeMean
*Mean of the magnitude of the body's acceleration gyroscopic frequency*
##bodyGyroJerkFrequencyMagnitudeStandardDeviation
*Standard deviation of the magnitude of the body's acceleration gyroscopic frequency*
