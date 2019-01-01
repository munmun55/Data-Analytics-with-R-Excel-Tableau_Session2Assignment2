# Data-Analytics-with-R-Excel-Tableau_Session2Assignment2
Data-Analytics-with-R-Excel-Tableau_Session 2 Assignment 2

1. Read multiple json files into a working directory for further converting into a dataset.

The sample json files text1.json, text2.json and text3.json are present in the folder “json” in E:\\munmun_acadgild\\acadgild data analytics\\b3\\ASSIGNMENT\\B3 ASSIGNMENT\\json

Jsonlite  and dplyr packages are installed and then following commands are executed using R-studio:

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
View(z)

Hence multiple json files are read into the working directory and are then converted into datasets.

The current working directory may be obtained by using getwd()

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


2. Parse the given JSON into a data frame.

The script for parsing the given Jason into a dataframe is shown below:

js<-'{
"name": null, "release_date_local": null, "title": "3 (2011)",
"opening_weekend_take": 1234, "year": 2011, "release_date_wide": "2011-09-16", "gross": 59954 }'

mydf <- fromJSON(js)
mydf

Here the given Jason is stored in variable named js.
fromJSON() function is used for the parsing the data into dataframe.
The resultant data frame is stored in mydf.

3.	Write a script for Variable Binning using R.

Binning is the process of transforming numerical variables into categorical counterparts. 

# Writing binning() function for dividing the variable named age into 4 bins named as "group1-(1 to 25)","group2-(26 to 50)","group3-(51 to 75)","group4-(76 to 90)”

age <- c(1:90)
age

binning <- function(x)
{
  for(i in c(1:90))
  {
    ifelse(i <= 25, paste(i,"group1"),
           ifelse(i <= 50, paste(i,"group2"), 
                  ifelse(i <= 75, paste(i,"group3"),
                         paste(i,"group4"))))
    break
  }
}

binning(age)


# Example 1:Let us consider a vector consisting of values from 1 to 90 and we need to create 4 bins named "group1","group2","group3","group4”.

# VARIABLE BINNING USING cut() function

x<-c(1:90)
cut(x,4,labels=c("group1","group2","group3","group4"))

# Example 2: Import a mtcars.csv file into R-Studio and divide the variable named mpg into 5 bins named "FIRST","SECOND","THIRD","FOURTH" and "FIFTH"

library(readr)
mtcars <- read_csv("E:/munmun_acadgild/acadgild data analytics/supporting files/mtcars.csv")
mpg<- mtcars$mpg
mpg
cut(mpg,5)
cut(mpg,5,labels=c("FIRST","SECOND","THIRD","FOURTH","FIFTH"))
