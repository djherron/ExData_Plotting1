# Exploratory Data Analysis
# Course Project 1
# Plot 3

# get the data
source("get_data.R")
data <- get_data()

# open graphics device
png("plot3.png")  # defaults to width 480 and height 480

# make the plot
plot(data$Time, data$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(data$Time, data$Sub_metering_2, col="red")
lines(data$Time, data$Sub_metering_3, col="blue")
legend("topright",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1)

# close graphics device
dev.off()
