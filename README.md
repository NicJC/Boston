# Boston
Boston weather data

[data](https://raw.githubusercontent.com/NicJC/Boston/main/Boston_weather.csv)



Below is the R code for the matrix plot further down

---
        library(GGally)

        ggpairs(Boston[,c(1,4,5,6)],

        mapping = ggplot2::aes(color = Year),
        
        upper = list(continuous = wrap("density", alpha = 0.5), combo = "box_no_facet"))+ggplot2::labs(title = "Boston Weather")  + 
        
        theme(axis.text.x = element_text(color="steelblue", 
  
                                   size=12, angle=90),
                                   
        axis.text.y = element_text( color="steelblue", size=12))
---



![](https://github.com/NicJC/Boston/blob/main/matrixPlot.png)

The R code to create the BiPlot is below:

---
        df1 <- Boston[, c(4,5,6)]

       biplot(princomp(df1))
---

A Biplot of the data

![](https://github.com/NicJC/Boston/blob/main/biplot.png)
