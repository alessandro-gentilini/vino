df <- read.csv("vini.csv",header=TRUE,sep=",")
df$Link.to.wine <- NULL
df$Label.image <- NULL
write.table(df,"vini.csv",sep=",")