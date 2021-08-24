# R-Programming

My first R Programming
**
output:**
Assignment 1:
Enter first number :25
Enter second number :33
Enter third number :44
[1] "Greatest is : 44"

Enter a number: 45
[1] "The sum is 1035"

Enter a number: 15
[1] "15 x 1 = 15"
[1] "15 x 2 = 30"
[1] "15 x 3 = 45"
[1] "15 x 4 = 60"
[1] "15 x 5 = 75"
[1] "15 x 6 = 90"
[1] "15 x 7 = 105"
[1] "15 x 8 = 120"
[1] "15 x 9 = 135"
[1] "15 x 10 = 150"

[1] "Select operation."
[1] "1.Add"
[1] "2.Subtract"
[1] "3.Multiply"
[1] "4.Divide"
Enter choice[1/2/3/4]: 3
Enter first number: 4
Enter second number: 6
[1] "4 * 6 = 24"




Assignment 2_1
 # Data Preprocessing
> 
> # Importing the dataset
> knitr::opts_chunk$set(echo = TRUE, results='asis')
> dataset = read.csv('Dataset.csv')
> library(hwriter)
> cat(hwrite(dataset, border = 1, table.frame='void', width='600px', table.style='padding: 100px', row.names=FALSE, row.style=list('font-weight:bold')))
<table frame="void" style="padding: 100px" border="1" width="600px">
<tr>
<td style="font-weight:bold">Country</td><td style="font-weight:bold">Age</td><td style="font-weight:bold">Salary</td><td style="font-weight:bold">Purchased</td></tr>
<tr>
<td>France</td><td>44</td><td>72000</td><td>No</td></tr>
<tr>
<td>Spain</td><td>27</td><td>&nbsp;</td><td>Yes</td></tr>
<tr>
<td>Germany</td><td>30</td><td>54000</td><td>No</td></tr>
<tr>
<td>Spain</td><td>38</td><td>61000</td><td>No</td></tr>
<tr>
<td>Germany</td><td>40</td><td>&nbsp;</td><td>Yes</td></tr>
<tr>
<td>France</td><td>35</td><td>58000</td><td>Yes</td></tr>
<tr>
<td>Spain</td><td>&nbsp;</td><td>52000</td><td>No</td></tr>
<tr>
<td>France</td><td>48</td><td>79000</td><td>Yes</td></tr>
<tr>
<td>Germany</td><td>&nbsp;</td><td>83000</td><td>No</td></tr>
<tr>
<td>France</td><td>37</td><td>67000</td><td>Yes</td></tr>
</table>
> 
> # Taking care of missing data
> dataset$Age = ifelse(is.na(dataset$Age),
+                      ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
+                      dataset$Age)
> dataset$Salary = ifelse(is.na(dataset$Salary),
+                         ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
+                         dataset$Salary)
> library(hwriter)
> cat(hwrite(dataset, border = 1, table.frame='void', width='600px', table.style='padding: 100px', row.names=FALSE, row.style=list('font-weight:bold')))
<table frame="void" style="padding: 100px" border="1" width="600px">
<tr>
<td style="font-weight:bold">Country</td><td style="font-weight:bold">Age</td><td style="font-weight:bold">Salary</td><td style="font-weight:bold">Purchased</td></tr>
<tr>
<td>France</td><td>44.000</td><td>72000</td><td>No</td></tr>
<tr>
<td>Spain</td><td>27.000</td><td>65750</td><td>Yes</td></tr>
<tr>
<td>Germany</td><td>30.000</td><td>54000</td><td>No</td></tr>
<tr>
<td>Spain</td><td>38.000</td><td>61000</td><td>No</td></tr>
<tr>
<td>Germany</td><td>40.000</td><td>65750</td><td>Yes</td></tr>
<tr>
<td>France</td><td>35.000</td><td>58000</td><td>Yes</td></tr>
<tr>
<td>Spain</td><td>37.375</td><td>52000</td><td>No</td></tr>
<tr>
<td>France</td><td>48.000</td><td>79000</td><td>Yes</td></tr>
<tr>
<td>Germany</td><td>37.375</td><td>83000</td><td>No</td></tr>
<tr>
<td>France</td><td>37.000</td><td>67000</td><td>Yes</td></tr>
</table>
> # Encoding categorical data
> dataset$Country = factor(dataset$Country,
+                          levels = c('France', 'Spain', 'Germany'),
+                          labels = c(1, 2, 3))
> dataset$Purchased = factor(dataset$Purchased,
+                            levels = c('No', 'Yes'),
+                            labels = c(0, 1))
> cat(hwrite(dataset, border = 1, table.frame='void', width='600px', table.style='padding: 100px', row.names=FALSE, row.style=list('font-weight:bold')))
<table frame="void" style="padding: 100px" border="1" width="600px">
<tr>
<td style="font-weight:bold">Country</td><td style="font-weight:bold">Age</td><td style="font-weight:bold">Salary</td><td style="font-weight:bold">Purchased</td></tr>
<tr>
<td>1</td><td>44.000</td><td>72000</td><td>0</td></tr>
<tr>
<td>2</td><td>27.000</td><td>65750</td><td>1</td></tr>
<tr>
<td>3</td><td>30.000</td><td>54000</td><td>0</td></tr>
<tr>
<td>2</td><td>38.000</td><td>61000</td><td>0</td></tr>
<tr>
<td>3</td><td>40.000</td><td>65750</td><td>1</td></tr>
<tr>
<td>1</td><td>35.000</td><td>58000</td><td>1</td></tr>
<tr>
<td>2</td><td>37.375</td><td>52000</td><td>0</td></tr>
<tr>
<td>1</td><td>48.000</td><td>79000</td><td>1</td></tr>
<tr>
<td>3</td><td>37.375</td><td>83000</td><td>0</td></tr>
<tr>
<td>1</td><td>37.000</td><td>67000</td><td>1</td></tr>
</table>
> # Splitting the dataset into the Training set and Test set
> library(caTools)
> set.seed(144)
> split <- sample.split(dataset$Purchased, SplitRatio = 0.8)
> training_set <- subset(dataset, split == TRUE)
> test_set <- subset(dataset, split == FALSE)
> cat(hwrite(training_set, border = 1, table.frame='void', width='600px', table.style='padding: 100px', row.names=FALSE, row.style=list('font-weight:bold')))
<table frame="void" style="padding: 100px" border="1" width="600px">
<tr>
<td style="font-weight:bold">Country</td><td style="font-weight:bold">Age</td><td style="font-weight:bold">Salary</td><td style="font-weight:bold">Purchased</td></tr>
<tr>
<td>1</td><td>44.000</td><td>72000</td><td>0</td></tr>
<tr>
<td>2</td><td>27.000</td><td>65750</td><td>1</td></tr>
<tr>
<td>3</td><td>30.000</td><td>54000</td><td>0</td></tr>
<tr>
<td>3</td><td>40.000</td><td>65750</td><td>1</td></tr>
<tr>
<td>1</td><td>35.000</td><td>58000</td><td>1</td></tr>
<tr>
<td>2</td><td>37.375</td><td>52000</td><td>0</td></tr>
<tr>
<td>1</td><td>48.000</td><td>79000</td><td>1</td></tr>
<tr>
<td>3</td><td>37.375</td><td>83000</td><td>0</td></tr>
</table>
> cat(hwrite(test_set, border = 1, table.frame='void', width='600px', table.style='padding: 100px', row.names=FALSE, row.style=list('font-weight:bold')))
<table frame="void" style="padding: 100px" border="1" width="600px">
<tr>
<td style="font-weight:bold">Country</td><td style="font-weight:bold">Age</td><td style="font-weight:bold">Salary</td><td style="font-weight:bold">Purchased</td></tr>
<tr>
<td>2</td><td>38</td><td>61000</td><td>0</td></tr>
<tr>
<td>1</td><td>37</td><td>67000</td><td>1</td></tr>
</table>
> # Feature Scaling
> training_set[, 2:3] <- scale(training_set[, 2:3])
> test_set[, 2:3] <- scale(test_set[, 2:3])
> cat(hwrite(training_set, border = 1, table.frame='void', width='600px', table.style='padding: 100px', row.names=FALSE, row.style=list('font-weight:bold')))
<table frame="void" style="padding: 100px" border="1" width="600px">
<tr>
<td style="font-weight:bold">Country</td><td style="font-weight:bold">Age</td><td style="font-weight:bold">Salary</td><td style="font-weight:bold">Purchased</td></tr>
<tr>
<td>1</td><td> 0.967485297</td><td> 0.51322949</td><td>0</td></tr>
<tr>
<td>2</td><td>-1.503463067</td><td>-0.03863018</td><td>1</td></tr>
<tr>
<td>3</td><td>-1.067413356</td><td>-1.07612635</td><td>0</td></tr>
<tr>
<td>3</td><td> 0.386085682</td><td>-0.03863018</td><td>1</td></tr>
<tr>
<td>1</td><td>-0.340663837</td><td>-0.72293617</td><td>1</td></tr>
<tr>
<td>2</td><td> 0.004542184</td><td>-1.25272145</td><td>0</td></tr>
<tr>
<td>1</td><td> 1.548884912</td><td> 1.13131232</td><td>1</td></tr>
<tr>
<td>3</td><td> 0.004542184</td><td> 1.48450251</td><td>0</td></tr>
</table>
> cat(hwrite(test_set, border = 1, table.frame='void', width='600px', table.style='padding: 100px', row.names=FALSE, row.style=list('font-weight:bold')))
<table frame="void" style="padding: 100px" border="1" width="600px">
<tr>
<td style="font-weight:bold">Country</td><td style="font-weight:bold">Age</td><td style="font-weight:bold">Salary</td><td style="font-weight:bold">Purchased</td></tr>
<tr>
<td>2</td><td> 0.7071068</td><td>-0.7071068</td><td>0</td></tr>
<tr>
<td>1</td><td>-0.7071068</td><td> 0.7071068</td><td>1</td></tr>
</table>




