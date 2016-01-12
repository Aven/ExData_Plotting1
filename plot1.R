library(plyr)


setwd("C:/Users/310197076/Desktop/R/")

dataset <- read.csv("household_power_consumption.txt", header=TRUE, sep=";")

dataset$Date <- as.Date(dataset$Date, format="%d/%m/%Y")

sub <- subset(dataset, dataset$Date %in% c(as.Date("1/2/2007", format="%d/%m/%Y"),as.Date("2/2/2007", format="%d/%m/%Y")))

x=hist(as.numeric(sub$Global_active_power), xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")

png('plot1.png')
plot(x)
dev.off()