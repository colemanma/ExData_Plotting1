hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
hpc$Date<-as.Date(hpc$Date, "%d/%m/%Y")
pwrdata<-subset(hpc,Date=="2007-02-01"|Date=="2007-02-02")
hist(pwrdata$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")