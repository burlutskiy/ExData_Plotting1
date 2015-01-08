## Plot 1
## author Alexey Burlutskiy
setwd("/Users/alexey/Documents/ExData_Plotting1")
source("common.R")
DT <- loadElectricPowerConsumption("../../Downloads/household_power_consumption.txt")
dev.new()
par(cex=0.8, mar=c(5.1,4.5,4.1,2.1))
hist(DT$Global_active_power, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
dev.copy(png, filename="plot1.png", width=480, height=480);
dev.off()
