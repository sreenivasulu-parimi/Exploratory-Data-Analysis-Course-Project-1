####################################################################################################
###
###   Construct a histogram of global active power vs time using data set household_power_consumption.txt
###
####################################################################################################

# read data
power_consumption <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# subset data from 2007-02-01 and 2007-02-02
data <- power_consumption[power_consumption$Date %in% c("1/2/2007","2/2/2007") ,]

# Create column in table with date and time merged together
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(data$Global_active_power)

# plot globalactivepower vs date&time
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()