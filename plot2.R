library(dplyr)
library(lubridate)
hpc<-read.table("C:/Users/185384/Documents/Personal/Self Learning/R/BasePlot/household_power_consumption.txt", sep =";", header = TRUE, stringsAsFactors = FALSE)
hpc <- filter(hpc, Date %in% c("1/2/2007", "2/2/2007"))
hpc <- mutate(hpc, date_time = dmy_hms(paste(Date,Time)) )
hpc<-mutate(hpc,Global_active_power= as.numeric(Global_active_power))
png(filename="C:/Users/185384/Documents/Personal/Self Learning/R/BasePlot/plot2.png",width = 480 , height = 480 )
plot(hpc$date_time,hpc$Global_active_power, type = "l", xlab = "", ylab ="Global Active Power (kilowatts)")
dev.off()


