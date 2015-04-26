## Getting and Cleaning Data Course Project
# TidyDataProject
————————————————————————————

##Program Overview
run_analysis.R executes the following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


##Assumptions
We assume all the mean and std columns to be selected has the following strings mean() and std() in the names.

##Implementation Overview
run_analysis.R prepares and clean the data
* by using rbind and cbind
* by using *grep* to return all the mean() and std() columns

run_analysis.R prepares the final output table using data.table and lapply.

For more implementation details, please refer to the comments in source file run_analysis.R


##Column Names for the final output file DT4.txt
In the final output file, which is ordered by Subject and Activity,
* ActCode is the activity code (1-6)
* ActName is the description for the activity.
* Subject is the identifier number of the subject
* All other columns i.e. the means of variables bear the same name as the original variable.

##Tidy Data for Output File DT4.txt
The final output file fulfills the tidy data set requirements:
* Each variable forms a column (Subject, ActCode etc)
* Each observation forms a row, with primary key = Subject,ActCode
* Each data set contains information on only one observational unit

