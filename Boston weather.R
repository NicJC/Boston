library(knitr)
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(message = FALSE)
opts_chunk$set(comment="", fig.align="center", tidy=TRUE , cache=TRUE)
library(tidyverse)
library(lattice)
library(data.table)
library(GGally)
library(kableExtra)


Boston <- read_csv("C:/Data/Boston weather.csv")



write.csv(Boston,"Boston_weather.csv",row.names=FALSE)

ggpairs(Boston[,c(1,4,5,6)],
        mapping = ggplot2::aes(color = Year),
        upper = list(continuous = wrap("density", alpha = 0.5), combo = "box_no_facet"))+ggplot2::labs(title = "Boston Weather")  + 
  theme(axis.text.x = element_text(color="steelblue", 
                                   size=12, angle=90),
        axis.text.y = element_text( color="steelblue", 
                                    size=12))

ggsave("matrixPlot.png", width = 6, height = 6)


