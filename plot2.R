## Plot 2
## author Alexey Burlutskiy
setwd("/Users/alexey/Documents/ExData_Plotting1")
source("common.R")
DT <- loadElectricPowerConsumption("../../Downloads/household_power_consumption.txt")
dev.new()
par(cex=0.8, mar=c(5.1,4.5,4.1,2.1))

with(DT, plot(Global_active_power ~ DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab=""))

dev.copy(png, filename="plot2.png", width=480, height=480);
dev.off()
