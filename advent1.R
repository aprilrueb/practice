santa <- "((()"
santas <- strsplit(santa, split="")[[1]]
up <- grepl("(", santas, fixed=TRUE)
down <- grepl(")", santas, fixed=TRUE)
floor <- sum(up)-sum(down)
