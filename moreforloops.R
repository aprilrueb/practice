#write a program that prints the squares of even numbers between 1 and 20

numbers <- 1:20
even <- numbers[numbers %% 2 == 0]
for(i in even){
    print(i^2)
}

#randomly generate 10 numbers between 0 and 50
# < 25, print out square root
# >= 25, print out square

numbers <- runif(10, 0, 50)
for(i in numbers){
  if(i < 25){
    print(sqrt(i))}
  else if( i >= 25){
    print(i^2)
  }
}

#write a program to calculate the sum of 1+2+3... up to 300
#display the total after every 20 terms

total <- 0
for(i in 1:300){
  total <- i + total
  if(i %% 20 == 0){
    print(total)
  }
}
