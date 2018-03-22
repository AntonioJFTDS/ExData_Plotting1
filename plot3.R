dev.off()

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

dev.copy(png,file="plot3.png")

dev.off()