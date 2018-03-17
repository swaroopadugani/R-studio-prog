# Nominal Catrgory Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# ordinal category Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
factor_survey_vector

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

#Summary() provides the overview of the content of a variable
summary(survey_vector)
summary(factor_animals_vector)

# male <- factor_survey_vector[1]
#female <- factor_survey_vector[2]
#male > female
#Warning message:
#In Ops.factor(male, female) : ‘>’ not meaningful for factors ]

# Create speed_vector
speed_vector <- c ("medium", "slow", "slow", "medium", "fast")
speed_vector

#converting speed vector to ordered factor vector
factor_speed_vector <- factor(speed_vector,ordered = T, levels = c("slow","medium","fast"))
factor_speed_vector
summary(factor_speed_vector)

da2 <- factor_speed_vector[2]
da2

da5 <- factor_speed_vector[5]
da5

da2>da5
