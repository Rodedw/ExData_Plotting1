
data1<- read.table("household_power_consumption.txt",na.strings="?",
                   sep=";", header=TRUE)

# COnvert date column to data data type
data1[,1]<-as.Date(data1[,1],"%d/%m/%Y")

# Subset data from 2007-02-01 to 2007-02-02
data2<-subset(data1,data1[,1]>="2007-02-01" & data1[,1]<="2007-02-02")

png(file="plot1.png",height=480,width=480,units="px")

hist(data2[,3],col="red",xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()