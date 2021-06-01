library(reshape2)

# Get variable & activity info
features <- read.table('data/features.txt')
activity <- read.table('data/activity_labels.txt')

# clean variable names to make them more descriptive (step 4)
features$V2 <- gsub("-mean", "Mean", features$V2)
features$V2 <- gsub("-std", "Std", features$V2)
features$V2 <- gsub("[-()]", "", features$V2)

# train data
x_train <- read.table('data/train/X_train.txt')
colnames(x_train) <- features$V2
y_train <- read.table('data/train/Y_train.txt', col.names = "Activity")
s_train <- read.table('data/train/subject_train.txt', col.names = "Subject")
train <- cbind(s_train, y_train, x_train)

# test data
x_test <- read.table('data/test/X_test.txt')
colnames(x_test) <- features$V2
y_test <- read.table('data/test/Y_test.txt', col.names = "Activity")
s_test <- read.table('data/test/subject_test.txt', col.names = "Subject")
test <- cbind(s_test, y_test, x_test)

# merge train & test data (step 1)
mergedata <- rbind(train, test)

# select mean & std columns (step 2)
data.cols <- colnames(mergedata)
data.cols.filter <- grep("*Std|*Mean|Activity|Subject", data.cols, value=TRUE)
cleandata <- mergedata[,data.cols.filter]

# replace activity labels (step 3)
cleandata$Activity <- factor(cleandata$Activity, labels = activity$V2)

# tidy data aggregated by subject and activity type (step 5)
cleandata.melt <- melt(cleandata, id=c("Activity","Subject"), measure.vars=data.cols.filter[3:81])
tidydata <- dcast(cleandata.melt, Subject + Activity ~ variable, mean)

# write tidy data file
write.table(tidydata, "tidydata.txt", row.names = FALSE)