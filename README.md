##Getting and Cleaning Data (Coursera) - Course Project##

**This repository contains my course project for the Coursera course "Getting and Cleaning data".**

###The Original Data###
The original dataset this course project is based upon is called “Human Activity Recognition Using Smartphones Data Set“. It be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 
Experiment description from the original dataset README:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

###The Codebook###
The codebook in this repository explains the datasource in more detail, the features that were used for this project and how they were modified.


###The run_analysis.R script###
This script modifies the original dataset. It aims to: 
- Merge the training and the test sets to create one data set
- Extract only the measurements on the mean and standard deviation for each measurement 
- Use descriptive activity names to name the activities in the data set
- Appropriately label the data set with descriptive variable names
- Create a second, independent tidy data set with the average of each variable for each activity and each subject
 The individual steps are also explained within the script.
