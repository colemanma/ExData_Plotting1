hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
hpc$Date<-as.Date(hpc$Date, "%d/%m/%Y")
pwrdata<-subset(hpc,Date=="2007-02-01"|Date=="2007-02-02")
pwr2<-as.POSIXct(strptime(paste(pwrdata$Date,pwrdata$Time),"%Y-%m-%d %H:%M:%S"))
pwrdata$Date<-pwr2
plot(pwrdata$Date,pwrdata$Sub_metering_1,type="l",xlab=NA,ylab="Energy sub metering")
points(pwrdata$Date,pwrdata$Sub_metering_2,type="l",col="red")
points(pwrdata$Date,pwrdata$Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)