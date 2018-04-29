####################################################################################################
###
###   Construct a histogram of 'Global Active Power' using data set household_power_consumption.txt
###
####################################################################################################

# read data
power_consumption <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# subset data from 2007-02-01 and 2007-02-02
data <- power_consumption[power_consumption$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(data$Global_active_power)

# plot histogram of global active power for those 2 days
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", border="black", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()