
#set working directory Prior to run the script
setwd("C:/Users/ccorretg/Dropbox/science/Getting and cleaning data")


# Thanks God DPLYR exists!
library(dplyr)

#set URL for each File
al_url <-"./data/activity_labels.txt"
f_url  <-"./data/features.txt"
st_url <-"./data/test/subject_test.txt"
at_url <-"./data/test/y_test.txt"
mt_url <-"./data/test/X_test.txt"

stra_url <-"./data/train/subject_train.txt"
atra_url <-"./data/train/y_train.txt"
mtra_url <-"./data/train/X_train.txt"


# Load description labels from files
# al Activity Labels
# ml Measurement Labels
al <- read.table(al_url, col.names=c("activity_id","activity_label"))
ml <- read.table(f_url, col.names=c("subject_id","label"))


# Load Test data
# st Subject Test
# at Activity Train
# mt Measurement Train
st <- read.table(st_url, col.names=c("subject_id"))
at <- read.table(at_url, col.names=c("activity_id"))
mt <- read.table(mt_url)


# Load Training Data
# stra Subject Training
# atra Activity Training
# mtra Measurements Training
stra <- read.table(stra_url,col.names=c("subject_id"))
atra <- read.table(atra_url,col.names=c("activity_id"))
mtra <- read.table(mtra_url)


# Set Labels from Measurement Labels into Measurement Test & Measurement Training
names(mt) <- ml$label
names(mtra) <- ml$label

# Combine both Test & Training in one dataset
netdata <-rbind(cbind(stra,atra,mtra), cbind(st,at,mt))


netdata %>%
        inner_join(al,by="activity_id") %>%        
        select(subject_id, activity_label, contains("mean\\(\\)"), contains("std\\(\\)")) %>%           
        group_by(subject_id,activity_label) %>%
        summarise_each(funs(mean)) %>%
        write.table("tidydata.txt", row.names = FALSE, sep = "\t")




