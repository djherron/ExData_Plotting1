# Exploratory Data Analysis
# Course Project 1

# A common data retrieval and formatting service.

get_data <- function() {
  # read in all data
  data_all <- read.table("../../04 Exploratory Data Analysis/Project 1/household_power_consumption.txt", header=T, sep=";",
                         stringsAsFactors=FALSE, na.strings="?")
  
  # extract the subset of data to be used for plotting
  target_row <- data_all$Date=="1/2/2007" | data_all$Date=="2/2/2007"
  data <- data_all[target_row,]
  
  # convert column formats
  newtime <- paste(data$Date, data$Time)
  data$Date <- as.Date(data$Date, format="%d/%m/%Y")
  data$Time <- strptime(newtime, "%d/%m/%Y %H:%M:%S")
  data$Global_active_power <- as.numeric(data$Global_active_power)
  data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
  data$Voltage <- as.numeric(data$Voltage)
  data$Global_intensity <- as.numeric(data$Global_intensity)
  data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
  data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
  data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)
  
  return(data)
}