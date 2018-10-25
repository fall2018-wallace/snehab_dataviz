
library(ggplot2)
# Step C: Which State had the Most Murders - bar charts
# 7)	Calculate the number of murders per state
mergedData$murderperrate<- (mergedData$Murder*mergedData$population)/100000


# 8)	Generate a bar chart, with the number of murders per state
# Hint: use the geom_col function
murder.bar <- ggplot(mergedData,aes(x=mergedData$StateName,y=mergedData$murderperrate)) #setting the required aes
murder.bar <- murder.bar + geom_col() # defining the geometry of the plot  
murder.bar <- murder.bar +ggtitle("Total Murders") #adding a title
murder.bar


# 9)	Generate a bar chart, with the number of murders per state. Rotate text (on the X axis), so we can see x labels, also add a title named "Total Murders".
# 
murder.bar1 <- ggplot(mergedData,aes(x=mergedData$StateName,y=mergedData$murderperrate))#setting the required aesthetics 
murder.bar1 <- murder.bar1 + geom_col() # defining the geometry of the plot ie. Bar chart~geom_col() method
murder.bar1 <- murder.bar1+ theme(axis.text.x =
                                    element_text(angle = 90, hjust = 1))#adjusting the state name text on the X-Axis
murder.bar1 <- murder.bar1 +ggtitle("Total Murders") #adding a title
murder.bar1

# 10)	 Generate a new bar chart, the same as in the previous step, but also sort the x-axis by the murder rate
#Reordering bar chart
murder.bar2 <- ggplot(mergedData,aes(x=reorder(mergedData$StateName,mergedData$murderperrate),y=mergedData$murderperrate)) # sorting the X-axis stateNames according to the Murder rate
murder.bar2 <- murder.bar2 + geom_col() # defining the geometry of the plot ie. Bar chart~geom_col() method
murder.bar2 <- murder.bar2+ theme(axis.text.x =
                                    element_text(angle = 90, hjust = 1)) #adjusting the state name text on the X-Axis
murder.bar2 <- murder.bar2 +ggtitle("Total Murders-Sorted")#adding a title
murder.bar2

# 11)	 Generate a third bar chart, the same as the previous step, but also showing percentOver18 as the color of the bar

murder.bar3 <- ggplot(mergedData,aes(x=reorder(mergedData$StateName,mergedData$murderperrate),y=mergedData$murderperrate,fill=mergedData$percentOver18))#setting the aesthetics and using fill with values of perecentOver18 which becomes the color reference for the bar.
murder.bar3 <- murder.bar3 + geom_col() # defining the geometry of the plot ie. Bar chart~geom_col() method
murder.bar3 <- murder.bar3+ theme(axis.text.x =
                                    element_text(angle = 90, hjust = 1))#adjusting the state name text on the X-Axi
murder.bar3 <- murder.bar3 +ggtitle("Total Murder-filled with percentOver18")
murder.bar3

# Step D: Explore Murders - scatter chart
# 12)	Generate a scatter plot - have population on the X axis, the percent over 18 on the y axis, and the size & color represent the murder rate
murder.scatter <- ggplot(mergedData,aes(x=mergedData$population,y=mergedData$percentOver18))#setting the required aes
murder.scatter <- murder.scatter + geom_point(aes(size=Murder,color=Murder))  #defining the geometry of the plot ie.Scatter plot~geom_point() method and setting size and color with Murder as the aesthetics.
murder.scatter <- murder.scatter + ggtitle("Murders-Scatter Plot") #adding a title to the chart
murder.scatter

