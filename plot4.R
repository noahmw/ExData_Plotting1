
png(file="F:/R/course.Exploratory Data Analysis/Plot/plot4.png",bg="white")
################# 4 

par(mfrow=c(2,2), mar=c(2,4,2,2))
# 1
with(df.new,plot(datetime, Global_active_power, type="l", ylab="Global Active Power (kilowatts)",xlab=""))
# 2
with(df.new,plot(datetime,Voltage,  type="l",ylab="Voltage",xlab="Voltage"))
# 3
with(df.new, plot(datetime,Sub_metering_1, type="n",ylab="Energy sub metering", xlab=""))
with(df.new, lines(datetime,Sub_metering_1, type="l", col="black"))
with(df.new, lines(datetime,Sub_metering_2, type="l", col="red"))
with(df.new, lines(datetime,Sub_metering_3, type="l", col="blue"))
legend("topright",lty=1,col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# 4
with(df.new,plot(datetime, Global_reactive_power, type="l", ylab="Global Reactive Power (kilowatts)",xlab=""))

par("oma")
par("mar")
#5.1 4.1 4.1 2.1

dev.off()