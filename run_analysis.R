# setwd("C:/Home/kobrien/DataScientist/Getting and Cleaning Data/project")

library(LaF) # Package to handle large ascii files efficiently

# 1. Load data and merge the test and train data sets.  This involves adding the subject and activity
#    columns to the merged data set

#### Load training data and merge the subject and activities with the data
#The LaF package provides support to read files larger than available memory
df <- laf_open_fwf(filename="X_train.txt",column_types=rep("numeric",length(dataLabels$V2)),column_widths=rep(16,length(dataLabels$V2)))
tdata <- df[,]  # Get the entire data set from the opened file
subjects = read.csv("subject_train.txt",header=FALSE)
activities = read.csv("Y_train.txt",header=FALSE)
data <- cbind(subject=subjects$V1,activity=activities$V1,tdata) # Merge the subject and activity colums with the data

#### Load test data and merge the subject and activities with the data
#The LaF package provides support to read files larger than available memory
df <- laf_open_fwf(filename="X_test.txt",column_types=rep("numeric",length(dataLabels$V2)),column_widths=rep(16,length(dataLabels$V2)))
tdata <- df[,]  # Get the entire data set from the opened file
subjects = read.csv("subject_test.txt",header=FALSE)
activities = read.csv("Y_test.txt",header=FALSE)
data2 <- cbind(subject=subjects$V1,activity=activities$V1,tdata) # Merge the subject and activity colums with the data

fdata <- rbind(data,data2) # Combine the two sets of data into a single set

##################################################################
# 4. Label the data set with descriptive variable names (easier to do here)
# Load the labels for the data columns
dataLabels = read.csv("features.txt",sep=" ",header=FALSE,colClasses=c("integer", "character"))
colnames(fdata) = c("subject", "activity", dataLabels$V2)

##############################################
# 2. Extract only the measurements on the mean and standard deviation for each measurement
# Extract column 1,2 and all columns with -mean and -std (mean and std deviation)
b <- c(1,2,sort(c(grep("-mean",colnames(fdata)),grep("-std",colnames(fdata)))))
data <- fdata[,b] # Get just the columns we want from the data


##############################################
# 3. Add descriptive labels for the activities

# Load the activty factor values (1-6)
activityLabels = read.csv("activity_labels.txt",sep=" ",header=FALSE,colClasses=c("integer", "character"))
#Convert the integers in the activities$V1 column to levels.  Then change the 
# level labels to create a column of descriptive names for the activities
g = as.factor(data$activity)  # Convert integers to levels
levels(g) = activityLabels$V2 # Change the labels to the activity labels
data$activity = g             # Replace ints with labels


# 5. Create tidy data set with the average of each variable for each activity and each subject
tds <- aggregate(. ~ subject + activity, data=data, mean)
write.table(tds,file="samsungDataSet.txt",row.names=FALSE)
prompt(tds,filename="samsungCodeBook.md")

