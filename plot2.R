#######################
# plot2.R: Generate plot2.png as required, at a size of 480x480
#
#######################

# read the data into "filtered"
source("./read_data.R")

# open the PNG graphics device.
png(file="plot2.png", width=480, height=480, units="px", bg="transparent")

with(filtered, {
  # generate the base graph, without any data, and with only a y axis label
  plot(DateTime, Global_active_power, type="n", main="", xlab="", ylab="Global Active Power (kilowatts)")
  # Add a line graph plotting the Global Active Power against the Time axis.
  lines(DateTime, Global_active_power)
})
# Close the PNG device, writing the file to disk.
dev.off()