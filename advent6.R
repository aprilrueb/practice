instructions <- read.table("/Users/April/Desktop/Programming/Advent/advent6.txt")
map <- matrix(0,nrow=1000,ncol=1000)
for(i in 1:nrow(instructions)){
  row <- instructions[i, ]
  instruction <- as.character(row$V1)
  sub_1 <- as.character(row$V2)
  sub_1 <- as.numeric(strsplit(sub_1, ",", fixed = TRUE)[[1]])
  sub_2 <- as.character(row$V4)
  sub_2 <- as.numeric(strsplit(sub_2, ",", fixed = TRUE)[[1]])
  #add one bc R indexes from 1, not 0
  x <- (sub_1[1]+1):(sub_2[1]+1)
  y <- (sub_1[2]+1):(sub_2[2]+1)
  if(instruction == "turnon"){
    map[x,y] <- 1
  }
  if(instruction == "turnoff"){
    map[x,y] <- 0
  }
  if(instruction == "toggle"){
    map[x,y] <- 1 - map[x,y]
  }
}
