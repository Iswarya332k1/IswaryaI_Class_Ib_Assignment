# Topic:
# Syntax in R
# 1. Variables
# 2. Comments
# 3. Keywords

# Variables
# stores values in R
# <- assignment operator

# gene name "TP53"

gene <- "TP53"

# to retrieve value in console
gene

print(gene)

# 2.3, 4.6, 3.6, 7.2, 4.7
# to store these values in one variable

expression_levels <- c(2.3, 4.6, 3.6, 7.2, 4.7)

# To import data as variable
raw_data <- read.csv(file.choose())
raw_data


# Rules 

# variable name must be start with letter
1gene <- 25 # variable name can't start with number

gene1 <- 25 # add number at the end

# no spaces allowed variable name
sample id <- "s01"

# instead of spaces use underscore (_) or dot
sample_id <- "s01"
sample.id <- "s02"

# R is case sensitive
Glucose_level <- 110

glucose_level <- 110

# R overwrites variable without any warnings
Glucose_level <- c(110, 90, 120)

data <- raw_data #create a copy of my raw_data

raw_data$patient_id <- NULL #this code will remove patient_id column

raw_data

# for data cleaning and transforming create a variable for that data

clean_data <- data[,-1]
# this code deleted the patient_id column & it assign a new variable

# comments
# help to understand your code
# comments are for our own understandings R doesn't consider it as a code
# data_2 <- 23
data_2 <- 23

# pro tip: turn comments into headings
#### Heading 1 ####
#### Heading 2 ####

# Keywords
# These are reserved words in for specific functions
# if, else, TRUE, FALSE, for so on.......

help("reserved")
help(mean)
?median

# sort values from largest to smallest
sorted_age <- sort(raw_data$age, decreasing = TRUE) 
sorted_age 
raw_data$age

# sort values from smallest to largest
sorted_age2 <- sort(raw_data$age, decreasing = FALSE)
sorted_age2

# if & else, which are used for creating logical conditions

gene_expression <- 30

if(gene_expression > 25) {
  print ("Gene is highly expressed")
}

# here if is the keyword that check the condition if gene expression > 25
# condition is true in this case
# in case if the condition is false
if(gene_expression > 25) {
  print ("Gene is highly expressed")
}else {
  print ("gene expression is low")
}  

#You can't use keywords as variable name
if <- 28 

# for loop: used to repeat same tasks multiple times
# let say we want to convert data type of multiple in of our
str(raw_data)
# gender is categorical data type
# It should be in a factor format
# Gender column from chr to factor
# diagnosis: cancer/normal it is also a categorical variable
# smoker: chr from factor

# Instead of manually conversion we will use this for loop function for automatics conversion of all these three columns with one line of a command

# To convert raw_data column into factor
# I want to save output in clean_data

# Create a copy of raw_data with name clean_data
clean_data <- raw_data
str(clean_data)

# to convert column automatically into a factor
# create for loop function
for (i in 1:ncol(clean_data)) {
  if.(is character(clean_data[[1]])){
    clean_data[[i]] <- as.factor(clean_data[[i]])
  }
  
  
}

For (variable in vector) {
  
}

str(clean_data)
str(raw_data)

cholesterol <- 230

# If TRUE, print the message "high cholesterol"
if (cholesterol > 230) {
  print ("high cholesterol")
}

# If FALSE, nothing happens there is no else block
if (cholesterol > 240) {
  print ("high cholesterol")
}

Systolic_bp <- 130

if (Systolic_bp < 120) {
  print ("Blood Pressure is normal")
} else {
  print ("Blood Pressure is high")
}

str(raw_data)

clean_data <- raw_data
str(clean_data)

#To get a copy of clean_data
clean_data_copy <- clean_data

#To convert all the columns in factor_cols to factor type
factor_cols <- c("gender", "smoker", "diagnosis")

for (col in factor_cols) {
  if (is.character(clean_data_copy[[col]])) {
    clean_data_copy[[col]] <- as.factor(clean_data_copy[[col]])
  }
}

binary_cols <- c("smoker", "diagnosis") #store column names in vector

#To convert smoker, diagnosis, gender into numeric 
clean_data_copy$diagnosis <- as.numeric(clean_data_copy$diagnosis == "Cancer")

clean_data_copy$smoker <- as.numeric(clean_data_copy$smoker == "Yes")

clean_data_copy$gender <- as.numeric(clean_data_copy$gender == "Male")

#Compare the original and modified data sets to confirm changes
str(clean_data_copy)
str(raw_data)

--------------------------------------------------------------------------------

# To import data as variable
metadata <- read.csv(file.choose())
metadata

# Create a copy of my metadata
metadata_copy <- metadata

metadata_copy$name <- NULL #this code will remove name column

metadata_copy

# This code deleted the name column and it assign a new variable
metadata_copy <- metadata [,-1]

# Convert gender into numeric (1 for Yes, 0 for No)
metadata_copy$gender <- as.numeric(metadata_copy$gender == "Male")

# Convert height into numeric (0 for short, 1 for medium, 2 for tall)
metadata_copy$height <- ifelse(metadata_copy$height == "Tall", 2,
                                       ifelse(metadata_copy$height == "Medium", 1, 0))

str(metadata_copy) #View modified data
str(metadata) #View original data

--------------------------------------------------------------------------------

