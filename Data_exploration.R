#About the dataset

#This dataset was obtained from Kaggle https://www.kaggle.com/datasets/ulrikthygepedersen/fastfood-nutrition/data
#It contains a breakdown of the nutritional content of various fast food chains


#The aim is to explore this data hoping to gain insight into its content 

#load required libraries
library(dplyr)
library(tidyverse)
library(ggplot2)

#load the dataset
fast_food_df <- read_csv("data/fastfood.csv")

#check data dimension
dim(fast_food_df)

#Data contains 17 columns and 515 rows

#What are the column names
colnames(fast_food_df)

#There is a column called "restaurant"
#Using a histogram, the restaurant names are explored

ggplot(fast_food_df,
       aes(restaurant, fill = restaurant)) +
  geom_bar()+ #plot bar chart of the restaurants
  ggtitle("Distribution of fastfood chains in the data")+
  theme(plot.title = element_text(hjust = 0.5), #center the title
        axis.text.x = element_text(size = 10, angle = 90)) #make the x axis labels easily readable by slanting to 90 degrees


#I have a likeness for Burger King
#Let me extract Buurger King data into a dataframe and explore it

B_king <- fast_food_df %>%
  filter(restaurant == "Burger King")

#What are the items in Burger King menu
unique(B_king$item)



#Which row  item with the highest calories in Burger King menus
which.max(fast_food_df$calories)
which.max(B_king$calories)

#The food iwith the maximun calories in the full dataframe is on row 40

#The row with the max calorie in the Burger King data frame is on row 1


#check if they are same
max_cal_full <- fast_food_df[40,]

max_cal_BK <- B_king[1, ]

#American BrewHouse King is the item with highest calories


