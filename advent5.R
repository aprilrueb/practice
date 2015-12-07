santalist <- read.table("/Users/April/Desktop/Programming/Advent/advent5.txt")
santalist <- as.character(santalist[,1])
nice <- 0
for(bub in santalist){
  vowels = 0
  split_bub <- strsplit(bub, split = "")[[1]]
  num_a <- length(grep("a", split_bub))
  num_e <- length(grep("e", split_bub))
  num_i <- length(grep("i", split_bub))
  num_o <- length(grep("o", split_bub))
  num_u <- length(grep("u", split_bub))
  vowels <- vowels + num_a + num_e + num_i + num_o + num_u
  double_letters <- paste0(letters, letters)
  double_letter_flag <- FALSE
  for(combo in double_letters){
    if(grepl(combo, bub)){
      double_letter_flag <- TRUE
    }
  }
  bad_strings <-  c("ab", "cd", "pq", "xy")
  bad_strings_flag <- TRUE
  for(combo in bad_strings){
    if(grepl(combo, bub)){
      bad_strings_flag <- FALSE
    }
  }
  # print(bub)
  if(vowels >= 3 & double_letter_flag == TRUE & bad_strings_flag == TRUE){
    nice <- nice+1
    # print("nice")
  }
}