Assignment 2_2
> # UCI Machine Learning Repository -- Iris Data Set, is also available directly, so using them instead of downloading.
> library(datasets)
> str(iris)
'data.frame':	150 obs. of  5 variables:
 $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
 $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
 $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
 $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
 $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
> summary(iris)
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50  
 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50  
 Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50  
 Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199                  
 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800                  
 Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500                  
> 
> 
> # Aggregate function in R with mean summary statistics
> agg_mean = aggregate(iris[,1:4],by=list(iris$Species),FUN=mean, na.rm=TRUE)
> agg_mean
     Group.1 Sepal.Length Sepal.Width Petal.Length Petal.Width
1     setosa        5.006       3.428        1.462       0.246
2 versicolor        5.936       2.770        4.260       1.326
3  virginica        6.588       2.974        5.552       2.026
> 
> 
> # Aggregate function in R with sum summary statistics
> agg_sum = aggregate(iris[,1:4],by=list(iris$Species),FUN=sum, na.rm=TRUE)
> agg_sum
     Group.1 Sepal.Length Sepal.Width Petal.Length Petal.Width
1     setosa        250.3       171.4         73.1        12.3
2 versicolor        296.8       138.5        213.0        66.3
3  virginica        329.4       148.7        277.6       101.3
> 
> 
> # Aggregate function in R with count
> agg_count = aggregate(iris[,1:4],by=list(iris$Species),FUN=length)
> agg_count
     Group.1 Sepal.Length Sepal.Width Petal.Length Petal.Width
1     setosa           50          50           50          50
2 versicolor           50          50           50          50
3  virginica           50          50           50          50
> 
> # Aggregate function in R with maximum
> agg_max = aggregate(iris[,1:4],by=list(iris$Species),FUN=max, na.rm=TRUE)
> agg_max
     Group.1 Sepal.Length Sepal.Width Petal.Length Petal.Width
1     setosa          5.8         4.4          1.9         0.6
2 versicolor          7.0         3.4          5.1         1.8
3  virginica          7.9         3.8          6.9         2.5
> 
> # Aggregate function in R with minimum
> agg_min = aggregate(iris[,1:4],by=list(iris$Species),FUN=min, na.rm=TRUE)
> agg_min
     Group.1 Sepal.Length Sepal.Width Petal.Length Petal.Width
1     setosa          4.3         2.3          1.0         0.1
2 versicolor          4.9         2.0          3.0         1.0
3  virginica          4.9         2.2          4.5         1.4

