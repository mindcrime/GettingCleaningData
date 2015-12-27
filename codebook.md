# Code Book for Getting and Cleaning Data - Course Project

This analysis outputs aggregated values for a subset of the features found in the
source data.  The file [features.txt](https://github.com/mindcrime/GettingCleaningData/blob/master/data/features.txt)
contains a list of all of the original features, and [features_info.txt](https://github.com/mindcrime/GettingCleaningData/blob/master/data/features_info.txt) contains additional information on the source data.

Note that the output feature names are slightly different in some cases, as each name in the output
is equivalent to the source feature name as processed by the R "make.names" function, which yields
legal R variable names.  


These variables are in the output as identifiers only and are not the result of any calculation.
* Subject
* Activity
* ActivityName


Relative to the source data, this analysis outputs the average of each of the following
variables, for each unique combination of Subject and Activity.


* tBodyAcc.mean...X
* tBodyAcc.mean...Y
* tBodyAcc.mean...Z
* tGravityAcc.mean...X
* tGravityAcc.mean...Y
* tGravityAcc.mean...Z
* tBodyAccJerk.mean...X
* tBodyAccJerk.mean...Y
* tBodyAccJerk.mean...Z
* tBodyGyro.mean...X
* tBodyGyro.mean...Y
* tBodyGyro.mean...Z
* tBodyGyroJerk.mean...X
* tBodyGyroJerk.mean...Y
* tBodyGyroJerk.mean...Z
* tBodyAccMag.mean..
* tGravityAccMag.mean..
* tBodyAccJerkMag.mean..
* tBodyGyroMag.mean..
* tBodyGyroJerkMag.mean..
* fBodyAcc.mean...X
* fBodyAcc.mean...Y
* fBodyAcc.mean...Z
* fBodyAcc.meanFreq...X
* fBodyAcc.meanFreq...Y
* fBodyAcc.meanFreq...Z
* fBodyAccJerk.mean...X
* fBodyAccJerk.mean...Y
* fBodyAccJerk.mean...Z
* fBodyAccJerk.meanFreq...X
* fBodyAccJerk.meanFreq...Y
* fBodyAccJerk.meanFreq...Z
* fBodyGyro.mean...X
* fBodyGyro.mean...Y
* fBodyGyro.mean...Z
* fBodyGyro.meanFreq...X
* fBodyGyro.meanFreq...Y
* fBodyGyro.meanFreq...Z
* fBodyAccMag.mean..
* fBodyAccMag.meanFreq..
* fBodyBodyAccJerkMag.mean..
* fBodyBodyAccJerkMag.meanFreq..
* fBodyBodyGyroMag.mean..
* fBodyBodyGyroMag.meanFreq..
* fBodyBodyGyroJerkMag.mean..
* fBodyBodyGyroJerkMag.meanFreq..
* tBodyAcc.std...X
* tBodyAcc.std...Y
* tBodyAcc.std...Z
* tGravityAcc.std...X
* tGravityAcc.std...Y
* tGravityAcc.std...Z
* tBodyAccJerk.std...X
* tBodyAccJerk.std...Y
* tBodyAccJerk.std...Z
* tBodyGyro.std...X
* tBodyGyro.std...Y
* tBodyGyro.std...Z
* tBodyGyroJerk.std...X
* tBodyGyroJerk.std...Y
* tBodyGyroJerk.std...Z 
* tBodyAccMag.std.. 
* tGravityAccMag.std.. 
* tBodyAccJerkMag.std.. 
* tBodyGyroMag.std.. 
* tBodyGyroJerkMag.std.. 
* fBodyAcc.std...X 
* fBodyAcc.std...Y 
* fBodyAcc.std...Z 
* fBodyAccJerk.std...X 
* fBodyAccJerk.std...Y 
* fBodyAccJerk.std...Z 
* fBodyGyro.std...X 
* fBodyGyro.std...Y 
* fBodyGyro.std...Z 
* fBodyAccMag.std.. 
* fBodyBodyAccJerkMag.std.. 
* fBodyBodyGyroMag.std.. 
* fBodyBodyGyroJerkMag.std..
