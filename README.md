# Getting and cleaning data - Course Project

Answer to the course project of Coursera "Getting and cleaning data"

1.  The data for this project can be downloaded from:     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Please unzip the data on your desired work directory.

2.  The script saved as run_analysis.R is a stand-alone script. For it to run, it must be saved on the same folder where the "UCI HAR Dataset" directoy (folder) has been saved. This folder is the one obtained just after extracting (unzipping) the files downloaded in step 1. DO NOT MODIFY THE FOLDER, IT'S CONTENT OR THE NAME OF THE FILES IN IT!!!

3. To run the code, first set your working directory in R using the setwd() command. Your directory should be that where the run_analysis.R and the "UCI HAR Dataset" directory are saved. If another directory is chosen by mistake (and the run_analysis.R file is saved there), the code will print a message.

4. The code is fully commented on each step. Please, refer to it for further information on what's going on. As a summary, the code first verifies the existence of a directory called "UCI HAR Dataset", then loads all the files and makes two tidy datasets called "test" and "train". Later on, the code merges this two and extracts the columns where a "mean" or a "std" is reported. This new dataset, called "extracted_data" corresponds to answering questions 1 to 4 of the Course Project. Finally, the script groups the data by activity and subject and calculates the mean value. The final dataset, called "new_ds", contains the answer to question 5.

5. The final line of the code saves the solution (new_ds) to question 5 in a text file using the command write.table()
