#Using data analytical superpower for gambling 

#Collecting winnings and losses for the past week

#Poker winning
poker <- c(140, -50, 20, -120, 240)

#Roullete winning
roulette <- c(-24, -50, 100, -350, 10) 

#names() function used to name the elements of vector
days <- c("mon", "tue", "wed", "thu", "fri")

#names(poker) <- c("mon", "tue", "wed", "thu", "fri")
#names(roulette) <- c("mon", "tue", "wed", "thu", "fri")

names(poker) <- days
names(roulette) <- days

poker
roulette

#test_case1
#analysis of total winnings and loss per day
#summing of two vectors
total_win_loss <- poker + roulette
total_win_loss


#test_case2
#analysis of overall winnings 
#sum() : calculates the sum of all the elemnts of the vector
total_poker <- sum(poker)
total_roulette <- sum(roulette)
overall_win <- total_poker + total_roulette
print("overall win") 
overall_win
#check for highest gain of two games
total_poker > total_roulette

#vector_indexing
poker_wed <- poker[3]
poker_wed

#test_case3
#analysing mid_week results of poker and roulette (tue,wed,thu)
mid_week_poker <- poker[c(2:4)]
mid_week_roulette <- roulette[c(2:4)]
mid_week_poker
mid_week_roulette

#Calculate the avarage gambling of mon,tue and wed in poker
poker_3days_avg <- poker[c("mon","tue","wed")]
roulette_3days_avg <- roulette[c("mon","tue","wed")]
avg_poker <- mean(poker_3days_avg)
avg_poker
avg_roulette <- mean(roulette_3days_avg)
avg_roulette

#To identify which days did you make money in poker and roullet
profit_day_poker <- c(poker) > 0
profit_day_poker
amount_won_poker <- poker[profit_day_poker]
amount_won_poker

profit_day_roulette <- c(roulette) >0
profit_day_roulette
amount_won_roullet <- roulette[profit_day_roulette]
amount_won_roullet
