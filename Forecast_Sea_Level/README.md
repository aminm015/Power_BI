# 🌊 Sea Level Forecasting with Power BI & Prophet

This project predicts future global sea levels using historical data (1993–2021) from NASA and Prophet forecasting, visualized through an interactive Power BI dashboard.

---
![Dashboard Preview](https://github.com/aminm015/Power_BI/blob/main/Forecast_Sea_Level/Record%207.gif))
## 📁 Dataset

- Source: [NASA Climate Change](https://climate.nasa.gov/)
- Kaggle: [Global Sea Level Dataset (1993–2021)](https://www.kaggle.com/datasets/kkhandekar/global-sea-level-1993-2021)

---

## 🧱 Project Structure

### 1. Data Loading & Transformation (Power BI)
- Loaded `sealevel.csv` using Power BI’s **Power Query Editor**
- Grouped data by `Year` to calculate **Avg_Smoothed_GMSL**
- Converted data types for compatibility (e.g., Year as Integer)

### 2. Machine Learning Forecast (Python in Power Query)
- Enabled Python scripting in Power BI
- Installed required packages: `Prophet`, `numpy`, `pandas`, `cmdstanpy`
- Trained Prophet on yearly Avg_Smoothed_GMSL
- Generated forecasts including confidence intervals
- Combined historical and forecasted values into a final DataFrame

### 3. Power BI Data Model
- Built data model using the output forecast table
- Created "What If" parameter to select forecast years dynamically

### 4. DAX Measures
- `Last Historical Sea Level Date`: detects last actual data year
- `Forecasted Sea Level (Combined)`: combines actuals and predictions
- Confidence interval measures: `Lower Bound`, `Upper Bound`
- `Forecast End Year`: shows selected forecast horizon
- `Sea Level Difference from 2025`: compares future values to 2025

### 5. Power BI Visuals
- 📈 **Line Chart**: Actual vs Forecasted sea level trends
- 📊 **Card Visuals**: Highlight forecast range and differences

---

## 🔍 Key Insights

- Uses Prophet for time-series forecasting with seasonality
- Interactive Power BI allows exploring different future scenarios
- Demonstrates integration of ML within business analytics tools

---

## 🚀 Tools & Libraries

- **Power BI**
- **Python** (Prophet, pandas, numpy, cmdstanpy)
- **DAX**
- **Power Query**


