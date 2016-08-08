setwd("/Users/malloryguymon/exploratorydataanalysis")
df <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE, dec = ".")
df.subset <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(df.subset$Date, df.subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(df.subset$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()