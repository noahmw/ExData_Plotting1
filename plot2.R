df.new$datetime <-as.POSIXct(paste(df.new$Date,df.new$Time))
png(file="F:/R/course.Exploratory Data Analysis/Plot/plot2.png",bg="white")
with(df.new,plot(x=datetime, y=Global_active_power, type="l", ylab="Global Active Power (kilowatts)",xlab=""))
dev.off()
