Get and Cleaning Data Course - Final Assignment
============================================

## About this project
This project aims to carry out a series of tasks proposed to meet the requirements of the final work of the "Get and Cleaning Data" course of the "Data Science Specialization" in the Coursera taught by Johns Hopkins University. The purpose of this project is to demonstrate the ability to collect, restructure and clean a dataset, and prepare tidy data that can be used for further analysis.

#### The project includes the following files:
- `README.md`: File that describes the project, explains about the original dataset and lists steps performed by the tidying data process.
- `CodeBook.md`: File that describes each variable in the tidy data file (`tidy.txt`) obtained at the end of the tidying data process.
- `CodeBook.rmd`: R Markdown file used to generate the `CodeBook.md` file.
- `run_analysis.R`: R script responsible to perform all the tidying data process.
- `tidy.txt`: Final product of the process performed by the script in the `run_analysis.R` file.

## Original Dataset
We used the Human Activity Recognition Using Smartphones Dataset from the UCI Machine Learning Repository. These data were collected through an experiment with 30 volunteers performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) using the sensors embedded in the smartphone that each participant wore at the waist.  
A full description of all files is available at the [site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) was obtained. Nevertheless, the script itself automatically downloads the data

#### The dataset includes the following main files:
- `README.txt`
- `features_info.txt`: Shows information about the variables used on the feature vector.
- `features.txt`: List of all features.
- `activity_labels.txt`: Links the class labels with their activity name.
- `train/X_train.txt`: Training set.
- `train/y_train.txt`: Training labels.
- `test/X_test.txt`: Test set.
- `test/y_test.txt`: Test labels.

## Getting and tidying the Data step by step

All this steps are performed by the `run_analysis.R` script.

**1. Download and unzip data files**  
The directory that stores the original dataset files is created if it does not already exist. After this, the files are downloaded and then decompressed.


**2. Read `activity_labels.txt` and `features.txt` files to dataframes**  
This files contains the descriptions of all activities that was performed by the volunteers and the variables names in the train and test datasets respectively.

**3. Subset the variables names that contains mean and standard deviation from features dataframe**  
This action is performed searching the values that contains the text *mean* or *std* using the grep function:  
`featuresIDX <- c(grep(".*mean.*", featuresDT[,2]),grep(".*std.*", featuresDT[,2]))`
`featuresNames <- featuresDT[featuresIDX,2]`

**4. Set descriptive variable names**  
Using the `gsub` function, all special characters are removed and the values are converted to *camelCase*.  
`featuresNames = gsub("-mean", "Mean", featuresNames)`
`featuresNames = gsub("-std", "Std", featuresNames)`
`featuresNames <- gsub("[-()]", "", featuresNames)`

**5. Create the train and test dataframes**  
At this point each dataframe (test and train) are binded with its subjects and activities correpondent dataframes using `cbind`.

**6. Bind test and train dataframes**  
Using rbind function, both dataframes are binded vertically. After this, the `merge` function is called to join the result with activity names datasets.  
`data <- rbind(trainDT, testDT)`
`data <- merge(activityDT, data, by.x = "activityId", by.y = "activityId")`

**7. Average of each variable for each activity and each subject**  
Mean of each variable is calculated using the `agregate` function by activityName and subjectId.  
`data <- aggregate(data[, 4:length(data)], list(activity = data$activityName, subject = data$subjectId), mean)`

**8. Write the tidy data to the tidy.txt file.**  
`write.table(data, "./tidy.txt")`


