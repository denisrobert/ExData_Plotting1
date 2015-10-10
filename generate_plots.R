file.remove("./plot1.png")
file.remove("./plot2.png")
file.remove("./plot3.png")
file.remove("./plot4.png")
unzip("./household_power_consumption.zip")

source("./plot1.R")
source("./plot2.R")
source("./plot3.R")
source("./plot4.R")

file.remove("./household_power_consumption.txt")