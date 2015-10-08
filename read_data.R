#####################
# read_data.R: shared script to read the data
#  at the end of the script the "filtered" variable
#  contains the data to be used in generating the graphs
#
######################

library(dplyr)
library(data.table)

print("reading raw data...")
raw <- fread("household_power_consumption.txt",
             header=T, sep=";", na.strings="?",
             colClasses=c("character", "character", "character", "character", "character", "character", "character", "character", "character"))
raw$DateTime <- as.POSIXct(strptime(paste(raw$Date, raw$Time, sep=" "), "%d/%m/%Y %T"))

print("filtering.")
filtered <- raw %>% filter(between(DateTime, as.POSIXct("2007-02-01 00:00:00"), as.POSIXct("2007-02-03 00:00:00")))


print("converting types")
filtered <- filtered %>% transmute(
               DateTime = DateTime,
               Global_active_power = as.numeric(Global_active_power),
               Global_reactive_power = as.numeric(Global_reactive_power),
               Voltage = as.numeric(Voltage),
               Global_intensity = as.numeric(Global_intensity),
               Sub_metering_1 = as.numeric(Sub_metering_1),
               Sub_metering_2 = as.numeric(Sub_metering_2),
               Sub_metering_3 = as.numeric(Sub_metering_3))

