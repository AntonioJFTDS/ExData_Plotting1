## Plot 1

dev.off()

hist(data$Global_active_power, col = "red" , 
        xlab = "Global Active Power (kilowatts)" , 
        main = "Global Active Power")

dev.copy(png,file="plot1.png")

dev.off()