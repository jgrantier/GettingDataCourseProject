---
title: Codebook for Samsung Data
author: J Grantier
date: 2015_9_26
output:
  html_document:
    keep_md: yes
---

## Project Description
The data for this project comes from a machine learning study of human activity recognition using smartphones (specifically the Samsung Galaxy S II).  The goal was to simplify the data provided into a tidy data set that just included aggregate means of the mean and standard deviation variables for each subject/activity combination.

##Original study design and data processing
The data for this project comes from a machine learning study of human activity recognition using smartphones (specifically the Samsung Galaxy S II).
A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Citations:
[1]Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

[2] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

###Details of Original Study
Summarized from the link above:

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it was provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
- Features are normalized,bounded within [-1,1] and are thus unitless
- Each feature vector is a row on the text file.


###Files in the Original Data
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features
- 'activity_labels.txt': Links the class labels with their activity name
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

###Variables in the Original Test and Training Datasets
The features selected for these datasets come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

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
angle(): Angle between two vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean 

##Creating the tidy data file
For this project, we were asked to combine the data from the test and train sets and add the subject and activity data for each observation.  The data was then to be narrowed down to just the mean and standard deviation measurements for each feature vector above and then summarized by taking the mean of the data for each subject/activity group.  (It was unclear if the mean of the frequency and the mean of the angle data were necessary, but they were included for completeness.  The columns corresponding to each are given below and can be removed as a set if unneccesary.)


##Description of the variables in the tinydata.txt file
The final tidy dataset includes the variables for subject number and activity and 86 variables that represent the means of the feature vectors in the original dataset.  There are 30 subjects that each completed all of the six activities giving 180 observations/rows.
- Column 1: subject_num
 - Column 2: activity
 - Columns 3:35: aggregated means of the mean feature vectors
 - Columns 36:68: aggregated means of the standard deviation feature vectors
 - Columns 69:81: aggregated means of the mean frequency feature vectors
 - Columns 82:88: aggregated means of the angle feature vectors

Except for cleaning variable names to be R compliant(removing commas, dashes and parens), the same abbreviations are used as in the original dataset for consistency.
-t -time domain signals
-f ?frequency domain signals
-Acc ?accelerometer signal
-Gyro ?gyroscope signal
-Body -portion of signal corresponding to the body
-Gravity ?portion of signal corresponding to gravity
-Jerk ?measure of jerk (time derivation of acceleration)
-Mag -magnitude


###subject_num 
-Subject number
 - Class: Integer
 - Range: values from 1 to 30 representing 30 subjects
 - no units

###activity 
-Activity performed by the subject during the observation
 - Class: Character
 - Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 
 - no units

###tBodyAcc_mean_X
- Mean of the mean linear acceleration from the accelerometer signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyAcc_mean_Y
- Mean of the mean linear acceleration from the accelerometer signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###tBodyAcc_mean_Z
- Mean of the mean linear acceleration from the accelerometer signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tGravityAcc_mean_X
- Mean of the mean linear acceleration from the accelerometer signal corresponding to gravity in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tGravityAcc_mean_Y
- Mean of the mean linear acceleration from the accelerometer signal corresponding to gravity in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###tGravityAcc_mean_Z
- Mean of the mean linear acceleration from the accelerometer signal corresponding to gravity in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyAccJerk_mean_X
-Mean of the mean jerk from the accelerometer signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless



