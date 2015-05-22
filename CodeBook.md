# Code Book
## Coursera Getting and Cleaning Data

The data used in this exercise represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data for the project is obtaind from this url:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The generated data is derived from the raw data using the script run_analysis.R, see readme.md and contains following variables (see also features_info.txt and features.txt in raw data) :

####background####
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

####groups####
*  tBodyAcc-XYZ
*  tGravityAcc-XYZ
*  tBodyAccJerk-XYZ
*  tBodyGyro-XYZ
*  tBodyGyroJerk-XYZ
*  tBodyAccMag
*  tGravityAccMag
*  tBodyAccJerkMag
*  tBodyGyroMag
*  tBodyGyroJerkMag
*  fBodyAcc-XYZ
*  fBodyAccJerk-XYZ
*  fBodyGyro-XYZ
*  fBodyAccMag
*  fBodyAccJerkMag
*  fBodyGyroMag
*  fBodyGyroJerkMag

####variables for groups#####
*  mean: Mean value
*  std: Standard deviation

the variablenames are combined from groups, the variables for groups and the XYZ direction


####additonal variables####
*  activity - factor describing the activity. Range: "WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"
*  subject - Number of individual annonymos person. Range 1:30

