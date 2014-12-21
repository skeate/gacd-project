if( !file.exists('UCI HAR Dataset') ){
  print('downloading dataset...')
  download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip', 'dataset.zip')
  unzip('dataset.zip')
}

PrepData <- function(name){
  x <- read.table(paste('UCI HAR Dataset/', name, '/X_', name, '.txt', sep=''))
  y <- read.table(paste('UCI HAR Dataset/', name, '/y_', name, '.txt', sep=''))
  s <- read.table(paste('UCI HAR Dataset/', name, '/subject_', name, '.txt', sep=''))
  raw_names <- read.table('UCI HAR Dataset/features.txt')
  raw_labels <- read.table('UCI HAR Dataset/activity_labels.txt')
  names(x) <- raw_names[,2]
  names(y) <- 'Activity.ID'
  names(s) <- 'Subject.ID'
  names(raw_labels) <- c('Activity.ID', 'Activity.Name')
  means_and_stds <- x[, grepl('(mean|std)', names(x))]
  combined <- cbind(s, y, means_and_stds)
  merge(combined, raw_labels)
}

test <- PrepData('test')
train <- PrepData('train')
dt <- data.table(rbind(test, train))
means <- dt[, lapply(.SD, mean), by = c('Subject.ID', 'Activity.Name')]
means <- means[order(means$Subject.ID),]
write.table(means,file = 'tidy.txt', row.name=FALSE)