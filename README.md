# GettingCleaningData-Assignment, v1.0
John A. Lynch
UCLA Center for Digital Humanities
================================================================
Introduction
For the Getting and Cleaning Data class (GCD), we were challenged to perform a series of cleaning operations on the UC Irvine "Human Activity Recognition Using Smartphones" data set, or HAR (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). This file outlines the assignment steps and the scripts that I wrote to accomplish them. This repository also contains another file, Codebook.md, which describes the variables in the dataset. Finally, there is a script, run_analysis.R, which will take the original data set and output a tidy data set, according to the principles laid out by the instructor of GCD.
================================================================
Data
My script assumes that, in the environment in which you run the script, you also have a folder called "data" in which you deposit the complete UCI HAR dataset, which you can download from http://archive.ics.uci.edu/ml/machine-learning-databases/00240/. I unzipped that file and made no changes to the code's structure. You can see the exact data paths in my code, if you have any questions about that. My code uses the features.txt and activity_labels.txt files from the top-level folder (UCI HAR Dataset), as well as all of the files (but NOT subfolders) in the test and train folders inside the top-level folder.

Scripts
explains how all of the scripts work and how they are connected.
