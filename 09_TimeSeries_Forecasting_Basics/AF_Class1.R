attach(staionary_Data)
library(tseries)
library(forecast)
plot(staionary_Data$x, type="l")
plot(staionary_Data$y, type="l")
plot(staionary_Data$z, type="l")
d=staionary_Data
acf(d$x)
pacf(d$x) #Blue line indicates no significant region
acf(d$y)
pacf(d$y)
acf(d$z)
pacf(d$z)
par(mfrow=c(1,2)) #To plot two diagrams in  one plot
auto.arima(d$x) # To check order of AR/MA/ARMA/ARIMA
arima(d$x, order= c(2,0,0))
