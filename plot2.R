# Exploratory Data Analysis
# Course Project 1
# Plot 2

# get the data
source("get_data.R")
data <- get_data()

# open graphics device
png("plot2.png")  # defaults to width 480 and height 480

# make the plot
plot(data$Time, data$Global_active_power, type="l",
     xlab="", ylab="Global Active Power (kilowatts)")

# close graphics device
dev.off()


