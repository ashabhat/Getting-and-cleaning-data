This is a script called run_analysis.r.

It **runs a single function** called run_analysis().

run_analysis() **does not need any input parameters** for execution.

Each of the activity in the code has been de-markated from the next one by 2 EOF(s).

**Step 1:** Set your current working directory
**Step 2:** Download the .zip file from the URL mentioned and unzip it. This is the inout for further activities. 

**Step 3:** Load the plyr and the dplyr libraries, because we will be using some of the functions from these libraries.

**Step 4:** Read the features.txt file. From this format the names to get more readable column titles. 

**Step 5:** Read all the necessary files from the test folder. 
**Step 5b:** Convert the y_test.txt to map to the actual names of the activitues rather than indicative numbers.

**Step 6:** Repeat steps 5, 5b for the files from the train folder as well. 

**Step 7:** Column bind all the data frames created in step 5 to create the finalized test data frame. Give names to each of the columns. 

**Step 8:** Column bind all the data frames created in step 6 to create the finalized train data frame. Give names to each of the columns. 

**Step 9:** Row bind the data frames created in step 7 and step 8 to create the grand data frame with ALL the necessary data.

**Step 10:** Arrange the columns first based on the volunteer ID and then on their respective activities (this step is optional. It is just a cosmetic change).
**Step 11:** Select only those columns from the readings which are either related to mean or standard deviation (retain the volunteer ID and the activity column).
**Step 12:** Group the grand data frame created in step 11 by volunteer ID (called 'subject' in the code) ans then based on the 'activity'.
**Step 13:** Summarise each of the mean and standard deviation readings by creating a new data frame with only the means.

**Step 14:** Export the data frame created in step 13 to your local drive.

