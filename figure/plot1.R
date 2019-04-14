# Loading required Packages 
library(dplyr)

#Set Working Directory for reading dataset
setwd("C:/Users/r.pratap.singh/Desktop/JohnHopkins/exdata_data_household_power_consumption")

#Read the file 

power_data <- read.table("household_power_consumption.txt", header=T, sep = ";", na.strings = "?")

head(power_data)
str(power_data)

# Converting to date format as using Y not y to identify the ccyy format of year 
power_data$Date <- as.Date(power_data$Date, "%d/%m/%Y")

# Selecting only the feb 01 2017 and Feb 02 2017
power_data_sel <- subset(power_data, Date >= "2007-02-01" & Date <= "2007-02-02")

#Set Working Directory for ploting 
setwd("C:/Users/r.pratap.singh/Desktop/JohnHopkins/ExData_Plotting1/figure") 

#Generating Histogram Plot of Global Active Power consumption against frequency

hist(power_data_sel$Global_active_power, col = "red", xlab = "Global Active Power(KW)", main = "Global Active Power")


#copying the generated plot to png device (4) and then switch off the device.

dev.copy(png,"plot1.png", width= 480, height = 480)
dev.off()



