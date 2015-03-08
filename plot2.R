data1<- read.table("household_power_consumption.txt",na.strings="?",
                   sep=";", header=TRUE)

# COnvert date column to data data type
data1[,1]<-as.Date(data1[,1],"%d/%m/%Y")

# Subset data from 2007-02-01 to 2007-02-02
data2<-subset(data1,data1[,1]>="2007-02-01" & data1[,1]<="2007-02-02")

# create an array with total number of x points (1 per min for 2 days)
x<-1:length(data2[,1])

png(file="plot2.png",height=480,width=480,units="px")
plot(x,data2[,3],type="n",xaxt="n",xlab="",ylab="Global Active Power (kilowatts)")
 # Add x-axis with desire values
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))

#Make the plot

 lines(x,data2[,3])

dev.off()