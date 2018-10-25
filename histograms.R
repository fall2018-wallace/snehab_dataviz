
populationPlot<- ggplot(mergedData, aes(x=population)) + geom_histogram(bins=10) #creating histogram for Population
murderPlot<- ggplot(mergedData, aes(x=Murder)) + geom_histogram(bins=10) #creating histogram for Murder

# Ensure each line of code is explained (comments) in terms of what it is doing.
#Then build similar code to create histograms of each of the other three variables in the merged data frame. What parameter will you have to adjust to make the other histograms look right?

urbanPopPlot <- ggplot(mergedData, aes(x=mergedData$UrbanPop)) + geom_histogram(bins=10) #creating histogram for UrbanPop
assaultPlot <- ggplot(mergedData, aes(x=mergedData$Assault)) + geom_histogram(bins=10) #creating histogram for Assault
rapeAssault <- ggplot(mergedData, aes(x=mergedData$Rape)) + geom_histogram(bins=10) #creating histogram for Rape
