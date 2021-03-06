library(dplyr)

data = read.table("household_power_consumption.txt", sep = ";" ,header = TRUE , stringsAsFactors=FALSE)

data = data[data$Date %in% "1/2/2007" | data$Date %in% "2/2/2007",]

png("plot1.png", width=480, height=480)
hist(as.numeric(data$Global_active_power), col = "red" , xlab = "Global Active Power (kilowatts)" , 
     main = "Global Active Power")
dev.off()
