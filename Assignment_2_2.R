library(datasets)
str(iris)
summary(iris)


# Aggregate function in R with mean summary statistics
agg_mean = aggregate(iris[,1:4],by=list(iris$Species),FUN=mean, na.rm=TRUE)
agg_mean


# Aggregate function in R with sum summary statistics
agg_sum = aggregate(iris[,1:4],by=list(iris$Species),FUN=sum, na.rm=TRUE)
agg_sum


# Aggregate function in R with count
agg_count = aggregate(iris[,1:4],by=list(iris$Species),FUN=length)
agg_count

# Aggregate function in R with maximum
agg_max = aggregate(iris[,1:4],by=list(iris$Species),FUN=max, na.rm=TRUE)
agg_max

# Aggregate function in R with minimum
agg_min = aggregate(iris[,1:4],by=list(iris$Species),FUN=min, na.rm=TRUE)
agg_min