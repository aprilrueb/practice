reading_full = 1321131112

for(j in 1:40){

  split_num = strsplit(as.character(reading_full), "")[[1]]
  unique_digit = split_num[1]
  runlength = 1
  current_num_digits = 1

  for(i in 2:length(split_num)){

    if(split_num[i] == split_num[i - 1]){

      runlength[current_num_digits] = runlength[current_num_digits] + 1

    }

    if(!(split_num[i] == split_num[i - 1])){

      current_num_digits = current_num_digits + 1
      runlength[current_num_digits] = 1
      unique_digit[current_num_digits] = split_num[i]

    }

  }

  reading <- vector()

  for(i in 1:length(unique_digit)){

    reading[((i*2)-1)] <- runlength[i]
    reading[i*2] <- unique_digit[i]

  }

  reading_full = paste0(reading, collapse = "")

}

nchar(reading_full)
