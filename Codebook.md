## Getting and Cleaning Data Course Project
# Codebook for TidyDataProject

##Overview
The final output file DT4.txt from Step 5:
* is a wide table, with all the means as columns
* Subject+ActCode is the primary key to the table DT4

##Subject column
* is the identifier number of the subject
* is a number

##ActCode column
* is the activity code
* is a number (1-6)

##ActName column
* is the description of the activity

##All other columns
* is the mean of a variable, and it bears the same name as the original variable
* is a number
* These columns are:
 [1] tBodyAcc-mean()-X           tBodyAcc-mean()-Y           tBodyAcc-mean()-Z           tGravityAcc-mean()-X       
 [5] tGravityAcc-mean()-Y        tGravityAcc-mean()-Z        tBodyAccJerk-mean()-X       tBodyAccJerk-mean()-Y      
 [9] tBodyAccJerk-mean()-Z       tBodyGyro-mean()-X          tBodyGyro-mean()-Y          tBodyGyro-mean()-Z         
[13] tBodyGyroJerk-mean()-X      tBodyGyroJerk-mean()-Y      tBodyGyroJerk-mean()-Z      tBodyAccMag-mean()         
[17] tGravityAccMag-mean()       tBodyAccJerkMag-mean()      tBodyGyroMag-mean()         tBodyGyroJerkMag-mean()    
[21] fBodyAcc-mean()-X           fBodyAcc-mean()-Y           fBodyAcc-mean()-Z           fBodyAccJerk-mean()-X      
[25] fBodyAccJerk-mean()-Y       fBodyAccJerk-mean()-Z       fBodyGyro-mean()-X          fBodyGyro-mean()-Y         
[29] fBodyGyro-mean()-Z          fBodyAccMag-mean()          fBodyBodyAccJerkMag-mean()  fBodyBodyGyroMag-mean()    
[33] fBodyBodyGyroJerkMag-mean() tBodyAcc-std()-X            tBodyAcc-std()-Y            tBodyAcc-std()-Z           
[37] tGravityAcc-std()-X         tGravityAcc-std()-Y         tGravityAcc-std()-Z         tBodyAccJerk-std()-X       
[41] tBodyAccJerk-std()-Y        tBodyAccJerk-std()-Z        tBodyGyro-std()-X           tBodyGyro-std()-Y          
[45] tBodyGyro-std()-Z           tBodyGyroJerk-std()-X       tBodyGyroJerk-std()-Y       tBodyGyroJerk-std()-Z      
[49] tBodyAccMag-std()           tGravityAccMag-std()        tBodyAccJerkMag-std()       tBodyGyroMag-std()         
[53] tBodyGyroJerkMag-std()      fBodyAcc-std()-X            fBodyAcc-std()-Y            fBodyAcc-std()-Z           
[57] fBodyAccJerk-std()-X        fBodyAccJerk-std()-Y        fBodyAccJerk-std()-Z        fBodyGyro-std()-X          
[61] fBodyGyro-std()-Y           fBodyGyro-std()-Z           fBodyAccMag-std()           fBodyBodyAccJerkMag-std()  
[65] fBodyBodyGyroMag-std()      fBodyBodyGyroJerkMag-std() 
