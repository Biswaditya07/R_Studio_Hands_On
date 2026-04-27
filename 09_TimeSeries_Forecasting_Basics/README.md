# Time Series Forecasting using Regression-Based Methods & Auto ARIMA

## 📌 Project Overview
This project demonstrates **Time Series Forecasting using Regression-Based Methods** along with **Automatic ARIMA model selection (Auto ARIMA)** using **R Programming**. The objective is to analyze historical time series data, identify patterns, build forecasting models, and generate future predictions. The dataset contains multiple variables (`x`, `y`, `z`) that are analyzed through visualization, autocorrelation techniques, and ARIMA modeling. This project is highly useful for forecasting business metrics such as sales, demand, revenue, stock movement, and operational trends.

## 👨‍💼 Author
**Biswaditya07 (Biswaditya Saha)**  
MBA in Business Analytics

## 🛠️ Tools & Technologies Used
- R Programming  
- Excel Dataset (.xlsx)  
- Libraries Used: `tseries`, `forecast`

## 📂 Files Included
| File Name | Description |
|-----------|-------------|
| AF_Class1(1).R | R script containing time series analysis and forecasting models |
| staionary Data.xlsx | Dataset used for forecasting analysis |

## 📊 Project Workflow

### 1️⃣ Data Import
The dataset is imported into R and prepared for forecasting analysis.

### 2️⃣ Time Series Visualization
Line charts are plotted to understand trend, fluctuations, and movement in variables.

```r
plot(staionary_Data$x, type="l")
plot(staionary_Data$y, type="l")
plot(staionary_Data$z, type="l")
````

### 3️⃣ Autocorrelation Analysis

ACF and PACF plots are generated to identify lag relationships and model suitability.

```r
acf(d$x)
pacf(d$x)

acf(d$y)
pacf(d$y)

acf(d$z)
pacf(d$z)
```

These plots help determine whether the data follows AR, MA, ARMA, or ARIMA behavior.

### 4️⃣ Auto ARIMA Model Selection

```r
auto.arima(d$x)
```

This automatically selects the best values of:

* `p` = AR order
* `d` = Differencing order
* `q` = MA order

Based on AIC/BIC statistical criteria.

### 5️⃣ Manual ARIMA Model Building

```r
arima(d$x, order = c(2,0,0))
```

This represents an **AR(2)** model where the current value depends on the previous two lagged values.

### 6️⃣ Forecasting Future Values

After selecting the best model, future values can be forecasted for planning and decision-making.

## 📈 Business Applications

* Sales Forecasting
* Demand Prediction
* Revenue Estimation
* Inventory Planning
* Supply Chain Optimization
* Financial Trend Analysis
* Production Scheduling
* Market Forecasting

## 🔍 Key Learnings

* Understanding Time Series Concepts
* Stationarity Analysis
* Reading ACF & PACF Plots
* AR, MA, ARMA, ARIMA Model Selection
* Automatic Forecasting using Auto ARIMA
* Building Manual ARIMA Models
* Future Value Prediction using R

## 💻 Sample Code

```r
library(tseries)
library(forecast)

plot(staionary_Data$x, type="l")

acf(d$x)
pacf(d$x)

auto.arima(d$x)

arima(d$x, order = c(2,0,0))
```

## 🚀 Conclusion

This project provides hands-on experience in **Time Series Forecasting** using regression-based approaches and ARIMA methods. It demonstrates how historical sequential data can be transformed into accurate future insights for smarter business decisions.

## ⭐ Support

If you like this project, give it a **star ⭐** on GitHub and connect for more analytics projects.
