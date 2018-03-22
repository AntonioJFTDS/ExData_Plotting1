dev.off()

with(data,plot(Datetime,Global_active_power,
               type="l",                                   ## "l" for lines
               xlab = NULL,
               ylab = "Global Active Power (kilowatts)"))

dev.copy(png,file="plot2.png")

dev.off()
