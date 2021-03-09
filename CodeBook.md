# Getting and Cleaning Data - peer assessment project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names.
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

In the run_analysis.R script,we were recreated each step.
This file 'run_analysis.R' contains all the code to perform the analyses described in the 5 steps. They can be launched in RStudio by just importing the file.

# About this R script
The original data was modified by using the following steps:
1) Merging the training and the test sets to create one dataset.
2) Appropriately labeling the data set with descriptive variable names.
3) Extracting only the measurements on the mean and standard deviation for each measurement.
4) Using descriptive activity names to name the activities in the data set by adding a new column ActivityName
5) Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

# Description
Identifiers:
1) subjectId : The id of the subject. Subject column is numbered sequentially from 1 to 30.
2) ActivityId and ActivityName : The activity done during the tests
Activity column has 6 types as listed below.
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

# Variables 
The tidy data contains 180 rows and 69 columns (66 variables (mean) and 3 for subject & activity identifiers).
1.	subjectId
2.	ActivityId
3	ActivityName
4	tBodyAcc-mean()-X
5	tBodyAcc-mean()-Y
6	tBodyAcc-mean()-Z
7	tBodyAcc-std()-X
8	tBodyAcc-std()-Y
9	tBodyAcc-std()-Z
10	tGravityAcc-mean()-X
11	tGravityAcc-mean()-Y
12	tGravityAcc-mean()-Z
13	tGravityAcc-std()-X
14	tGravityAcc-std()-Y
15	tGravityAcc-std()-Z
16	tBodyAccJerk-mean()-X
17	tBodyAccJerk-mean()-Y
18	tBodyAccJerk-mean()-Z
19	tBodyAccJerk-std()-X
20	tBodyAccJerk-std()-Y
21	tBodyAccJerk-std()-Z
22	tBodyGyro-mean()-X
23	tBodyGyro-mean()-Y
24	tBodyGyro-mean()-Z
25	tBodyGyro-std()-X
26	tBodyGyro-std()-Y
27	tBodyGyro-std()-Z
28	tBodyGyroJerk-mean()-X
29	tBodyGyroJerk-mean()-Y
30	tBodyGyroJerk-mean()-Z
31	tBodyGyroJerk-std()-X
32	tBodyGyroJerk-std()-Y
33	tBodyGyroJerk-std()-Z
34	tBodyAccMag-mean()
35	tBodyAccMag-std()
36	tGravityAccMag-mean()
37	tGravityAccMag-std()
38	tBodyAccJerkMag-mean()
39	tBodyAccJerkMag-std()
40	tBodyGyroMag-mean()
41	tBodyGyroMag-std()
42	tBodyGyroJerkMag-mean()
43	tBodyGyroJerkMag-std()
44	fBodyAcc-mean()-X
45	fBodyAcc-mean()-Y
46	fBodyAcc-mean()-Z
47	fBodyAcc-std()-X
48	fBodyAcc-std()-Y
49	fBodyAcc-std()-Z
50	fBodyAccJerk-mean()-X
51	fBodyAccJerk-mean()-Y
52	fBodyAccJerk-mean()-Z
53	fBodyAccJerk-std()-X
54	fBodyAccJerk-std()-Y
55	fBodyAccJerk-std()-Z
56	fBodyGyro-mean()-X
57	fBodyGyro-mean()-Y
58	fBodyGyro-mean()-Z
59	fBodyGyro-std()-X
60	fBodyGyro-std()-Y
61	fBodyGyro-std()-Z
62	fBodyAccMag-mean()
63	fBodyAccMag-std()
64	fBodyBodyAccJerkMag-mean()
65	fBodyBodyAccJerkMag-std()
66	fBodyBodyGyroMag-mean()
67	fBodyBodyGyroMag-std()
68	fBodyBodyGyroJerkMag-mean()
69	fBodyBodyGyroJerkMag-std()
