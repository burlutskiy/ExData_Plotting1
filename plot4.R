## Plot 4
## author Alexey Burlutskiy
setwd("/Users/alexey/Documents/ExData_Plotting1")
source("common.R")
DT <- loadElectricPowerConsumption("../../Downloads/household_power_consumption.txt")
dev.new()
par(cex=0.8, mar=c(5.1,4.5,4.1,2.1), mfcol=c(2,2))

##topleft
with(DT, plot(Global_active_power ~ DateTime, type="l",
              ylab="Global Active Power",xlab=""))
##bottomleft
with(DT, plot(Sub_metering_1 ~ DateTime, type="l", ylab="Energy sub metering", xlab=""))
with(DT, lines(Sub_metering_2 ~ DateTime, col="red"))
with(DT, lines(Sub_metering_3 ~ DateTime, col="blue"))
legend("topright",c("Sub_metering_1 ","Sub_metering_2 ", "Sub_metering_3  "),
       lty=c(1,1,1), col=c("black", "red","blue"), cex = 0.5, box.lwd=0, bg="transparent")
##topright
with(DT, plot(Voltage ~ DateTime, type="l",
              ylab="Voltage", xlab="datetime"))
##bottomright
with(DT, plot(Global_reactive_power ~ DateTime, type="l", xlab="datetime"))

dev.copy(png, filename="plot4.png", width=480, height=480);
dev.off()
