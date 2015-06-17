#This script reads in the relevant data from the UCI HAR Dataset. For running the script, the files should be 
#extracted in the working directory. The file structure is preserved.

require("plyr")
#Reads in "features.txt" to obtain relevant variable names.
var_names<-read.table("UCI HAR Dataset/UCI HAR Dataset/features.txt")

#Converts var_names into valid variable names using R criteria
var_names_fin<-make.names(var_names$V2)

#Loads data into multiple data frames for further merging
train_data<-read.table("UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
train_activity<-read.table("UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
train_subject<-read.table("UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
test_data<-read.table("UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
test_activity<-read.table("UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
test_subject<-read.table("UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")

#Assigns column names to the test and training data using the variable names that were generated previously
names(test_data)<-var_names_fin
names(train_data)<-var_names_fin

#Adds subject and activity data to the test and training data
test_data$subject<-test_subject$V1
test_data$activity<-test_activity$V1
train_data$subject<-train_subject$V1
train_data$activity<-train_activity$V1

#Combines the test and training data
final_data<-rbind(test_data,train_data)

#Generates a data frame that contains only those data from readings whose name contains either "mean" or "std"
#The data frame also retains the columns named "subject" and "activity" for subsetting purposes
final_data<-final_data[,grep("mean|std|subject|activity",names(final_data),ignore.case=TRUE)]

#Converts the "subject" and "activity" columns into factors
final_data$subject<-as.factor(final_data$subject)
final_data$activity<-as.factor(final_data$activity)

#Changes the numeric levels for the "activity" columns into descriptive names
final_data$activity<-mapvalues(final_data$activity, from = c("1","2","3","4","5","6"), to = c("Walking","Walking.Upstairs","Walking.Downstairs","Sitting","Standing","Laying"))

#Generates a new data frame that contains the mean values for each activity for each subject
mean_data<-aggregate(final_data[,1:86], by=list(final_data$subject,final_data$activity), FUN=mean, na.rm=TRUE)

#Names the first two columns of the new data frame
colnames(mean_data)[1]<-"Subject"
colnames(mean_data)[2]<-"Activity"

#Writes a .txt file containing the new data frame
write.table(mean_data,"Mean_HAR.txt",row.name=FALSE)
