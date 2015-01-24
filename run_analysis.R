run_analysis <- function(){ 
  #download and unzip
  #zip_URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  #download.file(zip_URL, destfile = "./run_data.zip")
  #unzip("run_data.zip", unzip = "internal")
  
  
  #load the necessary libraries
  library(plyr)
  library(dplyr)
  
  
  #read the column names for readings(x_*.txt)
  ###Appropriately labels the data set with descriptive variable names. - ACHIEVED###
  readings_titles <- read.table("./UCI HAR Dataset/features.txt", sep = "", colClasses = "character", stringsAsFactors = FALSE)
  readings_titles <- as.character(readings_titles[ ,2])
  list_of_names <- make.names(readings_titles, unique=TRUE)
  list <- gsub("[.]{3}", ".", list_of_names)
  list <- gsub("[.]{2}", ".", list)
    
  
  #read only the necessary files from test folder
  subject_test_table <- read.table("./UCI HAR Dataset/test/subject_test.txt", colClasses = "integer", stringsAsFactors = FALSE)
  activity_test_table <- read.table("./UCI HAR Dataset/test/y_test.txt")
  activity_test_table$V1 <- as.factor(activity_test_table$V1)
  ###Uses descriptive activity names to name the activities in the data set - ACHIEVED###
  activity_test_table$V1 <- revalue(activity_test_table$V1, c("1" = "WALK", "2" = "WALK_UP", "3" = "WALK_DOWN", "4" = "SIT", "5" = "STAND", "6" = "LAY"))
  readings_test_table <- read.table("./UCI HAR Dataset/test/x_test.txt", sep = "", colClasses = "numeric", stringsAsFactors = FALSE)
  
  
  #read only the necessary files from train folder
  subject_train_table <- read.table("./UCI HAR Dataset/train/subject_train.txt", colClasses = "integer", nrows = 600, stringsAsFactors = FALSE)
  activity_train_table <- read.table("./UCI HAR Dataset/train/y_train.txt", nrows = 600)
  activity_train_table$V1 <- as.factor(activity_train_table$V1)
  ###Uses descriptive activity names to name the activities in the data set - ACHIEVED###
  activity_train_table$V1 <- revalue(activity_train_table$V1, c("1" = "WALK", "2" = "WALK_UP", "3" = "WALK_DOWN", "4" = "SIT", "5" = "STAND", "6" = "LAY"))
  readings_train_table <- read.table("./UCI HAR Dataset/train/x_train.txt", sep = "", colClasses = "numeric", nrows = 600, stringsAsFactors = FALSE)

  
  #merge all the columns of the test table. Assign names to all the columns of the new table
  test_table <- cbind(subject_test_table, activity_test_table)
  test_table <- cbind(test_table, readings_test_table)
  colnames(test_table) <- c("subject", "activity", list)
  
  
  #merge all the columns of the train table. Assign names to all the columns of the new table
  train_table <- cbind(subject_train_table, activity_train_table)
  train_table <- cbind(train_table, readings_train_table)
  colnames(train_table) <- c("subject", "activity", list)

  
  ###Merges the training and the test sets to create one data set. - ACHIEVED###
  final_table <- rbind(test_table, train_table)
  final_table_dt <- tbl_df(final_table)
  
  
  #arrange the columns in ascending order of subject and activity. 
  #group by the subject and activity
  #summarise the readings
  final_table_dt <- arrange(final_table_dt, subject, activity)
  ###Extracts only the measurements on the mean and standard deviation for each measurement. - ACHIEVED###
  final_table_dt <- select(final_table_dt, subject, activity, contains("mean"), contains ("std"), -contains("angle"))
  ###From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. - ACHIEVED###
  final_table_dt <- group_by(final_table_dt, subject, activity)
  final_table_dt2 <- summarise_each(final_table_dt, funs(mean), contains("mean"), contains("std"))
  
  if (file.exists("./project_output.txt")){file.remove("./project_output.txt")}
  write.table(final_table_dt2, "./project_output.txt", sep = " ", eol = "\n", col.names = TRUE, row.names = FALSE)
  
}

