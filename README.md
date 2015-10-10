## Exploratory Data Analysis, Course Project 1

The goal of this project is to produce 4 exploratory graphs illustrating aspects of a
data set on electric power consumption extracted from the 
<a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine Learning Repository</a>.

The complete dataset can be found at <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

For the purposes of this project, only two days' worth of data has been retained, for the period covering 
2007-02-01 and 2007-02-02 only. Each script described below reads in the entire dataset, but filters out 
data for other dates prior to generating the graphs.

In the source dataset, the variables are as shown below:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

The only modifications made to the dataset prior to generating the graph have been:

- Converting "?" characters to "NA" in order to be correctly processed as missing values by R.
- Converting numeric values in character for to proper numeric values.
- Combining Date and Time columns into an additional, single POSIXct DateTime column in order to make filtering and graphing simpler.



## Scripts included in the project

There are 6 script included in the project.

read_data.R: A shared script, sourced by the other scripts in order to read the dataset and prepare it for graphing.  
plot[1-4].R: Four scripts to generate successively more complex graphs, matching the requirements of the exercise.  
generate_plots.R: A simple utility to unzip the dataset, generate all plots, then remove the unzipped datafile.  



## Running the scripts.

Before running the scripts, make sure to set your current directory to the folder containing the scripts and dataset, whether you source the script directly in an R session, or run Rscript at the command line. 

Next, unzip the household_power_consumption.zip file into the current directory.

Then, run each of the plot[1-4].R scripts in turn. Each will generate a file named plot[1-4].png, sized 480px x 480px in the current directory.
