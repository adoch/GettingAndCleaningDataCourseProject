## Project for the Getting and Cleaning Data Course

# Introduction

Link to the assignment <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">data</a>
More information can also be found at <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">UCI site</a> and the course web site:


# Repository Content

1. run_analysis.R: R code that processes the input files and produce the "MeansOfTestAndTrainDataPerActivityAndSubject.txt" file as output
2. CodeBook.md: Contains information about the dataset contained in the output file


# Instructions

1. Download the zip file from the above mentioned address
2. Unzip the file in the R Working folder
3. Open and execute the code in the run_analysis.R file
4. Output file "MeansOfTestAndTrainDataPerActivityAndSubject.txt" will be created in the R Working folder
5. Output file can be loaded back to R using the command: read.table(".\\MeansOfTestAndTrainDataPerActivityAndSubject.txt", header = TRUE)  
