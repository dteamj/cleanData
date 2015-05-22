library(dplyr)
library(tidyr)

#get the data
myfolder <- "./data"
if (! file.exists (myfolder))
  dir.create("data")
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
mydestfile <- paste( myfolder, "/Dataset.zip", sep = "" )
if( ! file.exists(mydestfile)){
  download.file(fileurl, destfile = mydestfile, method = "curl")
  dateDownloaded <- date()
}

unzip (mydestfile, exdir = myfolder)
list.files(myfolder, recursive = T)

#read and select the data
featurenames <- read.csv("./data/UCI HAR Dataset/features.txt", sep="", header = F)[[2]]
featurenames <- make.names(featurenames, unique = TRUE)

test <- read.csv("./data/UCI HAR Dataset/test/X_test.txt", sep = "", header = F)
train <- read.csv("./data/UCI HAR Dataset/train/X_train.txt", sep = "", header = F)

all <- bind_rows(train, test)
dall <- tbl_df(all)
colnames(dall) <- featurenames
dallnodoubles <- dall[ !duplicated(names(dall)) ] %>%   # removing ducpilates we don't need
  select(contains("mean"), contains("std"), -contains("angle")) 
  

#read activity and subject
activity_test <- read.csv("./data/UCI HAR Dataset/test/y_test.txt", header = F)
activity_train <- read.csv("./data/UCI HAR Dataset/train/y_train.txt", header = F)
activity <- bind_rows(activity_train,activity_test)
colnames(activity) <- c("activity")
dactivity <- tbl_df( activity )
dactivity <- dactivity %>% mutate(activity = factor(activity, levels = 1:6, labels = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")))


subject_test <- read.csv("./data/UCI HAR Dataset/test/subject_test.txt", header = F)
subject_train <- read.csv("./data/UCI HAR Dataset/train/subject_train.txt", header = F)
subject <- bind_rows(subject_train,subject_test)
colnames(subject) <- c("subject")
dsubject <- tbl_df( subject )


#combine and output
dallnodoublesacti <- tbl_df( bind_cols(dactivity, dsubject, dallnodoubles) )

newdf <- dallnodoublesacti %>% group_by( activity, subject) %>% summarise_each(funs( mean ))

write.table(newdf, file="newdf.txt", row.name=FALSE)

View(newdf)





