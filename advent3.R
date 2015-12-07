santa <- read.table("advent3.txt")
moves <- as.character(santa[1,1])
map <- matrix(0, nrow=10000, ncol=10000)
x <- 5000
y <- 5000
map[x,y] <- 1
moves <- strsplit(moves, split="")[[1]]
for(move in moves){
  if(move == "^"){
    x <- x+1
  }
  if(move == ">"){
    y <- y+1
  }
  if(move == "v"){
    x <- x-1
  }
  if(move == "<"){
    y <- y-1
  }
  map[x,y] <- 1
}
houses <- sum(map)
