#vectors are one dimentional arrays

#integer_array
my_numbers <- c(1,2,3,4)
my_numbers

#char_array
my_alp <-c("A","B","C")
my_alp

#boolean_vector
my_boolean <- c(T)

my_first_vec <- c(4,2,56,23,1)
is.numeric(my_first_vec)
is.integer(my_first_vec) #default all integers in vec are stored as double
is.double(my_first_vec) #hence returns true

v2 <- c ("a", "b", "c")
is.character(v2)

v3 <- c ("a", "b", "c", 7)
is.character(v3)
v3        #automatically 7 is converted into char
is.integer(v3)


seq(10,20) #sequence funtion same as :
10:20
seq(1,10,2) #more flexible to put conditons

x <- seq(1,5)
x
rep(x,8)

#vec recycling 
vec1 <- c(1,2,3,4)           "adding two uneven-size vectors provides warning
                              it copies the small vec number of times its required"
vec2 <- c(1,2,3,4,5,6,7)

add <- vec1+vec2
add
 

#R-specific programming
x <- rnorm(5)
for(i in x){
  print(i)
}  
print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])


#Conventional programming loop
x <- rnorm(5)
for(i in 1:5){
  print(x[i])
}

#... vectorized approach

N <- 1000000
a<- rnorm(N)
b<- rnorm(N)
c <- a*b
print(c)

#....devectorized approach

d <- rep(NA,N)
for(i in 1:N){
  d[i] <- a[i]*b[i]
  print(d)
}

"vectorised approach is much faster than de-vectorised"
