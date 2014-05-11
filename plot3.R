png(file="F:/R/course.Exploratory Data Analysis/Plot/plot3.png",bg="white")
with(df.new, plot(datetime,Sub_metering_1, type="n",ylab="Energy sub metering", xlab=""))
with(df.new, lines(datetime,Sub_metering_1, type="l", col="black"))
with(df.new, lines(datetime,Sub_metering_2, type="l", col="red"))
with(df.new, lines(datetime,Sub_metering_3, type="l", col="blue"))
legend("topright",lty=1,col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()