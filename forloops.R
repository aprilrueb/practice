#Write a program that displays the number 0 to 5 using a for loop
print(0)
print(1)
print(2)
print(3)
print(4)
print(5)

for(i in 0:5){
  print(i)
}

#Write a for loop that will iterate from 1 to 10. For each iteration of the loop, it will multiply the number by 9 and prnt the result.
for(i in 1:10){
  print(i*9)
}

#assign it to a vector using subsetting-assign
times9 <- vector()
for(i in 1:10){
  times9[i] <- i*9
}
print(times9)

#Write a loop to assign a letter grade using a character vector to every corresponding number, in a vector of random numbers between 1 and 100.
#Use the standard grading scheme (less than 60 is F, 60-69 D, 70-79 C, 80-89 B, 90-100 A)

number_grades <- floor(runif(100, 0, 100))

#first for loop way
for(i in number_grades){
  print(i)
}

A <- 0
B <- 0
C <- 0
D <- 0
F <- 0
for(i in number_grades){
  print("the next number is going to be the actual number grade")
  print(i)
  if(i < 60){
    print("F assigned")
    print(F)
    F <- F + 1
    print(F)
  }
  if(i >= 60 & i <= 69){
    D <- D + 1
  }
  if(i >= 70 & i <= 79){
    C <- C + 1
  }
  if(i >= 80 & i <= 89){
    B <- B + 1
  }
  if(i >= 90){
    A <- A + 1
  }
}
print(A)
print(B)
print(C)
print(D)
print(F)

#second for loop way
for(i in 1:length(number_grades)){
  print(i)
  print(number_grades[i])
}

#using second for loop
character_grades <- vector()
for(i in 1:length(number_grades)){
  if(number_grades[i] < 60){
    character_grades[i] <- "F"
  }
  if(number_grades[i] >= 60 & number_grades[i] <= 69){
    character_grades[i] <- "D"
  }
  if(number_grades[i] >= 70 & number_grades[i] <= 79){
    character_grades[i] <- "C"
  }
  if(number_grades[i] >= 80 & number_grades[i] <= 89){
    character_grades[i] <- "B"
  }
  if(number_grades[i] >= 90){
    character_grades[i] <- "A"
  }
}
