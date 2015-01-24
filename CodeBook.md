#**CODE BOOK**

##**Input for the project**
A weblink containing a zipped folder. The zipped folder has all the data related to 30 volunteers who performed certain standard activities while wearing a Samsung Galaxy Smartphone.
The inbuilt accelerometer from the smartphone provided all the data for this research.
We used only the following files from the input folder: 

- 1. features.txt (txt file) - Has the list of all readings which were recorded (of which we will only use the ones     related to the mean and the standard deviation).
- 2. activity_labels.txt (txt file) - Has the list of the activities which the volunteers performed for the reasearch.
- 3. test/subject_test - Sample set from 30 volunteers (30% of the volunteer data in "test" folder; 70% of the volunteer data in the "train" folder)
- 4. test/X_test - sensor readings for each of the volunteer from the accelerometers and gyroscopes. 
- 5. test/Y_test - activity corresponding to the subject and readings.
- 6. train/subject_train - Sample set from 30 volunteers (30% of the volunteer data)
- 7. train/X_train - sensor readings for each of the volunteer from the accelerometers and gyroscopes. 
- 8. train/Y_train - activity corresponding to the subject and readings.


##**Processing**
1. Read only the files mentioned above
2. Use the file #2 to map every activity in file #5 and file #8 to the corresponding logical names of the activities performed
3. Column bind the files #3,#4,#5 to create the test data frame.
4. Column bind the files #6,#7,#8 to create the train data frame.
5. For the new  data frames created in step #3 and step #4, provide appropriate column names (use file #1 from above for the column names of the readings)
6. Exclude all those columns from readings which are not related to either mean or the standard deviation
7. Group the data based on subject and then based on the activity
8. Create a new data frame with the mean of each of the readings' columns. 

##**Output for the project**
The following are the variables in the final output file. 
- 1. subject			- This is the ID of the person who volunteered to provide the readings
- 2. activity			- This is the activity he performed for that observation
Below are the column names for the readings from the accelerometer and the gyroscope. Generic explanations follows 
- 3. tBodyAcc.mean.X	
- 4. tBodyAcc.mean.Y	
- 5. tBodyAcc.mean.Z	
- 6. tGravityAcc.mean.X
- 7.  tGravityAcc.mean.Y
- 8.	tGravityAcc.mean.Z
- 9.	tBodyAccJerk.mean.X
- 10.	tBodyAccJerk.mean.Y
- 11.	tBodyAccJerk.mean.Z
- 12.	tBodyGyro.mean.X
- 13.	tBodyGyro.mean.Y
- 14.	tBodyGyro.mean.Z
- 15.	tBodyGyroJerk.mean.X
- 16.	tBodyGyroJerk.mean.Y
- 17.	tBodyGyroJerk.mean.Z
- 18.	tBodyAccMag.mean.
- 19.	tGravityAccMag.mean.
- 20.	tBodyAccJerkMag.mean.
- 21.	tBodyGyroMag.mean.
- 22.	tBodyGyroJerkMag.mean.
- 23.	fBodyAcc.mean.X
- 24.	fBodyAcc.mean.Y
- 25.	fBodyAcc.mean.Z
- 26.	fBodyAcc.meanFreq.X
- 27.	fBodyAcc.meanFreq.Y
- 28.	fBodyAcc.meanFreq.Z
- 29.	fBodyAccJerk.mean.X
- 30.	fBodyAccJerk.mean.Y
- 31.	fBodyAccJerk.mean.Z
- 32.	fBodyAccJerk.meanFreq.X
- 33.	fBodyAccJerk.meanFreq.Y
- 34.	fBodyAccJerk.meanFreq.Z
- 35.	fBodyGyro.mean.X
- 36.	fBodyGyro.mean.Y
- 37.	fBodyGyro.mean.Z
- 38.	fBodyGyro.meanFreq.X
- 39.	fBodyGyro.meanFreq.Y
- 40.	fBodyGyro.meanFreq.Z
- 41.	fBodyAccMag.mean.
- 42.	fBodyAccMag.meanFreq.
- 43.	fBodyBodyAccJerkMag.mean.
- 44.	fBodyBodyAccJerkMag.meanFreq.
- 45.	fBodyBodyGyroMag.mean.
- 46.	fBodyBodyGyroMag.meanFreq.
- 47.	fBodyBodyGyroJerkMag.mean.
- 48.	fBodyBodyGyroJerkMag.meanFreq.
- 49.	tBodyAcc.std.X
- 50.	tBodyAcc.std.Y
- 51.	tBodyAcc.std.Z
- 52.	tGravityAcc.std.X
- 53.	tGravityAcc.std.Y
- 54.	tGravityAcc.std.Z
- 55.	tBodyAccJerk.std.X
- 56.	tBodyAccJerk.std.Y
- 57.	tBodyAccJerk.std.Z
- 58.	tBodyGyro.std.X
- 59.	tBodyGyro.std.Y
- 60.	tBodyGyro.std.Z
- 61.	tBodyGyroJerk.std.X
- 62.	tBodyGyroJerk.std.Y
- 63.	tBodyGyroJerk.std.Z
- 64.	tBodyAccMag.std.
- 65.	tGravityAccMag.std.
- 66.	tBodyAccJerkMag.std.
- 67.	tBodyGyroMag.std.
- 68.	tBodyGyroJerkMag.std.
- 69.	fBodyAcc.std.X
- 70.	fBodyAcc.std.Y
- 71.	fBodyAcc.std.Z
- 72.	fBodyAccJerk.std.X
- 73.	fBodyAccJerk.std.Y
- 74.	fBodyAccJerk.std.Z
- 75.	fBodyGyro.std.X
- 76.	fBodyGyro.std.Y
- 77.	fBodyGyro.std.Z
- 78.	fBodyAccMag.std.
- 79.	fBodyBodyAccJerkMag.std.
- 80.	fBodyBodyGyroMag.std.
- 81.	fBodyBodyGyroJerkMag.std.


*1st letter indicates time(t), frequency(f).  
Last letter having 'X', 'Y' or 'Z' indicates one of the axis from the tri-axial observation.  
Any name which includes 'Acc' indicates a reading related to Acceleration (from the Accelerometer).  
Any name which includes 'Gyroscope' indicates a reading from the Gyroscope.  
All readings are either the mean or the standard deviation(std) values.*  