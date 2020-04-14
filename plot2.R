library(dplyr)

data = read.table("household_power_consumption.txt", sep = ";" ,header = TRUE , stringsAsFactors=FALSE)

data = data[data$Date %in% "1/2/2007" | data$Date %in% "2/2/2007",]

time <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)
plot(time, as.numeric(data$Global_active_power), type="l", xlab="day", ylab="Global Active Power (kilowatts)")
dev.off()
