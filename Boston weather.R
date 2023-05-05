library(knitr)
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(message = FALSE)
opts_chunk$set(comment="", fig.align="center", tidy=TRUE , cache=TRUE)
library(tidyverse)
library(lattice)
library(data.table)
library(GGally)


Boston <- read_csv("C:/Data/Boston weather.csv")



write.csv(Boston,"Boston_weather.csv",row.names=FALSE)

