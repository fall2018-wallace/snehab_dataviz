
library(ggplot2)

populationPlot<- ggplot(mergedData, aes(x=population)) + geom_histogram(bins=10) #creating histogram for Population
murderPlot<- ggplot(mergedData, aes(x=Murder)) + geom_histogram(bins=10) #creating histogram for Murder
urbanPopPlot <- ggplot(mergedData, aes(x=mergedData$UrbanPop)) + geom_histogram(bins=10) #creating histogram for UrbanPop
assaultPlot <- ggplot(mergedData, aes(x=mergedData$Assault)) + geom_histogram(bins=10) #creating histogram for Assault
rapeAssault <- ggplot(mergedData, aes(x=mergedData$Rape)) + geom_histogram(bins=10) #creating histogram for Rape
populationPlot
murderPlot
urbanPopPlot
assaultPlot
