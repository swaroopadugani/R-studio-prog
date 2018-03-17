#matrix
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

The_Phantom_Menace <- c(474.5, 552.5)
Attack_of_the_Clones <-   c (310.7,  338.7)
Revenge_of_the_Sith <-  c ( 380.3 , 468.5)

box_office <- c(new_hope, empire_strikes, return_jedi)

box_office2 <- c(The_Phantom_Menace,Attack_of_the_Clones,Revenge_of_the_Sith)

#starwars matrix
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE)
star_wars_matrix

#starwars matrix2
star_wars_matrix2 <- matrix(box_office2,nrow = 3,byrow = T)
star_wars_matrix2

#assigning row and column names (starwars_matrix)
titles <- c("new_hope", "empire_strikes","return_jedi")
region <- c("US", "Non-US")

#assigning row and column names (starwars_matrix2)
titles1 <- c("The_Phantom", "Attack_Clone","Revenge_sith")
region1 <- c("US", "Non-US")

# Name the columns with region(starwars _matrix)
colnames(star_wars_matrix) <- region
rownames (star_wars_matrix) <- titles
star_wars_matrix

# Name the columns with region(starwars _matrix2)
colnames(star_wars_matrix2) <- region1
rownames (star_wars_matrix2) <- titles1
star_wars_matrix2

# calculating the total collection of worldwide box_office
#rowSums() function is used to sum
world_wide_collection <- rowSums(star_wars_matrix)
world_wide_collection

#cbind() which merges matrices and/or vectors together by column
all_wars_collection<- cbind(star_wars_matrix,world_wide_collection) 
all_wars_collection

#rbind() Combining both the matrices(star_war_matrix,star_war_matrix2)
all_wars_matrix <- rbind(star_wars_matrix,star_wars_matrix2)
all_wars_matrix

#colsums() to calculate the total revenue 
total_revenue <- colSums(all_wars_matrix)
total_revenue

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]
non_us_all

# Average non-US revenue
mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2] 
non_us_some

# select the non-US revenue for mid four movies
non_us_mid <- all_wars_matrix[2:5,2]
non_us_mid

# Average non-US revenue for first two movies
mean(non_us_some)

# Average non-US revenue for first two movies
mean(non_us_mid)

# Select the us revenue for all movies
us_all <- all_wars_matrix[,1]
us_all

# calculate the avg of us revenue
mean(us_all)

#  Select the US revenue for first three movies
us_some <- all_wars_matrix[1:3,1]
us_some

# calculate Average US revenue for first three movies
mean(us_some)

# calculating the number of visitors (per ticket price is $5)
visitors <- all_wars_matrix / 5
visitors

# A little arithmetic with matrices
#Ticlet price matrix creation
new_hope <- c(5.0, 5.0)
empire_strikes <- c(6.0, 6.0)
return_jedi <- c(7.0, 7.0)
The_Phantom_Menace <- c(4.0, 4.0)
Attack_of_the_Clones <-   c (4.5,  4.5)
Revenge_of_the_Sith <-  c ( 4.9 , 4.9)

ticket <- c(new_hope, empire_strikes, return_jedi,The_Phantom_Menace,Attack_of_the_Clones,Revenge_of_the_Sith)

Ticket_price_matrix <- matrix(ticket, nrow = 6, byrow = TRUE)
Ticket_price_matrix

titles2 <- c("new_hope", "empire_strikes","return_jedi","The_Phantom", "Attack_Clone","Revenge_sith")
region2 <- c("US", "Non-US")

colnames(Ticket_price_matrix) <- region2
rownames (Ticket_price_matrix) <- titles2
Ticket_price_matrix

#calculating the estimated no. visiotors
visitors <- all_wars_matrix / Ticket_price_matrix
visitors

#select us visitors and calculate the avg
us_visitors <- visitors[1:6,1]
us_visitors
mean(us_visitors)
