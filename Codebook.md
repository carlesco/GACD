# Code Book


### The original data has been downloaded from:

- [Zip File](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
- [Information](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)



Running the script `run_analisis.R` produces the following transformations


1. Merges the training and the test sets to create one data set. 
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses the descriptive activity names to name the activities in the data set
4. Creates a tidy data set with the average of each variable for each activity and each subject.`



The file with the clean data set is called `<tidydata.txt>`


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables used are:

- mean: Mean value
- std: Standard deviation


## variables 

The columns present in the "tidydata.txt" dataset are the following

* `subject_ID`: Integer representing the participant number
* `activity_label`: String, that can have the following values:`WALKING`,`WALKING_UPSTAIRS`,`WALKING_DOWNSTAIRS`,`SITTING`,`STANDING`,`LAYING`

### Feature Fields. 

The column names take the following format:

`
<typemeasure><sourcemeasure>-<Type>-<Axis>
`

`typemeasure` may be  `t for Time` or `f for Frequency`.

`sourecemeasure` can be `Acc` for Accelerometer or `Gyro` for Gyroscope.


`Type` can be `Mean`, for an average, or `Std`, for standard deviation.

`Axis`  indicates the axis of movement, Can be `X`, `Y` or `Z`.

* `tBodyAcc-mean()-X` 
* `tBodyAcc-mean()-Y` 
* `tBodyAcc-mean()-Z` 
* `tBodyAcc-std()-X` 
* `tBodyAcc-std()-Y` 
* `tBodyAcc-std()-Z` 
* `tGravityAcc-mean()-X` 
* `tGravityAcc-mean()-Y` 
* `tGravityAcc-mean()-Z` 
* `tGravityAcc-std()-X` 
* `tGravityAcc-std()-Y` 
* `tGravityAcc-std()-Z` 
* `tBodyAccJerk-mean()-X` 
* `tBodyAccJerk-mean()-Y` 
* `tBodyAccJerk-mean()-Z` 
* `tBodyAccJerk-std()-X` 
* `tBodyAccJerk-std()-Y` 
* `tBodyAccJerk-std()-Z` 
* `tBodyGyro-mean()-X` 
* `tBodyGyro-mean()-Y` 
* `tBodyGyro-mean()-Z` 
* `tBodyGyro-std()-X` 
* `tBodyGyro-std()-Y` 
* `tBodyGyro-std()-Z` 
* `tBodyGyroJerk-mean()-X` 
* `tBodyGyroJerk-mean()-Y` 
* `tBodyGyroJerk-mean()-Z` 
* `tBodyGyroJerk-std()-X` 
* `tBodyGyroJerk-std()-Y` 
* `tBodyGyroJerk-std()-Z` 
* `tBodyAccMag-mean()` 
* `tBodyAccMag-std()` 
* `tGravityAccMag-mean()` 
* `tGravityAccMag-std()` 
* `tBodyAccJerkMag-mean()` 
* `tBodyAccJerkMag-std()` 
* `tBodyGyroMag-mean()` 
* `tBodyGyroMag-std()` 
* `tBodyGyroJerkMag-mean()` 
* `tBodyGyroJerkMag-std()` 
* `fBodyAcc-mean()-X` 
* `fBodyAcc-mean()-Y` 
* `fBodyAcc-mean()-Z` 
* `fBodyAcc-std()-X` 
* `fBodyAcc-std()-Y` 
* `fBodyAcc-std()-Z` 
* `fBodyAccJerk-mean()-X` 
* `fBodyAccJerk-mean()-Y` 
* `fBodyAccJerk-mean()-Z` 
* `fBodyAccJerk-std()-X` 
* `fBodyAccJerk-std()-Y` 
* `fBodyAccJerk-std()-Z` 
* `fBodyGyro-mean()-X` 
* `fBodyGyro-mean()-Y` 
* `fBodyGyro-mean()-Z` 
* `fBodyGyro-std()-X` 
* `fBodyGyro-std()-Y` 
* `fBodyGyro-std()-Z` 
* `fBodyAccMag-mean()` 
* `fBodyAccMag-std()` 
* `fBodyBodyAccJerkMag-mean()` 
* `fBodyBodyAccJerkMag-std()` 
* `fBodyBodyGyroMag-mean()` 
* `fBodyBodyGyroMag-std()` 
* `fBodyBodyGyroJerkMag-mean()` 
* `fBodyBodyGyroJerkMag-std()` 
