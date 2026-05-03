library(dplyr)
library(lubridate)
library(ggplot2)


Activities <- read.csv("activity.csv")
Activities$date <- ymd(Activities$date)
Activities_Per_Day <- group_by(Activities, date)
Activities_Per_Interval <- group_by(Activities, interval)


items <- tapply(activities$steps, activities$date, FUN=sum)
barplot(items, las=2, cex.names = 0.5)



Mean_and_Median <- summarise(activities_per_day, mean=mean(steps, na.rm = TRUE), n=median(steps, na.rm = TRUE))
plot(Mean_and_Median$Mean, type="l", col="red", ylab = "Steps", xlab = "Day", las=2, main="Average number of steps taken")
lines(Mean_and_Median$Median, type="l", col="blue")
legend("topright", legend=c("mean", "median"), pch=1, col=c("red", "blue"))





Average_no_of_steps_by_interval <- summarise(Activities_per_Interval, Average=Mean(steps, na.rm = TRUE))
Ranking_of_Intervals <- arrange(Average_no_of_steps_by_interval, desc(average))
print(Ranking_of_Intervals$Interval[1])



nas <- is.na(Activities$steps)
Total_Empty <- sum(nas)
percentage_empty <- mean(nas)
# Total empty results
print(Total_Empty)


Not_empty <- mutate(Activities)
Na_intervals <- Not_empty$Interval[nas]
Average_na_Intervals <- sapply(na_intervals, function(item) {average_of_steps_by_interval$average[average_of_steps_by_interval$interval==item]})
Not_empty$steps[nas] = Average_na_intervals

not_empty_items <- tapply(not_empty$steps, Not_empty$date, FUN=sum)
par(mfrow=c(2,1))
barplot(items, las=2, cex.names = 0.5, main="Histogram with missing values (NAs)")
barplot(not_empty_items, las=2, cex.names = 0.5, main="Histogram without missing values (NAs)")


activities_with_days <- mutate(activities, weekday=weekdays(date))
activities_by_day_interval <- group_by(activities_with_days, weekday, interval)
results_per_day <- summarise(activities_by_day_interval, steps=mean(steps, na.rm=TRUE))
qplot(interval, steps, data=results_per_day, facets= weekday ~ .) + geom_line()
