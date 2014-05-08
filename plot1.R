# Exploratory Data Analysis
# Course Project 1
# Plot 1

# get the data
source("get_data.R")
data <- get_data()

# open graphics device
png("plot1.png")  # defaults to width 480 and height 480

# make the plot
hist(data$Global_active_power, main="Global Active Power", col="red",
     xlab="Global Active Power (kilowatts)", ylab="Frequency")

# close graphics device
dev.off()


