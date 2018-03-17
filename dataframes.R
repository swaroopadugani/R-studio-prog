# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name,type,diameter,rotation,rings)
planets_df


# check the structure of data frame
str(planets_df)

#fetch the rotation of jupitar
planets_df[5,4]

#print the data for neptune
planets_df[8,]

#fetch type of saturn
planets_df[6,2]

#select last 5 values of rotaton column
planets_df[4:8,"rotation"]

#selecting entier column diameter
diameter_vector <- planets_df$diameter
diameter_vector

#fetch the plant names which have rings
planets_df[rings,]

#fetch the plant names which do not have rings
without_rings <- subset(planets_df, subset = !(rings) )
without_rings

# Select planets with diameter < 1
subset(planets_df,subset = diameter <1 )

"order() is a function that gives you the ranked 
position of each element when it is applied on a variable"
a <- c ("B","C","A")
order(a)
a[order(a)]

a <- c (1992,1900,1983,1972,1930)
order(a)
a[order(a)]

# planets_df is pre-loaded in your workspace
planets_df
# Use order() to create positions
positions <- order(planets_df$diameter) 
positions
# Use positions to sort planets_df
planets_df[positions,]
