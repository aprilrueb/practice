elf <- read.table("advent2real.txt", sep = "x")
feet <- 0
for(i in 1:nrow(elf)){
  p <- elf[i, ]
  a <- p[1]*p[2]
  b <- p[1]*p[3]
  c <- p[2]*p[3]
  shortest <- min(a,b,c)
  total <- 2*a+2*b+2*c+shortest
  feet <- feet + total 
}
