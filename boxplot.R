
library(ggplot2)

populationBoxPLot <- ggplot(mergedData, aes(y= mergedData$population)) +
  geom_boxplot()

murderBoxPlot <- ggplot(mergedData, aes(y= mergedData$Murder)) +
  geom_boxplot()
  
  populationBoxPLot
  murderBoxPlot
