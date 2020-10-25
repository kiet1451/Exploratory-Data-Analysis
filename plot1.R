#This is the code for the plot 1 of Week 1 Exploratory Data Analysis Project
#Retreive data from household_power_consumption.txt
data <- read.table('household_power_consumption.txt',stringsAsFactors = F, header=T,sep = ";")
head(data)
#Set up the Date and Time
data$Date <- strptime(data$Date,format="%d/%m/%Y")
data$Time <- format(data1$Time, format="%H:%M:%S")
head(data1)
#Merge Date and Time to a new variable Full and bind to the new data table Full
Full <- (paste(data$Date, data$Time, sep=" ")
Full <- cbind(data, Full)
#Filter Data with Date between 2007-02-01 and 2007-02-02 and plot a historam          
data1 <- subset(data, Date >= '2007-02-01' & Date <= '2007-02-02')
data1$Global_active_power <- as.numeric(data1$Global_active_power)
hist(data1$Global_active_power, col ='green', xlab= 'Global Active Power (kilowatts)', ylab= 'Frequency', main = 'Global Active Power')

#Save the graph to the plot1.png file
dev.copy(png,file='plot1.png')
dev.off()
         