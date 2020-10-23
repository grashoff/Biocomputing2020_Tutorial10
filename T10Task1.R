# convert text file into dataframe table
alldata <- read.table("UWvMSU_1-22-13.txt", header = TRUE, sep="")

# split big dataframe into two smaller ones that have individual scores for UW and MSU
UW <- alldata[alldata[,2]=="UW",]
MSU <- alldata[alldata[,2]=="MSU",]

# convert the UW dataframe into one that has cumulative scores
temp <- 0
for (i in 1:nrow(UW))
{
  
  UW[i,3] <- temp + UW[i,3]
  temp <- UW[i,3]
}

# convert the MSU dataframe into one that has cumulative scores
temp2 <- 0
for (i in 1:nrow(MSU))
{
  
  MSU[i,3] <- temp2 + MSU[i,3]
  temp2 <- MSU[i,3]
}

# create a line plots with time played vs points scored for both schools
plot(UW[,1], UW[,3], type="l", col = "red", xlab = "Time Played", ylab = "Total Points Scored")
lines(MSU[,1], MSU[,3], col = "green")
