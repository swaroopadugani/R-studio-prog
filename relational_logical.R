# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15

# Quiet days
linkedin <= 5

# LinkedIn more popular than Facebook
linkedin > facebook

#matrix 
views <- matrix(c (linkedin,facebook),nrow = 2, byrow = T)

#When were the views exactly equal to 13? Use the views matrix to return a logical matrix.
views == 13

#For which days were the number of views less than or equal to 14? Again, have R return a logical matrix.
views <= 14

last <- tail(linkedin,1)
#Is last under 5 or above 10?
last < 5 | last > 10

#Is last between 15 and 20, excluding 15 but including 20?
last > 15 & last <= 20

#When did LinkedIn views exceed 10 and did Facebook views fail to reach 10 for a particular day? Use the linkedin and facebook vectors.
linkedin > 10 & facebook <10

# The social data (linkedin, facebook, views) has been created for you
linkedin > 10 & facebook != 10

#When were one or both of your LinkedIn and Facebook profiles visited at least 12 times?
linkedin >= 12 | facebook >=12

#When is the views matrix equal to a number between 11 and 14, excluding 11 and including 14?
views > 11 & views <= 14

#Select the entire second column, named day2, from the li_df data frame as a vector and assign it to second.
second <- c(li_df$day2)
second

#Use second to create a logical vector, that contains TRUE if the corresponding number of views is strictly greater than 25 or strictly lower than 5 and FALSE otherwise. Store this logical vector as extremes.
second <- c(li_df$day2)
second

#Build a logical vector, TRUE if value in second is extreme: extremes
extreme <- c(second > 25 | second <5)
extreme

#Use sum() on the extremes vector to calculate the number of TRUEs in extremes (i.e. to calculate the number of employees that are either very popular or very low-profile). Simply print this number to the console.
"Count the number of TRUEs in extremes"
a <- sum(extreme)

"Solve it with a one-liner"
a
