# GettingCleaningData-Assignment, v1.0
John A. Lynch, UCLA Center for Digital Humanities
##Introduction
For the Getting and Cleaning Data class (GCD), we were challenged to perform a series of cleaning operations on the UC Irvine "Human Activity Recognition Using Smartphones" data set, or HAR (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). This file outlines the assignment steps and the scripts that I wrote to accomplish them. This repository also contains another file, Codebook.md, which describes the variables in the dataset. Finally, there is a script, run_analysis.R, which will take the original data set and output a tidy data set, according to the principles laid out by the instructor of GCD.
##Data
My script assumes that, in the environment in which you run the script, you also have a folder called "data" in which you deposit the complete UCI HAR dataset, which you can download from http://archive.ics.uci.edu/ml/machine-learning-databases/00240/. I unzipped that file and made no changes to the code's structure. You can see the exact data paths in my code, if you have any questions about that. My code uses the features.txt and activity_labels.txt files from the top-level folder (UCI HAR Dataset), as well as all of the files (but NOT subfolders) in the test and train folders inside the top-level folder.

##Script
My script, run_analysis.R, has five parts. I chose not to make each one into an independent function. Instead, the script itself is essentially one large function, and each part is run in sequence. The sections are numbered in my code in the comment lines (marked with /#).

1. This section of the script reads both the training and test data sets into R (1.1), applies the appropriate column names (1.2), adds the appropriate subject ID and activity ID columns (1.3), and finally merges the two datasets together (1.4).
2. This section of the script extracts only the columns that describe a mean or a standard deviation, as well as the subject ID and activity ID, for later analysis.
3. This section of the script replaces the activity ID numbers with the equivalent activity name.
4. This section of the script renames the columns with more descriptive variable names.
5. This section of the script creates and exports a data set with the average of each variable by activity, and by subject, as requested.

##Output
The output file is a .csv. The specific column names and descriptions are explained in the file Codebook.md. To read the data back into R and examine it, using the following commands:

> data <- read.table("tidy.txt", header=TRUE)

> data
