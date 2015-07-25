# CodeBook

## Initial Variables
It is worth noting that initial variables are removed after using.

**features:**         file comming from "UCI HAR Dataset/features.txt"

**activity_labels:**  file comming from "UCI HAR Dataset/activity_labels.txt"

**test_x:**           file comming from "UCI HAR Dataset/test/X_test.txt"

**test_y:**           file comming from "UCI HAR Dataset/test/y_test.txt"

**subject_test:**     file comming from "UCI HAR Dataset/test/subject_test.txt"

**train_x:**          file comming from "UCI HAR Dataset/train/X_train.txt"

**train_y:**          file comming from "UCI HAR Dataset/train/y_train.txt"

**subject_train:**    file comming from "UCI HAR Dataset/train/subject_train.txt"

## New intermediate variables
It is worth noting that intermediate variables are removed after using.

**test:**           data.frame in which the tidy dataset corresponding to test is going to be stored

**test$subject:**   new column on the test data.frame that saves the subject performing the activity

**test$activity:**  new column on the test data.frame that saves the descriptive label of the activity performed as a character

**train:**          data.frame in which the tidy dataset corresponding to train is going to be stored

**train$subject:**  new column on the train data.frame that saves the subject performing the activity

**train$activity:** new column on the train data.frame that saves the descriptive label of the activity performed as a character

**my_data:**        data.frame in which the tidy "test" and "train" data.frames are merged in compliance with question 1.

**extract_cols:**   numbers identifing the columns in which either the word "mean" or "std" is used as identifier.


# Final Variables
Final variables are available in the Global Environment.

**extracted_data:** new data.frame in which only the colums that contain an identifier partially matching the word "mean" or "std" are saved along with the columns identifing the subject and describing the activity.

**grouped_ds:**     the extracted_data data.frame after it was grouped by activity and subject.

**new_ds:**         final data.frame of dimensions 180x81 in which the answer to question 5 is saved.
