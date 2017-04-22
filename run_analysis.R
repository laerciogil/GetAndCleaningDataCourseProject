library(reshape2)

##Check if the content folder exists and create it
folderPath <- "./GettingAndCleaningData/Week4/Assignment"
if(!file.exists(folderPath)) {
  dir.create(folderPath, recursive = TRUE)
}

##Download and unzip data files
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filePath = file.path(folderPath,"Dataset.zip")

download.file(fileUrl, filePath, mode = "wb")
unzip(filePath, exdir = folderPath)


##Open the file activity_labels.txt in a data table
##this file contains the descriptions of all activities that was performed by the volunteers
activityDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/activity_labels.txt"), col.names = c("activity_id", "activity_name"))

##Open the file features.txt in a data table
##This file contains the variable names in the train and test datasets
featuresDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/features.txt"))

##Extract the data on mean and standard deviation
featuresIDX <- c(grep(".*mean.*", featuresDT[,2]),grep(".*std.*", featuresDT[,2]))
featuresNames <- featuresDT[featuresIDX,2]

##Setting descriptive variable names
featuresNames = gsub('-mean', 'Mean', featuresNames)
featuresNames = gsub('-std', 'Std', featuresNames)
featuresNames <- gsub('[-()]', '', featuresNames)


##Create the train data table
subjectTrainDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/train/subject_train.txt"), col.names = c("subject_id"))
activityTrainDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/train/y_train.txt"), col.names = c("activity_id"))
trainDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/train/X_train.txt"))[featuresIDX]
colnames(trainDT) <- featuresNames
trainDT <- cbind(subjectTrainDT, activityTrainDT, trainDT)


##Create the test data table
subjectTestDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/test/subject_test.txt"), col.names = c("subject_id"))
activityTestDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/test/y_test.txt"), col.names = c("activity_id"))
testDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/test/X_test.txt"))[featuresIDX]
colnames(testDT) <- featuresNames
testDT <- cbind(subjectTestDT, activityTestDT, testDT)

##Bind the data sets
data <- rbind(trainDT, testDT)

##Merge data with activity names dataset
data <- merge(activityDT, data, by.x = "activity_id", by.y = "activity_id")

##melt the data
data <- melt(data,id=c("activity_id","activity_name","subject_id"))

##mean of each variable by activity_id, activity_name and subject_id using dcast function
data <- dcast(data, activity_id + activity_name + subject_id ~ variable, mean)

##write the tidy data in an out text file
write.table(data, "./tidy.txt")