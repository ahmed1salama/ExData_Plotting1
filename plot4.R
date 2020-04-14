library(dplyr)

data = read.table("household_power_consumption.txt", sep = ";" ,header = TRUE , stringsAsFactors=FALSE)

data = data[data$Date %in% "1/2/2007" | data$Date %in% "2/2/2007",]

time <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")  


#png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(time, as.numeric(data$Global_active_power), type="l", xlab="day", ylab="Global Active Power" , cex =0.2)

plot(time, as.numeric(data$Voltage), type="l", xlab="datetime", ylab="voltage")

plot(time, as.numeric(data$Sub_metering_1) , ylab = "Energy sub metering" ,  xlab = "" , col = "black", type="l")
lines(time,as.numeric(data$Sub_metering_2), col = "red",type= "l")
lines(time,as.numeric(data$Sub_metering_3) , col = "blue" , type = "l") 
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3") , col = c("black","red","blue"), lwd=2)

plot(time, as.numeric(data$Global_reactive_power), type="l", xlab="datetime", ylab="Global_reactive_Power")

#dev.off
