#######################
# plot1.R: Generate plot1.png as required, at a size of 480x480
#
#######################

# read the data into "filtered"
source("./read_data.R")

# open the PNG graphics device.
png(file="plot1.png", width=480, height=480, units="px", bg="transparent")

# Generate a histogram plotting the Global Active Power against the time axis
#  with appropriate axis labels, and in red.
with(filtered, 
     hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
)

# Close the PNG device, writing the file to disk.
dev.off()
