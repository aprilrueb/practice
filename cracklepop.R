#Write a program that prints out the numbers 1 to 100 (inclusive).
#If the number is divisible by 3, print Crackle instead of the number.
#If it's divisible by 5, print Pop. If it's divisible by both 3 and 5, print CracklePop.
numbers <- 1:100
for(i in 1:length(numbers)){
  if(numbers[i] %% 3 == 0 & numbers[i] %% 5 == 0){
    print("CracklePop")
     } else if(numbers[i] %% 5 == 0){
   print("Pop")
  } else if(numbers[i] %% 3 == 0){
   print("Crackle")
  } else{print(i)}
}
