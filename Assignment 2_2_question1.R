# Session 2 Assignment 2 by Munmun Ghosal

# 1. Read multiple JSON files into a directory to convert into a dataset
# I have files text1, text2, text3 in the directory JSON.

# Reading multiple files using for loop and convert into a dataset

library(jsonlite)
library(dplyr)

ls <- list("E:\\munmun_acadgild\\acadgild data analytics\\b3\\ASSIGNMENT\\B3 ASSIGNMENT\\json\\text1.json",
           "E:\\munmun_acadgild\\acadgild data analytics\\b3\\ASSIGNMENT\\B3 ASSIGNMENT\\json\\text2.json",
           "E:\\munmun_acadgild\\acadgild data analytics\\b3\\ASSIGNMENT\\B3 ASSIGNMENT\\json\\text3.json")
for (i in ls){
  a[i] <- read_json(i, simplifyVector = TRUE)
  z[i] <- data.frame( i,row.names = NULL, check.rows = FALSE,
                      check.names = TRUE, fix.empty.names = TRUE,
                      stringsAsFactors = default.stringsAsFactors())
  
  z[i] <- cbind(z[i],a[i])
}
View(a)

# Reading multiple files one by one  and convert into a dataset
library(jsonlite)
library(dplyr)
y1<-read_json("E:\\munmun_acadgild\\acadgild data analytics\\b3\\ASSIGNMENT\\B3 ASSIGNMENT\\json\\text1.json")
View(y1)
result1<- as.data.frame(do.call("rbind",y1))
result1

y2<-read_json("E:\\munmun_acadgild\\acadgild data analytics\\b3\\ASSIGNMENT\\B3 ASSIGNMENT\\json\\text2.json")
View(y2)
result2<- as.data.frame(do.call("rbind",y2))
result2

y3<-read_json("E:\\munmun_acadgild\\acadgild data analytics\\b3\\ASSIGNMENT\\B3 ASSIGNMENT\\json\\text3.json")
View(y3)
result3<- as.data.frame(do.call("rbind",y3))
result3

