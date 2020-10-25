#This is the code for the plot 3 of Week 1 Exploratory Data Analysis Project
data1$Sub_metering_1 <- as.numeric(data1$Sub_metering_1)
data1$Sub_metering_2 <- as.numeric(data1$Sub_metering_2)
data1$Sub_metering_3 <- as.numeric(data1$Sub_metering_3)
#Plot the Energy sub metering on Date
with(data1, plot(Full, Sub_metering_1, type="l", xlab="Date", ylab="Energy sub metering"))
lines(Full$Full, Full$Sub_metering_2,type="l", col= "red")
lines(Full$Full, Full$Sub_metering_3,type="l", col= "blue")
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=1,lwd=2,col=c('black','blue','red'))
#Save the file to plot3.png file
dev.copy(png,file='plot3.png')
dev.off()