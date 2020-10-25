#This is the code for the plot 2 of Week 1 Exploratory Data Analysis Project
#Plot Global Active Power
with(data1, plot(Full, Global_active_power, type="l", xlab="Date", ylab="Global Active Power (kilowatts)"))
#Save the file to plot2.png
dev.copy(png,file='plot2.png')
dev.off()