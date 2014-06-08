hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
hpc$Date<-as.Date(hpc$Date, "%d/%m/%Y")
pwrdata<-subset(hpc,Date=="2007-02-01"|Date=="2007-02-02")
pwr2<-as.POSIXct(strptime(paste(pwrdata$Date,pwrdata$Time),"%Y-%m-%d %H:%M:%S"))
pwrdata$Date<-pwr2
plot(pwrdata$Date,pwrdata$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=NA)