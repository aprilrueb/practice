#http://www.rtexttools.com/blog/getting-started-with-latent-dirichlet-allocation-using-rtexttools-topicmodels
library(RTextTools)
library(topicmodels)

data(NYTimes)
data <- NYTimes[sample(1:3100,size=1000,replace=FALSE),]


matrix <- create_matrix(cbind(as.vector(data$Title),as.vector(data$Subject)), language="english", removeNumbers=TRUE, stemWords=TRUE)

k <- 10
lda <- LDA(matrix, k)
terms(lda, 5)
nyt_topics <- topics(lda)
