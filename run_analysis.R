##=====Environment Setup=====
library("dplyr")

##=====Features and Activity Labels vectors=====
featureLabels <- read.csv("features.txt", sep = "", header = FALSE)[2]
activityLabels <- read.csv("activity_labels.txt", sep = "", header = FALSE)

##=====Reading datasets=====
##Test datasets
testDs <- read.csv("test/X_test.txt", sep = "", header = FALSE)
testMoves <- read.csv("test/Y_test.txt", sep = "", header = FALSE)
testSubject <- read.csv("test/subject_test.txt", sep = "", header = FALSE)
##Train datasets
trainDs <- read.csv("train/X_train.txt", sep = "", header = FALSE)
trainMoves <- read.csv("train/Y_train.txt", sep = "", header = FALSE)
trainSubject <- read.csv("train/subject_train.txt", sep = "", header = FALSE)

##=====Merge datasets=====
mergedDs <- rbind(testDs,trainDs)        
mergedMoves <- rbind(testMoves, trainMoves)
mergedSubjects <- rbind(testSubject, trainSubject)
	
##=====Extracting measurements=====
names(mergedDs) <- featureLabels[ ,1]
mergedDs <- mergedDs[ grepl("std|mean", names(mergedDs), ignore.case = TRUE) ] 

##=====Put together datasets with descriptive activity/variable names=====
mergedMoves <- merge(mergedMoves, activityLabels, by.x = "V1", by.y = "V1")[2]
mergedDs <- cbind(mergedSubjects, mergedMoves, mergedDs)
names(mergedDs)[1:2] <- c("PersonID", "Activities")

##=====Write out Tidy dataset=====
write.table(mergedDs, file = "tidyDataset.csv", sep = ",",
            qmethod = "double", row.names = FALSE)

##=====Second Tidy dataset=====
group_by(mergedDs, PersonID, Activities) %>% summarise_each(funs(mean)) %>%
	write.table(file = "tidySummaryDataset.csv", sep = ",", 
            qmethod = "double",  row.name=FALSE)
