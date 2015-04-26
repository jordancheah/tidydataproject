## Getting and Cleaning Data Course Project
# TidyDataProject
————————————————————————————

##Overview
run_analysis.R prepares and clean the data
* by using rbind and cbind
* by using *grep* to return all the mean() and std() columns

run_analysis.R prepares the final output table using data.table and lapply.

##Assumption
We assume all the mean and std columns to be selected has the following strings mean() and std() in the names.

##Pseudocode
run_analysis.R executes the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Column Names for the final output file
In the final output file, which is ordered by Subject and Activity,
* ActCode is the activity code (1-6)
* ActName is the description for the activity.
* Subject is the identifier number of the subject
* All other columns i.e. the means of variables bear the same name as the original variable.

For more details, please refer to the comments in source file run_analysis.R