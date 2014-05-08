# Exploratory Data Analysis
# Course Project 1
# Plot 4

# get the data
source("get_data.R")
data <- get_data()

# open graphics device
png("plot4.png")  # defaults to width 480 and height 480

# make the plot
par(mfrow=c(2,2))
plot(data$Time, data$Global_active_power, type="l",
     xlab="", ylab="Global Active Power (kilowatts)")

plot(data$Time, data$Voltage, type="l",
     xlab="datetime", ylab="Voltage")

plot(data$Time, data$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(data$Time, data$Sub_metering_2, col="red")
lines(data$Time, data$Sub_metering_3, col="blue")
legend("topright",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1, bty="n")

plot(data$Time, data$Global_reactive_power, type="l",
     xlab="datatime", ylab="Global_reactive_power")

par(mfrow=c(1,1))

# close graphics device
dev.off()
