library(proton)

#get the login
grep("Insecure", employees$surname)
grep("John", employees$name)
johns_login <- employees[217,3]
proton(action = "login", login="johnins")

#get the password
for(i in 1:1000){
  proton(action = "login", login="johnins", password=top1000passwords[i])
}

#get server info
#this doesn't work
hosts <- table(logs$host)
hosts_ordered <- hosts[order(hosts, decreasing = TRUE)]

#this does work
logins = names(table(logs$login))
logins[grep("sla", logins)]
slap_login <- grep("slap", logs$login)
slap_df <- logs[slap_login, ]
slap_hosts <- table(slap_df$host)
slap_hosts_ordered <- slap_hosts[order(slap_hosts, decreasing = TRUE)]
proton(action = "server", host="194.29.178.16")
