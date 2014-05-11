df <- read.table("F:/R/course.Exploratory Data Analysis/household_power_consumption.txt", sep=";", header = TRUE)
df$Date <- as.Date(as.character(df$Date),"%d/%m/%Y")

df.new <- df[df$Date >= "2007-02-01"& df$Date <= "2007-02-02",]
df.new[,3:9] <- sapply(df.new[,3:9], function(x) as.numeric(as.character(x)))

png(file="F:/R/course.Exploratory Data Analysis/Plot/plot1.png",bg="white")
hist(df.new$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

par(mfcol=c(1,1))








