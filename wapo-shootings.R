wapo <- read.table("wapo.csv", sep = ",",quote = "")
colnames(wapo) <- wapo[1, ]
wapo = wapo[-1, ]


############################
# plot a map of the percent unarmed killed by the police in each state

states = names(table(wapo$state))
states = states[states != "HI"]
states = states[states != "AK"]

percent_unarmed_state = vector()
for(i in 1:length(states)){
  state = wapo[wapo$state == states[i], ]
  print(states[i])

  unarmed = sum(state$armed == "unarmed")
  percent_unarmed = unarmed/length(state$armed)
  percent_unarmed_state[i] = percent_unarmed
  print(unarmed)
  print(length(state$armed))
}

state_format = c("alabama", "arkansas", "arizona", "california", "colorado",
"connecticut", "district of columbia", "delaware",  "florida",
"georgia",  "iowa", "idaho", "illinois", "indiana", "kansas",
"kentucky", "louisiana", "massachusetts",  "maryland", "maine",
"michigan", "minnesota", "missouri", "mississippi",  "montana",
"north carolina", "north dakota", "nebraska",   "new hampshire",
"new jersey", "new mexico",  "nevada",
"new york",  "ohio", "oklahoma",
"oregon", "pennsylvania", "south carolina", "south dakota",
"tennessee", "texas", "utah", "virginia", "vermont",  "washington",
"wisconsin", "west virginia", "wyoming") #

unarmed_df = data.frame(states, percent_unarmed_state, state_format)

states_map <- map_data("state")
ggplot(unarmed_df, aes(map_id = state_format)) +
    geom_map(aes(fill = percent_unarmed_state), map = states_map) +
    scale_fill_gradientn(colours=c("blue","green","yellow","red")) +
    expand_limits(x = states_map$long, y = states_map$lat) + theme_bw()

unarmed_df[order(unarmed_df$percent_unarmed_state, decreasing = TRUE), ]

armed_gun <- wapo[wapo$armed == "gun", ]
armed_gun_age <- armed_gun$age
armed_gun_age <- as.numeric(armed_gun_age)
mean(armed_gun_age, na.rm=TRUE)
