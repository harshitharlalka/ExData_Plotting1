data <- read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings="?")
datafinal <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
datafinal$Date = as.Date(datafinal$Date, "%d/%m/%Y")
datafinal$Time = as.POSIXlt(datafinal$Time, "%H:%M:%S")
png("plot1.png")
with(datafinal,hist(Global_active_power,xlab="Global Active Power (kilowatts)",col = "red",main="Global Active Power"))
dev.off()