#This is the code for the plot 4 of Week 1 Exploratory Data Analysis Project
data1$Voltage <- as.numeric(data1$Voltage)
data1$Global_reactive_power <- as.numeric(data1$Global_reactive_power)
#Setup 2x2 table for 4 graphs
par(mfrow=c(2,2))
#Plot the 4 graphs
with(data1, plot(Full, Global_active_power, type="l", xlab="Date", ylab="Global Active Power (kilowatts)"))
with(data1, plot(Full, Voltage, type="l", xlab="datetime", ylab="Voltage"))

with(data1, plot(Full, Sub_metering_1, type="l", xlab="Date", ylab="Energy sub metering"))
lines(Full$Full, Full$Sub_metering_2,type="l", col= "red")
lines(Full$Full, Full$Sub_metering_3,type="l", col= "blue")
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=1,lwd=2,col=c('black','blue','red'))
with(data1, plot(Full, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power"))

#Save the file to plot4.png
dev.copy(png,file='plot4.png')
dev.off()





