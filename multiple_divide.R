#multiply all of the numbers from 1 to 150. then, divide that number by all of the numbers from 1 to 100. print out the result.

total <- 1
for(i in 1:150){
  total <- i * total
}
total

total
for(i in 1:100){
  total <- total / i
}
total
