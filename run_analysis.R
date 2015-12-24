library(dplyr) #will be used for grouping

#load activities descriptions
activities <- read.table(".\\UCI HAR Dataset\\activity_labels.txt", 
                         col.names = c("ActivityID", "ActivityDescr"))

#load column descriptions
features <- read.table(".\\UCI HAR Dataset\\features.txt")
#make them proper for column names
auto_col_names <- make.names(features$V2)
#identify the ones that we want to keep
MeanOrStdCol <- grepl("mean()", features$V2, fixed = TRUE) | 
    grepl("std()", features$V2, fixed = TRUE)

#load test subjects
subject_test <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt", 
                           col.names = "SubjectID")
#load test data
x_test <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt", 
                     col.names = auto_col_names)
y_test <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt", 
                     col.names = "ActivityID")

#keep only needed columns
x_test <- x_test[,MeanOrStdCol]
#add ActivityID
x_test <- cbind(SubjectID = subject_test$SubjectID, 
                ActivityID = y_test$ActivityID, x_test)

#load train subjects
subject_train <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt", 
                            col.names = "SubjectID")
#load train data
x_train <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt", 
                      col.names = auto_col_names)
y_train <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt", 
                      col.names = "ActivityID")

#keep only needed columns
x_train <- x_train[,MeanOrStdCol]
#add ActivityID
x_train <- cbind(SubjectID = subject_train$SubjectID, 
                 ActivityID = y_train$ActivityID, x_train)

#union datasets
x_tot <- rbind(x_test, x_train)
#group by 
x_grp <- group_by(x_tot, ActivityID, SubjectID)
#apply mean to all the columns apart the ones in the grouping
x_mean <- summarize_each(x_grp, funs(mean))

#add ActivityDescr in order to make the dataset independent and drop ActivityID
x_fin <- merge(activities, x_mean, by = "ActivityID")
x_fin$ActivityID <- NULL

##Give proper name to columns
colnames(x_fin) <- c("ActivityDescr", "SubjectID", paste("MeanOf_", 
                                                         colnames(x_fin[3:68]), sep = ""))

#export to text file 
write.table(x_fin, ".\\MeansOfTestAndTrainDataPerActivityAndSubject.txt", 
            row.name=FALSE)

#code to read the output file
#chk_output <- read.table(".\\MeansOfTestAndTrainDataPerActivityAndSubject.txt", header = TRUE)