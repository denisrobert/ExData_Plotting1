#######################
# plot4.R: Generate plot4.png as required, at a size of 480x480
#
#######################

# read the data into "filtered"
source("./read_data.R")

# open the PNG graphics device.
png(file="plot4.png", width=480, height=480, units="px", bg="transparent")
with(filtered, {
  # set the device to render graphics in a 2x2 grid, filled by row.
  par(mfrow=c(2,2))
  
  # generate the base graph, without any data, and with only a y axis label
  plot(DateTime, Global_active_power, type="n", xlab="", ylab="Global Active Power")
  
  # Add a line graph plotting the Global Active Power against the Time axis.
  lines(DateTime, Global_active_power)
  
  # generate a second base graph, with appropriate axis labels
  plot(DateTime, Voltage, type="n", xlab="datetime", ylab="Voltage")
   
  # Add a line graph plotting the Voltage against the Time axis.
  lines(DateTime, Voltage)
  
  # generate a third base graph, with only a y axis label
  plot(DateTime, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
  
  # Add a line graph plotting each of the 3 sub metering variables
  #  against the time axis, in black, red and blue.
  lines(DateTime, Sub_metering_1, col="black")
  lines(DateTime, Sub_metering_2, col="red")
  lines(DateTime, Sub_metering_3, col="blue")
  # Add a legend to the graph identifying the three superimposed line graphs.
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1, bty="n")
  
  # generate a fourth base graph with appropriate axis labels.
  plot(DateTime, Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
  # Add a line graph plotting the Global Reactive Power against the Time axis.
  lines(DateTime, Global_reactive_power)
})

# Close the PNG device, writing the file to disk.
dev.off()