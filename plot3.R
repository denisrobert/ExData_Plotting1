#######################
# plot3.R: Generate plot3.png as required, at a size of 480x480
#
#######################

# read the data into "filtered"
source("./read_data.R")

# open the PNG graphics device.
png(file="plot3.png", width=480, height=480, units="px")
with(filtered, {
  # generate a base graph with no data points, and only a y axis label
  plot(DateTime, Sub_metering_1, type="n", main="", xlab="", ylab="Energy sub metering")
  
  # Add a line graph plotting each of the 3 sub metering variables
  #  against the time axis, in black, red and blue.
  lines(DateTime, Sub_metering_1, col="black")
  lines(DateTime, Sub_metering_2, col="red")
  lines(DateTime, Sub_metering_3, col="blue")
  
  # Add a legend to the graph identifying the three superimposed line graphs.
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1)
})

# Close the PNG device, writing the file to disk.
dev.off()