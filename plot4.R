power <- read.csv(file="C://Users//cborn0//Google Drive//Coursera//household_power_consumption.txt",head=TRUE,sep=";")
power$Date <- as.Date(power$Date, "%d/%m/%Y")
power <- power[power$Date == as.Date("2007-02-01") | power$Date == as.Date("2007-02-02"),]
power$Global_active_power <- as.numeric(as.character((power$Global_active_power)))

power$Sub_metering_1 <- as.numeric(as.character((power$Sub_metering_1)))
power$Sub_metering_2 <- as.numeric(as.character((power$Sub_metering_2)))
power$Sub_metering_3 <- as.numeric(as.character((power$Sub_metering_3)))


par(mfcol = c(2,2))

# 1,1  plot2
plot(as.POSIXct(paste(power$Date, power$Time), format="%Y-%m-%d %H:%M:%S"), power$Global_active_power,  type="l", ylab = "Global Active Power (kilowatts)", xlab ='')

#2,1 plot3

plot(as.POSIXct(paste(power$Date, power$Time), format="%Y-%m-%d %H:%M:%S"), power$Sub_metering_1,  type="l", ylab = "Energy sub metering", xlab ='')
lines(as.POSIXct(paste(power$Date, power$Time), format="%Y-%m-%d %H:%M:%S"), power$Sub_metering_2,  type="l", ylab = "Energy sub metering", xlab ='', col = 'red')
lines(as.POSIXct(paste(power$Date, power$Time), format="%Y-%m-%d %H:%M:%S"), power$Sub_metering_3,  type="l", ylab = "Energy sub metering", xlab ='', col = 'blue')

legend("topright" , legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1),  col=c("black", "blue","red")) 

#1,2  Voltage vs. DateTime

plot(as.POSIXct(paste(power$Date, power$Time), format="%Y-%m-%d %H:%M:%S"), power$Voltage,  type="l", ylab = "Voltage", xlab ='datetime')


# 2,2 Global Reactive Power vx. DateTime

plot(as.POSIXct(paste(power$Date, power$Time), format="%Y-%m-%d %H:%M:%S"), power$Global_reactive_power,  type="l", ylab = "Global_reactive_power", xlab ='datetime')