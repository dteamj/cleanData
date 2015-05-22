##Coursera Getting and Cleaning Data
#Project

###backgorund###
The data used in this exercise represent data collected from the accelerometers from the Samsung Galaxy S smartphone. There is a script *run_analysis.R* performig the transformation. The result of the script is a new Table, stored in the file newdf.txt. See CodeBook.md for description of the variables.

###processing###
*  install dplyr and tidyr
*  run the script run_analysis.R
*  you get the downloades raw data in a created folder data
*  you get the clean dataset in the file newdf.txt

####description of run_analysis.R####
* get the data
  * create folder data if not exists
  * download zip file from internet if not exists. url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  * unzip file
* read and select the data
  * read the variable names from file features.txt
  * read the data from ~/train/X_train.txt and ~/test/X_test.txt
  * combine test and train
  * set varibale names
  * remove dupicated collumns
  * select the 'mean' and 'std' variables
*  read activity and subject
  *  read the activity data from ~train/y_train.txt and ~test/y_test.txt
  *  combine them
  *  transform numbers to human readable activity names
  *  read the personnumbers data from ~/train/subject_train.txt and ~/test/subject_test.txt
*  combine and output
  *  bind collumns activity, subject, data)
  *  group by activity and subject
  *  summarise all variables with mean
  *  write table to file="newdf.txt"



