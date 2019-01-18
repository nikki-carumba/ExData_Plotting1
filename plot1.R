#read data
power <- read.table("household_power_consumption.txt",skip=1,sep=";", na.strings="?")

#set column names
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#Convert the Date and Time variables to Date/Time classes
power$Date <- as.Date(power$Date, format = "%d/%m/%Y")

#data from the dates 1/2/2007 and 1/2/2007
data <- subset(power, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

# Save to file
png("plot1.png", width=480, height=480)

#plotting the data in histogram
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "Red")

dev.off()