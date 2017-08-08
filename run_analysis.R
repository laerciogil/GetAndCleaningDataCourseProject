##Check if the content folder exists and create it
folderPath <- "./OriginalDataset"
if(!file.exists(folderPath)) {
  dir.create(folderPath, recursive = TRUE)
}

##Download and unzip data files
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filePath <- file.path(folderPath,"Dataset.zip")

if(!file.exists(filePath) | !file.exists(file.path(folderPath,"UCI HAR Dataset"))) {
  download.file(fileUrl, filePath, mode = "wb")
  unzip(filePath, exdir = folderPath)
}


##Open the file activity_labels.txt in a data table
##this file contains the descriptions of all activities that was performed by the volunteers
activityDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/activity_labels.txt"), col.names = c("activityId", "activityName"))

##Open the file features.txt in a data table
##This file contains the variable names in the train and test datasets
featuresDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/features.txt"))

##Subset the variables names that contains mean and standard deviation
featuresIDX <- c(grep(".*mean.*", featuresDT[,2]),grep(".*std.*", featuresDT[,2]))
featuresNames <- featuresDT[featuresIDX,2]

##Setting descriptive variable names
featuresNames <- gsub("-mean", "Mean", featuresNames)
featuresNames <- gsub("-std", "Std", featuresNames)
featuresNames <- gsub("[-()]", "", featuresNames)


##Create the train data table
subjectTrainDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/train/subject_train.txt"), col.names = c("subjectId"))
activityTrainDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/train/y_train.txt"), col.names = c("activityId"))
trainDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/train/X_train.txt"))[featuresIDX]
colnames(trainDT) <- featuresNames
trainDT <- cbind(subjectTrainDT, activityTrainDT, trainDT)


##Create the test data table
subjectTestDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/test/subject_test.txt"), col.names = c("subjectId"))
activityTestDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/test/y_test.txt"), col.names = c("activityId"))
testDT <- read.table(file = file.path(folderPath, "UCI HAR Dataset/test/X_test.txt"))[featuresIDX]
colnames(testDT) <- featuresNames
testDT <- cbind(subjectTestDT, activityTestDT, testDT)

##Bind the data sets
data <- rbind(trainDT, testDT)

##Merge data with activity names dataset
data <- merge(activityDT, data, by.x = "activityId", by.y = "activityId")

##mean of each variable by activityName and subjectId using aggregate function
data <- aggregate(data[, 4:length(data)], list(activity = data$activityName, subject = data$subjectId), mean)

##write the tidy data in an out text file
write.table(data, "./tidy.txt", row.names = FALSE)

rm(list = ls())