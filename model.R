data(mtcars)
data("AirPassengers")
AirPassengers
data("cancer")
cancer
AP = AirPassengers
AP
class(AP)
start(AP)
end(AP)
frequency(AP)
summary(AP)
cycle(AP)
aggregate(AP)
aggregate(AP, FUN = mean)
plot(AP)
boxplot(AP)
boxplot(AP~ cycle(AP))
acf(AP)
plot(AP)
log(plot(AP))
plot(log(AP))
plot(diff(log(AP)))
acf(diff(log(AP)))
pacf(diff(log(AP)))
fit.prophet(AP)
fit <- arima(log(AP),c(0,1,1),seasonal = list(order=c(0,1,1),frequency(12)))
pred <- predict(fit,n.ahead = 10*12)
pred1 = 2.718^pred$pred
pred1
data1=head(pred1,12)
View(data1)

