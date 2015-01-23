{\rtf1\ansi\ansicpg1252\cocoartf1343\cocoasubrtf160
{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red11\green81\blue160;\red38\green38\blue38;}
\paperw11900\paperh16840\margl1440\margr1440\vieww15820\viewh13220\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural

\f0\b\fs36 \cf0 Datasource
\b0\fs24 \
The original dataset is called 
\i \'93Human Activity Recognition Using Smartphones Data Set\'93
\i0  which can be found here: {\field{\*\fldinst{HYPERLINK "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"}}{\fldrslt \cf2 \expnd0\expndtw0\kerning0
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones}}\cf3 \expnd0\expndtw0\kerning0
.\
The \ul README\ulnone  of the original data set explains the features in detail:\
\
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. \
\
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). \
\
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).\
 \
These signals were used to estimate variables of the feature vector for each pattern:  \
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural

\b\fs28 \cf3 \

\fs36 Feature Selection
\b0\fs24 \
For the purpose of a course project for Coursera \'93Getting and Cleaning Data\'93 specific features of the original dataset were selected and modified.\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural
\cf0 \kerning1\expnd0\expndtw0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural

\b \cf0 Column 1: subject
\b0 \
Identifies the 30 different subjects (persons) that were part of the experiment. They are labelled 1-30.\
\

\b Column 2: activity
\b0 \
Descriptive names for 6 different activities performed by the subjects: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.\
\

\i\fs28 For the following 85 variables the average (mean) for each activity performed by each subject was calculated (column 3-88). This leads to a total of 180 rows (30 different subjects performing 6 different activities each). In the following the variables are described in more detail:
\i0\fs24 \
\

\b Columns 3-48: 
\b0 mean() and meanFreq()\
Mean values and weighted average of the frequency components to obtain a mean frequency for the following original measurements:\
tBodyAcc-XYZ\
tGravityAcc-XYZ\
tBodyAccJerk-XYZ\
tBodyGyro-XYZ\
tBodyGyroJerk-XYZ\
tBodyAccMag\
tGravityAccMag\
tBodyAccJerkMag\
tBodyGyroMag\
tBodyGyroJerkMag\
fBodyAcc-XYZ\
fBodyAccJerk-XYZ\
fBodyGyro-XYZ\
fBodyAccMag\
fBodyAccJerkMag\
fBodyGyroMag\
fBodyGyroJerkMag\
\

\b Columns 49-55:
\b0  angle()\
Angle between two vectors for the following vectors:\
tBodyAccMean\
tBodyAccJerkMean\
tBodyGyroMean\
tBodyGyroJerkMean\
gravityMean\
\

\b Columns 56-88: 
\b0 std()\
Standard deviation for the following original measurements\
tBodyAcc-XYZ\
tGravityAcc-XYZ\
tBodyAccJerk-XYZ\
tBodyGyro-XYZ\
tBodyGyroJerk-XYZ\
tBodyAccMag\
tGravityAccMag\
tBodyAccJerkMag\
tBodyGyroMag\
tBodyGyroJerkMag\
fBodyAcc-XYZ\
fBodyAccJerk-XYZ\
fBodyGyro-XYZ\
fBodyAccMag\
fBodyAccJerkMag\
fBodyGyroMag\
fBodyGyroJerkMag}