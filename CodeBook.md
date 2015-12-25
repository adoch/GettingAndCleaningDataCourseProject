## CodeBook for dataset contained in the "MeansOfTestAndTrainDataPerActivityAndSubject.txt"

<b>Introduction</b>

The "MeansOfTestAndTrainDataPerActivityAndSubject.txt" contains a tab delimited dataset with a header row.
It is the result of the merging, grouping per activity and subject and finally of the application of the Mean() function on the mean() and std() variables.
Data are related to measurements related wit wearable computing. 
More info at: <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">UCI site</a>
The initial datasets can be found in the <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">zip file</a> 

<b>Sort Description of the processing done on the initiall data</b>

1. \UCI HAR Dataset\test\X_test.txt and \UCI HAR Dataset\train\X_train.txt loaded
2. Column names assigned using \UCI HAR Dataset\features.txt file. 
3. Only columns like "mean()" or "std()" have been kept.
4. SubjectID and ActivityID columns have been added/assigned using "subject_*.txt", "y_*.txt" files
5. Data have been merged in a single dataset
6. Grouped on ActivityID, SubjectID
7. Mean() functiona has been applied to all the measurement columns
8. ActivityID is replaced from ActivityDescr to make the file as independent as possible
9. "Mean_" has been added to declare that mean() function has been applied
10. Output file has been created

<b>Column Description</b>

"ActivityDescr"
	Activities of the subjects of the measurements.

	* WALKING
	* WALKING_UPSTAIRS
	* WALKING_DOWNSTAIRS
	* SITTING
	* STANDING
	* LAYING
 

"SubjectID"
Unique Identifier of the subjects of the measurements
List of Values: All the Integers between 1 and 30

The below 66 columns that contain the mean of the mean() and std() variables of the signal of the initial files
"MeanOf_tBodyAcc.mean...X"           "MeanOf_tBodyAcc.mean...Y"          
"MeanOf_tBodyAcc.mean...Z"           "MeanOf_tBodyAcc.std...X"           
"MeanOf_tBodyAcc.std...Y"            "MeanOf_tBodyAcc.std...Z"           
"MeanOf_tGravityAcc.mean...X"        "MeanOf_tGravityAcc.mean...Y"       
"MeanOf_tGravityAcc.mean...Z"        "MeanOf_tGravityAcc.std...X"        
"MeanOf_tGravityAcc.std...Y"         "MeanOf_tGravityAcc.std...Z"        
"MeanOf_tBodyAccJerk.mean...X"       "MeanOf_tBodyAccJerk.mean...Y"      
"MeanOf_tBodyAccJerk.mean...Z"       "MeanOf_tBodyAccJerk.std...X"       
"MeanOf_tBodyAccJerk.std...Y"        "MeanOf_tBodyAccJerk.std...Z"       
"MeanOf_tBodyGyro.mean...X"          "MeanOf_tBodyGyro.mean...Y"         
"MeanOf_tBodyGyro.mean...Z"          "MeanOf_tBodyGyro.std...X"          
"MeanOf_tBodyGyro.std...Y"           "MeanOf_tBodyGyro.std...Z"          
"MeanOf_tBodyGyroJerk.mean...X"      "MeanOf_tBodyGyroJerk.mean...Y"     
"MeanOf_tBodyGyroJerk.mean...Z"      "MeanOf_tBodyGyroJerk.std...X"      
"MeanOf_tBodyGyroJerk.std...Y"       "MeanOf_tBodyGyroJerk.std...Z"      
"MeanOf_tBodyAccMag.mean.."          "MeanOf_tBodyAccMag.std.."          
"MeanOf_tGravityAccMag.mean.."       "MeanOf_tGravityAccMag.std.."       
"MeanOf_tBodyAccJerkMag.mean.."      "MeanOf_tBodyAccJerkMag.std.."      
"MeanOf_tBodyGyroMag.mean.."         "MeanOf_tBodyGyroMag.std.."         
"MeanOf_tBodyGyroJerkMag.mean.."     "MeanOf_tBodyGyroJerkMag.std.."     
"MeanOf_fBodyAcc.mean...X"           "MeanOf_fBodyAcc.mean...Y"          
"MeanOf_fBodyAcc.mean...Z"           "MeanOf_fBodyAcc.std...X"           
"MeanOf_fBodyAcc.std...Y"            "MeanOf_fBodyAcc.std...Z"           
"MeanOf_fBodyAccJerk.mean...X"       "MeanOf_fBodyAccJerk.mean...Y"      
"MeanOf_fBodyAccJerk.mean...Z"       "MeanOf_fBodyAccJerk.std...X"       
"MeanOf_fBodyAccJerk.std...Y"        "MeanOf_fBodyAccJerk.std...Z"       
"MeanOf_fBodyGyro.mean...X"          "MeanOf_fBodyGyro.mean...Y"         
"MeanOf_fBodyGyro.mean...Z"          "MeanOf_fBodyGyro.std...X"          
"MeanOf_fBodyGyro.std...Y"           "MeanOf_fBodyGyro.std...Z"          
"MeanOf_fBodyAccMag.mean.."          "MeanOf_fBodyAccMag.std.."          
"MeanOf_fBodyBodyAccJerkMag.mean.."  "MeanOf_fBodyBodyAccJerkMag.std.."  
"MeanOf_fBodyBodyGyroMag.mean.."     "MeanOf_fBodyBodyGyroMag.std.."     
"MeanOf_fBodyBodyGyroJerkMag.mean.." "MeanOf_fBodyBodyGyroJerkMag.std.." 
	
Naming convention of these 66 columns:

	* "MeanOf_": Declares that contained value is the mean() of...

	* "tBodyAcc"
	* "tGravityAcc"
	* "tBodyAccJerk"
	* "tBodyGyro"
	* "tBodyGyroJerk"
	* "tBodyAccMag"
	* "tGravityAccMag"
	* "tBodyAccJerkMag"
	* "tBodyGyroMag"
	* "tBodyGyroJerkMag"
	* "fBodyAcc"
	* "fBodyAccJerk"
	* "fBodyGyro"
	* "fBodyAccMag"
	* "fBodyAccJerkMag"
	* "fBodyGyroMag"
	* "fBodyGyroJerkMag"
		Signals measured. "f" also declares that Fast Fourier Transform (FFT) was applied.

	* ".mean.." or ".std..": Declares the set of variables that initially have been estimated for the above signals

	* ".X" or ".Y" or ".Z": Declares the axis of the signal, if applicable   

