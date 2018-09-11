# which directory is your working directory
getwd()

# download the titanic data into your working directory
# then read that titanic train file into your workspace using read.csv command
# reading data from a csv
read.csv("titanic_data_kaggle_train.csv",header = TRUE)

# making a contingency table of titanic data class and survived variable
table(titanic$Pclass,titanic$Survived)

# finding the proportions of customer survival w.r.t. sex
mytable_class_surv<-table(titanic$Pclass,titanic$Survived)
prop.table(mytable_class_surv)


# making bar chart of class and survived
plot(mytable_class_surv)


#construct the same contingency using sex and survived variable 
# then find the probabilities 
# make the bar chart of this classification
# do it yourself


#making box plot of data
boxplot(titanic$Fare)
# box plot is not understand able because of extreme numbers
# obtain a subset of having fare less than 100
# all columns having fare less than 100
filt_titan <- titanic[ which(titanic$Fare<100),]


#if you want to have a subset containg only fare column then
filt_titan <- titanic[ which(titanic$Fare<100), 10]
boxplot(filt_titan)
# still having extreme number remove them
filt_titan <- titanic[ which(titanic$Fare<50), 10]
boxplot(filt_titan)


