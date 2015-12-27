#!/usr/bin/Rscript --vanilla

# TODO: Add comment
# 
# Author: prhodes
###############################################################################


# load needed libraries
library(dplyr)
library(data.table)

# a welcome message
cat( sprintf( "Starting analysis...\n" ) )

# load the feature names
features <- read.table( "data/features.txt",stringsAsFactors=FALSE )

# select just the names involving means
meanNames <- features$V2[grep( "*mean*", features$V2)]

# select just the names involving std deviation
stdvNames <- features$V2[grep( "*std*", features$V2)]

# combine the desired feature names into one vector
# we can use for accessing just those columns
featureNames <- c( meanNames, stdvNames )
featureNames <- make.names( featureNames )

# before pulling out a subset of the columns, use make.names
# to make a vector of all of the column names, and then assign
# those names to our data file(s)
validNames <- make.names( features$V2 )

# Load the primary data for the test dataset 
Xtest <- read.table( "data/test/X_test.txt" )

# Load the primary data for the train dataset 
Xtrain <- read.table( "data/train/X_train.txt" )

# row bind the two sets together
allData <- rbind( Xtest, Xtrain )

# set names
names(allData) <- validNames

# now just grab the columns we care about
limitedData <- allData[,featureNames]


### now add in the subject data ###
subjectDataTest <- read.table( "data/test/subject_test.txt" )
subjectDataTrain <- read.table( "data/train/subject_train.txt" )
subjectData <- c( subjectDataTest$V1, subjectDataTrain$V1 )

# and the Y label (activity) data
activityDataTest <- read.table( "data/test/y_test.txt" )
activityDataTrain <- read.table( "data/train/y_train.txt" )
activityData <- c( activityDataTest$V1, activityDataTrain$V1 )

# colbind our subject and activity data along with the rest of
# the data
allCombinedData <- cbind( subjectData, activityData, limitedData )
colnames( allCombinedData )[1] <- "Subject"
colnames( allCombinedData )[2] <- "Activity"


# group and calculate averages
table.agg <- aggregate(allCombinedData, by=list(allCombinedData$Subject,allCombinedData$Activity), FUN=mean)

# after doing the aggregation the first few columns look like this
# Group.1 Group.2   Subject Activity
# where the "Subject" and "Activity" columns are meaningless as they are the mean
# calculate on ID columns.  and "Group.1" and "Group.2" are auto-generated names
# created by the aggregate() call.  So, let's rename "Group.1" to "Subject" and "Group.2" to "Activity"
# and get rid of the useless columns
drops <- c("Subject", "Activity")
table.agg <- table.agg[,!(names(table.agg) %in% drops)]
colnames(table.agg)[1] <- "Subject"
colnames(table.agg)[2] <- "Activity"

# pull in the activity label data and join it into place
activity_labels <- read.table( "data/activity_labels.txt", stringsAsFactors=FALSE )
colnames(activity_labels) <- c("ActivityId", "ActivityName")

dataWithActivityNames <- merge( table.agg, activity_labels, by.x="Activity", by.y="ActivityId" )


# reorder the columns to put Subject, Activity and ActivityName as the first three columns
dataWithActivityNames <- dataWithActivityNames %>%
		select(Subject, Activity, ActivityName, everything())

# write out the data with write.table
write.table(dataWithActivityNames, file="output.txt", row.name=FALSE)

cat( sprintf( "done\n" ) )