###tBodyAccJerk_mean_Y
- Mean of the mean jerk from the accelerometer signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyAccJerk_mean_Z
- Mean of the mean jerk from the accelerometer signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###tBodyGyro_mean_X
-Mean of the mean angular velocity from the gyroscope signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###tBodyGyro_mean_Y
- Mean of the mean angular velocity from the gyroscope signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###tBodyGyro_mean_Z
- Mean of the mean angular velocity from the gyroscope signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyGyroJerk_mean_X 
-Mean of the mean angular jerk from the gyrocope signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###tBodyGyroJerk_mean_Y
- Mean of the mean angular jerk from the gyroscope signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###tBodyGyroJerk_mean_Z
- Mean of the mean angular jerk from the gyroscope signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyAccMag_mean 
- Mean of the mean magnitude of the linear acceleration (3D) from the accelerometer signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tGravityAccMag_mean 
- Mean of the mean magnitude of the linear acceleration (3D) from the accelerometer signal corresponding to gravity (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyAccJerkMag_mean
- Mean of the mean magnitude of the jerk (3D) from the accelerometer signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyGyroMag_mean 
- Mean of the mean magnitude of the angular velocity (3D) from the gyroscope signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyGyroJerkMag_mean 
- Mean of the mean magnitude of the angular jerk (3D) from the gyrocope signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyAcc_mean_X
- Mean of the mean Fast Fourier Transform (FFT) of the linear acceleration from the accelerometer signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyAcc_mean_Y
- Mean of the mean Fast Fourier Transform (FFT) of the linear acceleration from the accelerometer signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###fBodyAcc_mean_Z
- Mean of the mean Fast Fourier Transform (FFT) of the linear acceleration from the accelerometer signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyAccJerk_mean_X
-Mean of the mean Fast Fourier Transform (FFT) of the jerk from the accelerometer signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###fBodyAccJerk_mean_Y
- Mean of the mean Fast Fourier Transform (FFT) of the jerk from the accelerometer signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyAccJerk_mean_Z
- Mean of the mean Fast Fourier Transform (FFT) of the jerk from the accelerometer signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyGyro_mean_X
-Mean of the mean Fast Fourier Transform (FFT) of the angular velocity from the gyroscope signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
 - Actual Minimum and Maximum: -0.99312261  0.474962448


###fBodyGyro_mean_Y
- Mean of the mean Fast Fourier Transform (FFT) of the angular velocity from the gyroscope signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###fBodyGyro_mean_Z
- Mean of the mean Fast Fourier Transform (FFT) of the angular velocity from the gyroscope signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###fBodyAccMag_mean 
- Mean of the mean Fast Fourier Transform (FFT) of the magnitude of the linear acceleration (3D) from the accelerometer signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###fBodyBodyAccJerkMag_mean
- Mean of the mean Fast Fourier Transform (FFT) of the magnitude of the jerk (3D) from the accelerometer signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyBodyGyroMag_mean 
- Mean of the mean Fast Fourier Transform (FFT) of the magnitude of the angular velocity (3D) from the gyroscope signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyBodyGyroJerkMag_mean 
- Mean of the mean Fast Fourier Transform (FFT) of the magnitude of the angular jerk (3D) from the gyrocope signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyAcc_standard.dev_X
- Mean of the standard deviation of the linear acceleration from the accelerometer signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyAcc_standard.dev_Y
- Mean of the standard deviation of the linear acceleration from the accelerometer signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###tBodyAcc_standard.dev_Z
- Mean of the standard deviation of the linear acceleration from the accelerometer signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tGravityAcc_standard.dev_X
- Mean of the standard deviation of the linear acceleration from the accelerometer signal corresponding to gravity in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tGravityAcc_standard.dev_Y
- Mean of the standard deviation of the linear acceleration from the accelerometer signal corresponding to gravity in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###tGravityAcc_standard.dev_Z
- Mean of the standard deviation of the linear acceleration from the accelerometer signal corresponding to gravity in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyAccJerk_standard.dev_X
-Mean of the standard deviation of the jerk from the accelerometer signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###tBodyAccJerk_standard.dev_Y
- Mean of the standard deviation of the jerk from the accelerometer signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyAccJerk_standard.dev_Z
- Mean of the standard deviation of the jerk from the accelerometer signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###tBodyGyro_standard.dev_X
-Mean of the standard deviation of the angular velocity from the gyroscope signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###tBodyGyro_standard.dev_Y
- Mean of the standard deviation of the angular velocity from the gyroscope signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
 - Actual Minimum and Maximum: 0.20420536  0.027470756 
 - unitless


###tBodyGyro_standard.dev_Z
- Mean of the standard deviation of the angular velocity from the gyroscope signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyGyroJerk_standard.dev_X 
-Mean of the standard deviation of the angular jerk from the gyrocope signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###tBodyGyroJerk_standard.dev_Y
- Mean of the standard deviation of the angular jerk from the gyroscope signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###tBodyGyroJerk_standard.dev_Z
- Mean of the standard deviation of the angular jerk from the gyroscope signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyAccMag_standard.dev 
- Mean of the standard deviation of the magnitude of the linear acceleration (3D) from the accelerometer signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tGravityAccMag_standard.dev 
- Mean of the standard deviation of the magnitude of the linear acceleration (3D) from the accelerometer signal corresponding to gravity (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyAccJerkMag_standard.dev
- Mean of the standard deviation of the magnitude of the jerk (3D) from the accelerometer signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyGyroMag_standard.dev 
- Mean of the standard deviation of the magnitude of the angular velocity (3D) from the gyroscope signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###tBodyGyroJerkMag_standard.dev 
- Mean of the standard deviation of the magnitude of the angular jerk (3D) from the gyrocope signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyAcc_standard.dev_X
- Mean of the standard deviation of the Fast Fourier Transform (FFT) of the linear acceleration from the accelerometer signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyAcc_standard.dev_Y
- Mean of the standard deviation of the Fast Fourier Transform (FFT) of the linear acceleration from the accelerometer signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###fBodyAcc_standard.dev_Z
- Mean of the standard deviation of the Fast Fourier Transform (FFT) of the linear acceleration from the accelerometer signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyAccJerk_standard.dev_X
-Mean of the standard deviation of the Fast Fourier Transform (FFT) of the jerk from the accelerometer signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###fBodyAccJerk_standard.dev_Y
- Mean of the standard deviation of the Fast Fourier Transform (FFT) of the jerk from the accelerometer signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyAccJerk_standard.dev_Z
- Mean of the standard deviation of the Fast Fourier Transform (FFT) of the jerk from the accelerometer signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
 - unitless

###fBodyGyro_standard.dev_X
-Mean of the standard deviation of the Fast Fourier Transform (FFT) of the angular velocity from the gyroscope signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
 - unitless


###fBodyGyro_standard.dev_Y
- Mean of the standard deviation of the Fast Fourier Transform (FFT) of the angular velocity from the gyroscope signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###fBodyGyro_standard.dev_Z
- Mean of the standard deviation of the Fast Fourier Transform (FFT) of the angular velocity from the gyroscope signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###fBodyAccMag_standard.dev 
- Mean of the standard deviation of the Fast Fourier Transform (FFT) of the magnitude of the linear acceleration (3D) from the accelerometer signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###fBodyBodyAccJerkMag_standard.dev
- Mean of the standard deviation of the Fast Fourier Transform (FFT) of the magnitude of the jerk (3D) from the accelerometer signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyBodyGyroMag_standard.dev 
- Mean of the standard deviation of the Fast Fourier Transform (FFT) of the magnitude of the angular velocity (3D) from the gyroscope signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyBodyGyroJerkMag_standard.dev 
- Mean of the standard deviation of the Fast Fourier Transform (FFT) of the magnitude of the angular jerk (3D) from the gyrocope signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyAcc_Mean.frequency_X
- Mean of the weighted average of the frequency components of the Fast Fourier Transform (FFT) of the linear acceleration from the accelerometer signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyAcc_Mean.frequency_Y
- Mean of the weighted average of the frequency components of the Fast Fourier Transform (FFT) of the linear acceleration from the accelerometer signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###fBodyAcc_Mean.frequency_Z
- Mean of the weighted average of the frequency components of the Fast Fourier Transform (FFT) of the linear acceleration from the accelerometer signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyAccJerk_Mean.frequency_X
-Mean of the weighted average of the frequency components of the Fast Fourier Transform (FFT) of the jerk from the accelerometer signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyAccJerk_Mean.frequency_Y
- Mean of the weighted average of the frequency components of the Fast Fourier Transform (FFT) of the jerk from the accelerometer signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
 - unitless

###fBodyAccJerk_Mean.frequency_Z
- Mean of the weighted average of the frequency components of the Fast Fourier Transform (FFT) of the jerk from the accelerometer signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
 - unitless

###fBodyGyro_Mean.frequency_X
-Mean of the weighted average of the frequency components of the Fast Fourier Transform (FFT) of the angular velocity from the gyroscope signal corresponding to the body in the X direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
 - unitless

###fBodyGyro_Mean.frequency_Y
- Mean of the weighted average of the frequency components of the Fast Fourier Transform (FFT) of the angular velocity from the gyroscope signal corresponding to the body in the Y direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###fBodyGyro_Mean.frequency_Z
- Mean of the weighted average of the frequency components of the Fast Fourier Transform (FFT) of the angular velocity from the gyroscope signal corresponding to the body in the Z direction
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###fBodyAccMag_Mean.frequency 
- Mean of the weighted average of the frequency components of the Fast Fourier Transform (FFT) of the magnitude of the linear acceleration (3D) from the accelerometer signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless


###fBodyBodyAccJerkMag_Mean.frequency
- Mean of the weighted average of the frequency components of the Fast Fourier Transform (FFT) of the magnitude of the jerk (3D) from the accelerometer signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyBodyGyroMag_Mean.frequency 
- Mean of the weighted average of the frequency components of the Fast Fourier Transform (FFT) of the magnitude of the angular velocity (3D) from the gyroscope signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###fBodyBodyGyroJerkMag_Mean.frequency 
- Mean of the weighted average of the frequency components of the Fast Fourier Transform (FFT) of the magnitude of the angular jerk (3D) from the gyrocope signal corresponding to the body (calculated using the Euclidean norm)
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###angle.tBodyAccMean.gravity          
- Mean of angle between the averaged signals in a signal window of linear acceleration on the body and gravity
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###angle.tBodyAccJerkMean.gravityMean  
- Mean of angle between the averaged signals in a signal window of jerk of linear acceleration on the body and the gravity mean
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

###angle.tBodyGyroMean.gravityMean     
- Mean of angle between the averaged signals in a signal window of angular velocity on the body and the gravity mean
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

### angle.X.gravityMean                 
- Mean of angle between the averaged signals in a signal window of X and the gravity mean
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

### angle.Y.gravityMean                 
- Mean of angle between the averaged signals in a signal window of Y and the gravity mean
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless

### angle.Z.gravityMean                 
- Mean of angle between the averaged signals in a signal window of Z and the gravity mean
 - Class: Numeric
 - Values: Normalized and bounded between -1 and 1
- unitless






##Sources
Codebook modeled after:
Sample Codebook from DSS Site http://datasciencespecialization.github.io/
By JorisSchut https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41


