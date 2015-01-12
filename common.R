## Common lib
## Load an electric power consumption on dates 1/2/2007 and 2/2/2007
## author Alexey Burlutskiy
loadElectricPowerConsumption <- function(path){
  library(data.table)
  dtime <- difftime(as.POSIXct("2007-02-03"), as.POSIXct("2007-02-01"),units="mins")
  rowsToRead <- as.numeric(dtime)
  DT <- fread(path, skip="1/2/2007", nrows = rowsToRead, na.strings = c("?", ""))
  setnames(DT, colnames(fread(path, nrows=0)))
  DT$DateTime <- as.POSIXct(paste(DT$Date, DT$Time), format="%d/%m/%Y %H:%M:%S")
  return (DT)
}