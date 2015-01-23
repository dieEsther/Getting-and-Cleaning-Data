#Load necessary packages
library(dplyr)


#Read all tables (test and train) and label the columns
features <- read.table("./UCI HAR Dataset/features.txt")
featurenames <- features[,2]

xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
colnames(xtest) <- featurenames

ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
colnames(ytest) <- "activity"

subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
colnames(subjecttest) <- "subject"

xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
colnames(xtrain) <- featurenames

ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
colnames(ytrain) <- "activity"

subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
colnames(subjecttrain) <- "subject"


#Combine the test and train tables
testcombined <- cbind(subjecttest, ytest, xtest)
traincombined <- cbind(subjecttrain, ytrain, xtrain)
totaldata <- rbind(testcombined, traincombined)


#Labels activities (walking, walking_upstairs, walking_downstairs, sitting, standing, laying)
totaldata$activity[totaldata$activity == 1] = "WALKING"
totaldata$activity[totaldata$activity == 2] = "WALKING_UPSTAIRS"
totaldata$activity[totaldata$activity == 3] = "WALKING_DOWNSTAIRS"
totaldata$activity[totaldata$activity == 4] = "SITTING"
totaldata$activity[totaldata$activity == 5] = "STANDING"
totaldata$activity[totaldata$activity == 6] = "LAYING"


#Extract mean and standard deviation columns
meancolumns <- grep("mean", names(totaldata), ignore.case = TRUE)
meannames <- names(totaldata)[meancolumns]
stdcolumns <- grep("std", names(totaldata), ignore.case = TRUE)
stdnames <- names(totaldata)[stdcolumns]


#Combine mean and standard deviations to a new dataset
newtotaldata <- totaldata[, c("subject", "activity", meannames, stdnames)]


#Create a new dataset with the average for each variable, activity and subject
averagedata <- newtotaldata %>% group_by(subject,activity) %>% summarise_each(funs(mean))


#Save the tidy dataset
write.table(average_data, "./tidy_dataset.txt", row.name = FALSE)