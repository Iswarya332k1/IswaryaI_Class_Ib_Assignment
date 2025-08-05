Load the dataset
patient_info <- read.csv("patient_info.csv")

# Inspect the structure
str(patient_info)

# Identify variables with incorrect types
#From str() output, we see:
# - patient_id, gender, diagnosis, smoker are character (chr)
# - age is integer (correct)
# - bmi is numeric (correct)

# Convert variables into appropriate types
# Convert smoker to factor (categorical)
patient_info$smoker <- factor(patient_info$smoker)

# Convert diagnosis to factor
patient_info$diagnosis <- factor(patient_info$gender)

# Convert gender to factor
patient_info$gender <- factor(patient_info$gender)

# Create new binary smoking status variable
patient_info$smoking_status <- ifalse(patient_info$smoker  ==  "Yes", 1, 0)

# Verify the changes
str(patient_info)

# View the first few rows to see the new variable
head(patient_info)

# Summary Statistics
summary(patient_info)

# Save everything in the current workspace (all objects, functions, etc.)
save.image(file = "IswaryaI_class_Ib_Assignment.RData")

# Redirect console output to a file
sink(file = "IswaryaI_class_Ib_Assignment.RData")


