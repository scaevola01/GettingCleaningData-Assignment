library(reshape2)

# 1. Merges the training and the test sets to create one data set.
# 1.1 First, read in the relevant data 
Xtrain <- read.table("data/UCI HAR Dataset/train/X_train.txt", stringsAsFactors = FALSE, header = FALSE)#, colClasses = "character")
ytrain <- read.table("data/UCI HAR Dataset/train/y_train.txt", stringsAsFactors = FALSE, header = FALSE)#, colClasses = "character")
subjecttrain <- read.table("data/UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = FALSE, header = FALSE)#, colClasses = "character")
Xtest <- read.table("data/UCI HAR Dataset/test/X_test.txt", stringsAsFactors = FALSE, header = FALSE)#, colClasses = "character")
ytest <- read.table("data/UCI HAR Dataset/test/y_test.txt", stringsAsFactors = FALSE, header = FALSE)#, colClasses = "character")
subjecttest <- read.table("data/UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = FALSE, header = FALSE)#, colClasses = "character")

# 1.2 Next, rename my columns so that I can do my extraction later
features <- read.table("data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE, header = FALSE, sep="")
names(Xtrain) <- features$V2
names(Xtest) <- features$V2
names(subjecttest) <- "SubjectID"
names(subjecttrain) <- "SubjectID"
names(ytrain) <- "ActivityID"
names(ytest) <- "ActivityID"
rm(features)

# 1.3 Next, combine the test and training sets with their respective subject IDs and activity IDs
fulltest <- cbind(subjecttest,ytest,Xtest)
fulltrain <- cbind(subjecttrain,ytrain,Xtrain)

# 1.4 Last, combine the two into one and get rid of the unnecessary data sets
fulldata <- rbind(fulltest, fulltrain)
rm(Xtrain)
rm(ytrain)
rm(subjecttrain)
rm(Xtest)
rm(ytest)
rm(subjecttest)
rm(fulltest)
rm(fulltrain)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# I have to use two "\" to escape the open parentheses. 
# The first one is for the quote marks, the second is for the grepl.
extractdata <- fulldata[grepl("Subject|Activity|mean\\(|std", names(fulldata))]

# 3. Uses descriptive activity names to name the activities in the data set
activities <- read.table("data/UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE, header = FALSE, sep="")
for (i in seq_along(extractdata$ActivityID)) {
  track <- as.numeric(extractdata$ActivityID[i])
  extractdata$ActivityID[i] <- activities$V2[track]
}

# 4. Appropriately labels the data set with descriptive variable names.
# Replace the jargon and abbreviations with full words.
names(extractdata) <- gsub("^t", "Time: ", names(extractdata))
names(extractdata) <- gsub("^f", "Frequency: ", names(extractdata))
names(extractdata) <- gsub("BodyBody", "Body", names(extractdata))
names(extractdata) <- gsub("Acc", "Acceleration ", names(extractdata))
names(extractdata) <- gsub("Mag", "Magnitude ", names(extractdata))
names(extractdata) <- gsub("Gyro", "Gyroscopic ", names(extractdata))
names(extractdata) <- gsub("Gravity", "Gravity ", names(extractdata))
names(extractdata) <- gsub("Body", "Body ", names(extractdata))
names(extractdata) <- gsub("Jerk", "Jerk ", names(extractdata))
names(extractdata) <- gsub(" -", "-", names(extractdata))
names(extractdata) <- gsub("-", ": ", names(extractdata))
# I've left mean() and std() as is, because they refer to specific functions.

# 5. Creates a data set with the average of each variable by activity, and by subject
# First, I melt the data into a tall, narrow data set of four columns.
# Then, I cast that into a data set that has the averages for each of the individual entries in the 
# "variables" column, which has 180 rows and 68 columns. That has a column for person, a column for
# activity, and a column for the mean of each measurement per person and activity.
# Finally, I export it as a .CSV file, with 180 rows and 69 columns: the same as above, plus the index column.
tidy <- melt(extractdata, id=c("SubjectID", "ActivityID"))
tidy <- dcast(tidy, SubjectID + ActivityID ~ variable, mean)
write.table(tidy, "tidy.txt", row.names = FALSE)

# To read the data back into R and examine it, using the following commands:
# data <- read.csv("tidy.csv", header=TRUE)
# data
