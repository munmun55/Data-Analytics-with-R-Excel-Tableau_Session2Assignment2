# Session 2 Assignment 2 by Munmun Ghosal


# 3. Write a script for Variable Binning using R.


#Writing binning() function for dividing the variable named age into 4 bins named as "group1-(1 to 25)","group2-(26 to 50)","group3-(51 to 75)","group4-(76 to 90)"
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

# Example 1:Let us consider a vector consisting of values from 1 to 90 and we need to create 4 bins named "group1","group2","group3","group4".
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


