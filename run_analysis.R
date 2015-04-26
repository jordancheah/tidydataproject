# run_analysis.R executes the following
#
#   STEP 1. Merges the training and the test sets to create one data set.
#   STEP 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#   STEP 3. Uses descriptive activity names to name the activities in the data set
#   STEP 4. Appropriately labels the data set with descriptive variable names. 
#   STEP 5. From the data set in step 4, creates a second, independent tidy data set with the 
#           average of each variable for each activity and each subject.

#############################################################################
#   STEP 1. Merges the training and the test sets to create one data set.
#############################################################################
raw_features = read.table("features.txt")

raw_X_test = read.table("test/X_test.txt")
raw_act_test = read.table("test/y_test.txt")
raw_subject_test = read.table("test/subject_test.txt")

raw_X_train = read.table("train/X_train.txt")
raw_act_train = read.table("train/y_train.txt")
raw_subject_train = read.table("train/subject_train.txt")

names(raw_X_test) <- raw_features[,2]
names(raw_X_train) <- raw_features[,2]
raw_X <- rbind(raw_X_test, raw_X_train)

####################################################################################################
#   STEP 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
####################################################################################################

# Assumption: all means and std variables has string -mean() and -std()
drop_X <- cbind(raw_X[,grep("-mean\\(", raw_features[,2])], raw_X[,grep("-std\\(", raw_features[,2])])
drop_X["Subject"] <- rbind(raw_subject_test, raw_subject_train)   # Create a new column Subject
drop_X["ActCode"] <- rbind(raw_act_test, raw_act_train) #Create a new column ActCode


####################################################################################################
#   STEP 3. Uses descriptive activity names to name the activities in the data set
####################################################################################################

raw_activity_labels = read.table("activity_labels.txt")
X2 <- merge(drop_X, raw_activity_labels, by.x = "ActCode", by.y = "V1")
colnames(X2)[colnames(X2)=="V2"] <- "ActName"    # rename column name V1 to ActName

####################################################################################################
#   STEP 4. Appropriately labels the data set with descriptive variable names. 
####################################################################################################

# Already done in STEP 2


####################################################################################################
#   STEP 5. From the data set in step 4, creates a second, independent tidy data set with the 
#           average of each variable for each activity and each subject.
####################################################################################################

hasmean <- grep("-mean\\(", raw_features[,2])    # return all the row numbers which has the word "-mean"
hasstd <- grep("-std\\(", raw_features[,2])      # return all the row numbers which has the word "-std"
hasmeanstd <- c(hasmean,hasstd)          # combine the two lists of numbers
varslist <- raw_features[hasmeanstd,2]   # Column Names of all the -mean and -std columns

library(data.table)
DT <- data.table(X2)
DT2 <- DT[,lapply(.SD,mean), by="Subject,ActName"]
DT3 <- DT2[order(Subject, ActName),]
write.table(DT3, file="DT3.txt", row.names = FALSE)

