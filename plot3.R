dev.off()


> with(data, plot(Wind, Ozone, main = "Ozone and Wind in New York City", type = "n"))	## Display an empty Graph and the title
> with(subset(airquality, Month == 5), points(Wind, Ozone, col = "blue"))
> with(subset(airquality, Month != 5), points(Wind, Ozone, col = "red"))
> legend("topright", pch= 1, col = c("blue", "red"), legend = c("May","Other Months"))
## pch is the shape of the sign in the legend box





with(data,plot(x,y,type="n",Date.Time,Global_active_power,col=type="l",ylab = "Global Active Power (kilowatts)"))


with(data,plot(Datetime,Sub_metering_1,
               type="l",                                   ## "l" for lines
               ylab = "Global Active Power (kilowatts)"))



dev.copy(png,file="plot3.png")

dev.off()