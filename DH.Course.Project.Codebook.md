This is the codebook for the Getting and Cleaning Data Course Project

The project uses data from the UCI HAR Dataset

Much of the description used in this codebook comes directly from "...."


The data set contained in "Mean_HAR.txt" is a table containing 180 observations of 88 variables. The 88 variables contain 1 variable named "Subject" that identifies the subject from which the data are isolated,1 variable named "Activity" that identifies the activity the subject is performing, and 86 variables obtained from the "features.txt" file included with the UCI HAR Dataset based on their names including the term "mean" or "std."

Each observation within the table represents the average value for each variable for each subject and for each activity. There are 30 total subjects and there are 6 different activities. Therefore, for each variable there are 6 X 30 = 180 observations.

In the data set the subjects are identified numerically from 1 to 30. Each Activity has been given a descriptive identifier that is listed below.

Activities:
Walking
Walking.Upstairs
Walking.Downstairs
Sitting
Standing
Laying

The variable names that are retained in "Mean_HAR.txt" are as follows:
1 tBodyAcc.mean...X

2 tBodyAcc.mean...Y

3 tBodyAcc.mean...Z

4 tBodyAcc.std...X

5 tBodyAcc.std...Y

6 tBodyAcc.std...Z

41 tGravityAcc.mean...X

42 tGravityAcc.mean...Y

43 tGravityAcc.mean...Z

44 tGravityAcc.std...X

45 tGravityAcc.std...Y

46 tGravityAcc.std...Z

81 tBodyAccJerk.mean...X

82 tBodyAccJerk.mean...Y

83 tBodyAccJerk.mean...Z

84 tBodyAccJerk.std...X

85 tBodyAccJerk.std...Y

86 tBodyAccJerk.std...Z

121 tBodyGyro.mean...X

122 tBodyGyro.mean...Y

123 tBodyGyro.mean...Z

124 tBodyGyro.std...X

125 tBodyGyro.std...Y

126 tBodyGyro.std...Z

161 tBodyGyroJerk.mean...X

162 tBodyGyroJerk.mean...Y

163 tBodyGyroJerk.mean...Z

164 tBodyGyroJerk.std...X

165 tBodyGyroJerk.std...Y

166 tBodyGyroJerk.std...Z

201 tBodyAccMag.mean..

202 tBodyAccMag.std..

214 tGravityAccMag.mean..

215 tGravityAccMag.std..

227 tBodyAccJerkMag.mean..

228 tBodyAccJerkMag.std..

240 tBodyGyroMag.mean..

241 tBodyGyroMag.std..

253 tBodyGyroJerkMag.mean..

254 tBodyGyroJerkMag.std..

266 fBodyAcc.mean...X

267 fBodyAcc.mean...Y

268 fBodyAcc.mean...Z

269 fBodyAcc.std...X

270 fBodyAcc.std...Y

271 fBodyAcc.std...Z

294 fBodyAcc.meanFreq...X

295 fBodyAcc.meanFreq...Y

296 fBodyAcc.meanFreq...Z

345 fBodyAccJerk.mean...X

346 fBodyAccJerk.mean...Y

347 fBodyAccJerk.mean...Z

348 fBodyAccJerk.std...X

349 fBodyAccJerk.std...Y

350 fBodyAccJerk.std...Z

373 fBodyAccJerk.meanFreq...X

374 fBodyAccJerk.meanFreq...Y

375 fBodyAccJerk.meanFreq...Z

424 fBodyGyro.mean...X

425 fBodyGyro.mean...Y

426 fBodyGyro.mean...Z

427 fBodyGyro.std...X

428 fBodyGyro.std...Y

429 fBodyGyro.std...Z

452 fBodyGyro.meanFreq...X

453 fBodyGyro.meanFreq...Y

454 fBodyGyro.meanFreq...Z

503 fBodyAccMag.mean..

504 fBodyAccMag.std..

513 fBodyAccMag.meanFreq..

516 fBodyBodyAccJerkMag.mean..

517 fBodyBodyAccJerkMag.std..

526 fBodyBodyAccJerkMag.meanFreq..

529 fBodyBodyGyroMag.mean..

530 fBodyBodyGyroMag.std..

539 fBodyBodyGyroMag.meanFreq..

542 fBodyBodyGyroJerkMag.mean..

543 fBodyBodyGyroJerkMag.std..

552 fBodyBodyGyroJerkMag.meanFreq..

555 angle.tBodyAccMean.gravity.

556 angle.tBodyAccJerkMean..gravityMean.

557 angle.tBodyGyroMean.gravityMean.

558 angle.tBodyGyroJerkMean.gravityMean.

559 angle.X.gravityMean.

560 angle.Y.gravityMean.

561 angle.Z.gravityMean.
 
These variable names differ from the names included in "features.txt" in that certain special characters have been replaced with a ".". 
