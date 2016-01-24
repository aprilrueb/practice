#take this string and count the number of characters in it, spaces not included
string = "romeo loves juliet"
love <- "romeo loves juliet"
truelove <- gsub(" ", "", love, fixed = TRUE)
hearts <- strsplit(truelove, "")[[1]]
length(hearts)
