This script reads in the relevant data from the UCI HAR Dataset. For running the script, the files should be extracted in the working directory. The file structure is preserved.

The script first reads in the "features.txt" file to obtain variable names for the data frames that will be constructed.

It then individually reads in the various data sets including the training and testing data as well as the subject and activity identifiers.

It then adds the variable names to the training and testing data set.

It then adds the subject and activity identifiers to the training and testing data set.

The training and testing data sets are then combined.

This combined data set is then subset retaining only those columns whose names contain the phrases "mean" or "std". This was performed in a case INSENSITIVE fashion so capitalized variants of "mean" or "std" were also accepted. 

As the instructions were not crystal clear with respect to which specific "types" of mean and standard deviation data were to be included, I erred on the side of cautiousness and included all instances. In this case I felt it was better to retain more data instead of less.

The script then calculates the mean for each column for each subject and each activity and generates a new data frame called "mean_data".

The script then outputs a file titled "Mean_HAR.txt" into the working directory.

