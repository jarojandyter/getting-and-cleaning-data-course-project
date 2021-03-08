#setwd("D:\\R\\Course Project")
#getwd()      

#download zip file and extract zip file
library(downloader)
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download(fileurl, dest="dataset.zip", mode="wb") 
unzip ("dataset.zip")

#LOAD DATASETS
base_folder <- "UCI HAR Dataset\\"
working_folder <- paste0(base_folder,"test\\")
test_subject_data <- read.table(paste0(working_folder, "subject_test.txt"))
test_X_data <- read.table(paste0(working_folder, "X_test.txt"))
test_y_data <- read.table(paste0(working_folder, "y_test.txt"))

#TRAIN
working_folder <- paste0(base_folder,"train\\")
train_subject_data <- read.table(paste0(working_folder, "subject_train.txt"))
train_X_data <- read.table(paste0(working_folder, "X_train.txt"))
train_y_data <- read.table(paste0(working_folder, "y_train.txt"))

Activities <- read.table(paste0(base_folder, "activity_labels.txt"))

colnames(Activities) <- c("ActivityId","ActivityName")

features <- read.table(paste0(base_folder, "features.txt"))

#Merge test Datasets
test_data <- cbind(test_subject_data, test_y_data, test_X_data)

#Merge train Datasets
train_data <- cbind(train_subject_data, train_y_data, train_X_data)

#Merges the training and the test sets to create one data set.
AllData <- rbind(test_data,train_data)

#Appropriately labels the data set with descriptive variable names. 
colnames(AllData) <- c("subjectId","ActivityId",features[,2])

#Extracts only the measurements on the mean and standard deviation for each measurement.
MeanAndStdTF <- grepl("ActivityId", colnames(AllData)) | grepl("subjectId", colnames(AllData)) |grepl("std", colnames(AllData)) | grepl("mean", colnames(AllData))
MeanAndStd <- AllData[,  MeanAndStdTF]

#Uses descriptive activity names to name the activities in the data set
MeanAndStd$ActivityName = Activities[Activities$ActivityId == "3",][["ActivityName"]]

#creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(reshape2)
MeanAndStdmelted <- melt(MeanAndStd, id = c("subjectId", "ActivityId", "ActivityName"))
tidyDataSet <- aggregate(.~ subjectId + ActivityId + ActivityName + variable ,MeanAndStdmelted , mean)

write.table(tidyDataSet, "tidyDataSet.txt", row.name=FALSE)
