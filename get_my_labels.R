df <- read.csv("vini.csv",header=TRUE,sep=",")
df$timestamp <- as.POSIXlt(df$Scan.date, "%Y-%m-%d %H:%M")
df$timestamp <- strftime(df$timestamp , "%Y-%m-%dT%H%M")
df$id<-seq(1,nrow(df))
df$labels<-sprintf("%s_%s_%s_sd_%s.jpg",df$id,df$Wine.name,df$Vintage,df$timestamp)

for(i in seq(1,nrow(df))){
  #download.file(as.character(df[i,]$Label.image),df[i,]$labels,"wget")
  #Sys.sleep(0.5)
}
write.table(df,"vini.csv",sep=",",row.names = FALSE)