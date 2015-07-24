# Please note that, for this function to work, you need to send the directory
# in which the unzipped folder called "UCI HAR Dataset" is saved. The code will
# stop and print a message otherwise!

        
if (!file.exists("UCI HAR Dataset")) {
        print("UCI HAR Dataset folder was not find in your working directory")
        print("The code will stop now. Please download and unzip data from")
        print("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
        print("and run the code again.")
        stop
} else {
        # Read the features and activity_labels files
        features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
        activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
                
        # Read the files in the "test" directory
        test_x <- read.table("UCI HAR Dataset/test/X_test.txt")
        test_y <- read.table("UCI HAR Dataset/test/y_test.txt")
        subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
        subject_test <- as.vector(subject_test[ ,1])
                
        # Read the files in the "train" directory
        train_x <- read.table("UCI HAR Dataset/train/X_train.txt")
        train_y <- read.table("UCI HAR Dataset/train/y_train.txt")
        subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
        subject_train <- as.vector(subject_train[ ,1])
                
        # Make a tidy "test" dataset, put approp. colnames and add col of subjects
        test <- test_x
        colnames(test) <- features[ ,2]
        test$subject <- subject_test
                
        # Get descriptive activity names to name the activities in the data set
        test_activity <- vector(mode="character", length=nrow(test_y))
        for (i in 1:nrow(test_y)){
                act_id <- test_y[i,1]
                test_activity[i] <- activity_labels[act_id,2]
        }
                
        test$activity <- test_activity
                
        # Remove all not needed variables to avoid confusion
        remove(subject_test, test_x, test_y, act_id, i, test_activity)
                
        # Make a tidy "train" dataset, put approp. colnames and add col of subjects
        train <- train_x
        colnames(train) <- features[ ,2]
        train$subject <- subject_train
                
        # Get descriptive activity names to name the activities in the data set
        train_activity <- vector(mode="character", length=nrow(train_y))
        for (i in 1:nrow(train_y)){
                act_id <- train_y[i,1]
                train_activity[i] <- activity_labels[act_id,2]
        }
                
        train$activity <- train_activity
                
        # Remove all not needed variables to avoid confusion
        remove(subject_train, train_x, train_y, act_id, i, train_activity)
        remove(activity_labels, features)
                
        # Merges the "train" and the "test" data frames to create one
        my_data <- rbind(test, train)
        remove(test, train)
                
        # Since the colnames have invalid characters, we need to fix them
        colnames(my_data) <- make.names(colnames(my_data), unique = TRUE, allow_ = TRUE)
        
        # Find the columns where the "mean" and "std" are listed
        extract_cols <- grep("mean|std", colnames(my_data))
                
        # Create the tidy data set of extracted data with only "mean" and "std" cols
        library(dplyr)
        extracted_data <- select(my_data, extract_cols, subject, activity)
        remove(my_data, extract_cols)
                
        # STEPS 1 TO 4 OF THE COURSE PROJECT WERE SOLVED UP TILL HERE
        # "extracted_data" is a tidy data frame in which the "test"
        # and the "train" ds were merged, containing the measurements
        # that correspond to a mean or std, with proper colnames,
        # includes de names of the activities (standing, walking_upstairs, etc)
        # in a column called "activity" and identifies the subject who
        # did them in a column called "subject".
                
        # =============================================================
                
        # Here I will solve STEP 5 of the course project:
        # 5. From the data set in step 4, creates a second, independent 
        # tidy data set with the average of each variable for each activity 
        # and each subject
                
}