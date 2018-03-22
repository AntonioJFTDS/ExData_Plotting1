dev.off()

par(mfcol = c(2,2))

####### Top Left #################
plot(data$Datetime, data$Global_active_power,
     type="l",
     xlab = "", # so "data$Datetime" does not appear on the axe-X
     ylab = "Global Active Power")

####### Bottom Left ##############
plot(data$Datetime, data$Sub_metering_1,
     type="l",
     xlab = "", # so "data$Datetime" does not appear on the axe-X
     ylab = "Energy sub metering")

lines(data$Datetime,data$Sub_metering_2,
      col = "red")

lines(data$Datetime,data$Sub_metering_3,
      col = "blue")

legend("topright", col=c("black", "red", "blue"), 
       lwd=1, # line wide
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

####### Top Right #################
plot(data$Datetime, data$Voltage,
     type="l",
     xlab = "", # so "data$Datetime" does not appear on the axe-X
     ylab = "Voltage")

####### Bottom Left ##############
plot(data$Datetime, data$Global_reactive_power,
     type="l",
     xlab = "", # so "data$Datetime" does not appear on the axe-X
     ylab = "Global_reactive_power")

dev.copy(png,file="plot4.png")
dev.off()