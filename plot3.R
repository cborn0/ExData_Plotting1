power <- read.csv(file="C://Users//cborn0//Google Drive//Coursera//household_power_consumption.txt",head=TRUE,sep=";")
power$Date <- as.Date(power$Date, "%d/%m/%Y")
power <- power[power$Date == as.Date("2007-02-01") | power$Date == as.Date("2007-02-02"),]
power$Global_active_power <- as.numeric(as.character((power$Global_active_power)))
power$Sub_metering_1 <- as.numeric(as.character((power$Sub_metering_1)))
power$Sub_metering_2 <- as.numeric(as.character((power$Sub_metering_2)))
power$Sub_metering_3 <- as.numeric(as.character((power$Sub_metering_3)))



plot(as.POSIXct(paste(power$Date, power$Time), format="%Y-%m-%d %H:%M:%S"), power$Sub_metering_1,  type="l", ylab = "Energy sub metering", xlab ='')
lines(as.POSIXct(paste(power$Date, power$Time), format="%Y-%m-%d %H:%M:%S"), power$Sub_metering_2,  type="l", ylab = "Energy sub metering", xlab ='', col = 'red')
lines(as.POSIXct(paste(power$Date, power$Time), format="%Y-%m-%d %H:%M:%S"), power$Sub_metering_3,  type="l", ylab = "Energy sub metering", xlab ='', col = 'blue')