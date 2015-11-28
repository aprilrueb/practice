#Plotting data from Kaggle's Titanic machine learning competition.
train=read.table("train.csv", sep=",", header=TRUE)
survived <- train[train$Survived == 1,]
mean(survived[,"Age"], na.rm=TRUE)
dead <- train[train$Survived == 0,]
mean(dead$Age, na.rm=TRUE)
boxplot(survived$Age,dead$Age, names=c("Survived","Dead"), ylab="Age",
  col="blue", main="Age vs. Survival Rate on the Titanic")
