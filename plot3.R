## Plot 3
## author Alexey Burlutskiy
setwd("/Users/alexey/Documents/ExData_Plotting1")
source("common.R")
DT <- loadElectricPowerConsumption("../../Downloads/household_power_consumption.txt")
dev.new()
par(cex=0.8, mar=c(5.1,4.5,4.1,2.1))

with(DT, plot(Sub_metering_1 ~ DateTime, type="l", ylab="Energy sub metering", xlab=""))
with(DT, lines(Sub_metering_2 ~ DateTime, col="red"))
with(DT, lines(Sub_metering_3 ~ DateTime, col="blue"))
legend("topright",c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1,1), col=c("black", "red","blue"), cex = 0.8)

dev.copy(png, filename="plot3.png", width=480, height=480);
dev.off()
