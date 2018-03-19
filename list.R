# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Adapt list() call to give the components names
my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("vec","mat","df")

# Print out my_list
my_list

# Print out the vector representing the mat
my_list[["mat"]]

# Print the second element of the vector representing the df
my_list$df[[1]]

my_list$df$qsec[[1]]

# We forgot something; add the year to my_list
my_comp_list <- c(my_list$df,year =2013)
my_comp_list
