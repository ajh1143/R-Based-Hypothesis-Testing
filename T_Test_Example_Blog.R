#import ggplot, reshape2

#Create 2 data sets of equal number, different population means
DataSet1 <- rnorm(30, mean = 25)
DataSet2 <- rnorm(30, mean = 75)

#Run simple t-test using t.test()
Result <- t.test(DataSet1, DataSet2)

#Create a plot, overlaying two distributions on one graph
df <- data.frame(DataSet1, DataSet2)
meltedDataFrame <- melt(df)
ggplot(meltedDataFrame,aes(x=value, fill=variable)) + geom_histogram(alpha=0.35)
