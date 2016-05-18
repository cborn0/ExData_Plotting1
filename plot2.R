power <- read.csv(file="C://Users//cborn0//Google Drive//Coursera//household_power_consumption.txt",head=TRUE,sep=";")
power$Date <- as.Date(power$Date, "%d/%m/%Y")
power <- power[power$Date == as.Date("2007-02-01") | power$Date == as.Date("2007-02-02"),]
power$Global_active_power <- as.numeric(as.character((power$Global_active_power)))



hist(power$Global_active_power,main = "Global Active Power" ,xlab = "Global Active Power (kilowatts)", col = "red", breaks = 11)

plot(as.POSIXct(paste(power$Date, power$Time), format="%Y-%m-%d %H:%M:%S"), power$Sub_metering_1,  type="l", ylab = "Energy sub metering", xlab ='')
plot(as.POSIXct(paste(power$Date, power$Time), format="%Y-%m-%d %H:%M:%S"), power$Sub_metering_1,  type="l", ylab = "Energy sub metering", xlab ='')
plot(as.POSIXct(paste(power$Date, power$Time), format="%Y-%m-%d %H:%M:%S"), power$Sub_metering_2,  type="l", ylab = "Energy sub metering", xlab ='', color = 'red')