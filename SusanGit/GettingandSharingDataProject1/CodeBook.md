The file meanGrouped.txt includes the mean values for a subset of the source columns, grouped by Subject and Activity. Subjects are identified by number 1-30. 
Activities have the following values: WALKING, WALKING_UPSTAIRS
, WALKING_DOWNSTAIRS
, SITTING
, STANDING
, LAYING


The data for this project represents data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

As described in the source file "features_info.txt":
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals
 (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Information about measurement units:
 The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'.
 The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
 The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
 Features are normalized and bounded within [-1,1].

The file meanGrouped.txt includes the following variables, with all except the first three representing the mean of the source variables of the same name.

Subject
Activity
ActivityID
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z 
tGravityAcc-std()-X 
tGravityAcc-std()-Y 
tGravityAcc-std()-Z 
tBodyAccJerk-mean()-X 
tBodyAccJerk-mean()-Y 
tBodyAccJerk-mean()-Z 
tBodyAccJerk-std()-X 
tBodyAccJerk-std()-Y 
tBodyAccJerk-std()-Z 
tBodyGyro-mean()-X 
tBodyGyro-mean()-Y 
tBodyGyro-mean()-Z 
tBodyGyro-std()-X 
tBodyGyro-std()-Y 
tBodyGyro-std()-Z 
tBodyGyroJerk-mean()-X 
tBodyGyroJerk-mean()-Y 
tBodyGyroJerk-mean()-Z 
tBodyGyroJerk-std()-X 
tBodyGyroJerk-std()-Y 
tBodyGyroJerk-std()-Z 
tBodyAccMag-mean() 
tBodyAccMag-std() 
tGravityAccMag-mean() 
tGravityAccMag-std() 
tBodyAccJerkMag-mean() 
tBodyAccJerkMag-std() 
tBodyGyroMag-mean() 
tBodyGyroMag-std() 
tBodyGyroJerkMag-mean() 
tBodyGyroJerkMag-std() 
fBodyAcc-mean()-X 
fBodyAcc-mean()-Y 
fBodyAcc-mean()-Z 
fBodyAcc-std()-X 
fBodyAcc-std()-Y 
fBodyAcc-std()-Z 
fBodyAcc-meanFreq()-X 
fBodyAcc-meanFreq()-Y 
fBodyAcc-meanFreq()-Z 
fBodyAccJerk-mean()-X 
fBodyAccJerk-mean()-Y 
fBodyAccJerk-mean()-Z 
fBodyAccJerk-std()-X 
fBodyAccJerk-std()-Y 
fBodyAccJerk-std()-Z 
fBodyAccJerk-meanFreq()-X 
fBodyAccJerk-meanFreq()-Y 
fBodyAccJerk-meanFreq()-Z 
fBodyGyro-mean()-X 
fBodyGyro-mean()-Y 
fBodyGyro-mean()-Z 
fBodyGyro-std()-X 
fBodyGyro-std()-Y 
fBodyGyro-std()-Z 
fBodyGyro-meanFreq()-X 
fBodyGyro-meanFreq()-Y 
fBodyGyro-meanFreq()-Z 
fBodyAccMag-mean() 
fBodyAccMag-std() 
fBodyAccMag-meanFreq() 
fBodyBodyAccJerkMag-mean() 
fBodyBodyAccJerkMag-std() 
fBodyBodyAccJerkMag-meanFreq() 
fBodyBodyGyroMag-mean() 
fBodyBodyGyroMag-std() 
fBodyBodyGyroMag-meanFreq() 
fBodyBodyGyroJerkMag-mean() 
fBodyBodyGyroJerkMag-std() 
fBodyBodyGyroJerkMag-meanFreq() 
angle(tBodyAccMean,gravity) 
angle(tBodyAccJerkMean),gravityMean) 
angle(tBodyGyroMean,gravityMean) 
angle(tBodyGyroJerkMean,gravityMean) 
angle(X,gravityMean) 
angle(Y,gravityMean) 
angle(Z,gravityMean)