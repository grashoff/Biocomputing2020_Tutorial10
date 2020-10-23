alldata <- read.table("UWvMSU_1-22-13.txt", header = TRUE, sep="")
UW <- alldata[alldata[,2]=="UW",]
MSU <- alldata[alldata[,2]=="MSU",]

temp <- 0
for (i in 1:nrow(UW))
{
  
  UW[i,3] <- temp + UW[i,3]
  temp <- UW[i,3]
}
temp2 <- 0
for (i in 1:nrow(MSU))
{
  
  MSU[i,3] <- temp2 + MSU[i,3]
  temp2 <- MSU[i,3]
}
plot(UW[,1], UW[,3], type="l", col = "red", xlab = "Time Played", ylab = "Total Points Scored")
lines(MSU[,1], MSU[,3], col = "green")
