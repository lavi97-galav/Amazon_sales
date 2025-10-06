## 🌟 Amazon Sales Forecasting & Performance Analysis Dashboard

### 🚀 *End-to-End Data Analytics Project using SQL, Python & Power BI*

---

### 🧠 **Project Summary**

This project demonstrates an **end-to-end data analytics solution** — from **data cleaning and SQL querying** to **forecasting future sales with Python Prophet** and **visualizing insights in Power BI**.

The analysis is based on Amazon store sales data (2019–2021), exploring how factors such as holidays, markdowns, and economic conditions affect weekly sales.  The project concludes with a **52-week sales forecast** to support data-driven business decisions.

> 💡 *Goal:* Transform raw sales data into actionable insights and forecasts that guide strategic business planning.

---

### 💼 **Business Problem**

Amazon aims to understand:

* 📈 How sales are performing across stores and time periods.
* 🎉 How holidays and markdowns affect weekly sales.
* 🔮 What the sales trend looks like for the next 12 months.

As a **Data Analyst**, I performed analysis, forecasting, and visualization to address these key business questions.

---

### 🧩 **Tech Stack Used**

| Tool                                               | Purpose                                       |
| -------------------------------------------------- | --------------------------------------------- |
| 🗃️ **PostgreSQL**                                 | Data extraction, querying, and KPI generation |
| 🐍 **Python (Pandas, NumPy, Matplotlib, Prophet)** | Data cleaning, analysis, forecasting          |
| 📊 **Power BI**                                    | Data visualization and dashboard creation     |
| 📓 **Jupyter Notebook**                            | Exploratory data analysis and modeling        |

---

### 🗂️ **Dataset Information**

* **Period Covered:** 2019 – 2021
* **Stores:** 45
* **Departments:** 99
* **Records:** 42,000+ weekly sales entries

|              Column | Description                             |
| ------------------: | --------------------------------------- |
|               Store | Store number (1–45)                     |
|                Dept | Department number (1–99)                |
|        Weekly_Sales | Weekly total sales for each store       |
|                Size | Store size (sq. ft.)                    |
|         Temperature | Average weekly temperature              |
|          Fuel_Price | Average regional fuel price             |
|                 CPI | Consumer Price Index                    |
|        Unemployment | Regional unemployment rate              |
|           IsHoliday | Indicates if the week was a holiday     |
| Year / Month / Week | Time features for trend and forecasting |

---

### 🧮 **SQL Analysis**

Performed extensive SQL analysis using **PostgreSQL** to uncover KPIs and trends.

#### ✅ Key SQL Analyses

* Total sales and average weekly sales
* Top and bottom performing stores
* Yearly and monthly sales trends
* Impact of holidays on weekly sales
* Effect of unemployment and fuel prices

**Sample Query:**

```sql
SELECT Year, ROUND(SUM(Weekly_Sales)::numeric, 2) AS total_sales
FROM amazon_sales_data
GROUP BY Year
ORDER BY Year;
```

**💡 Insights:**

* Sales are higher during holidays.
* Larger stores perform consistently better.
* Sales decline slightly when unemployment or fuel prices rise.

---

### 🔮 **Forecasting Future Sales (Python Prophet)**

Used **Facebook Prophet** to predict **next 52 weeks of weekly sales**.

**Steps Followed:**

1. Cleaned and formatted time-series data (`ds`, `y`).
2. Trained Prophet model on historical sales.
3. Forecasted for 52 future weeks.
4. Visualized forecast and seasonal trends.

**Code Example:**

```python
from prophet import Prophet
import matplotlib.pyplot as plt

model = Prophet()
model.fit(forecast_df)

future = model.make_future_dataframe(periods=52, freq='W')
forecast = model.predict(future)

model.plot(forecast)
plt.title("Amazon Weekly Sales Forecast (Next 52 Weeks)")
plt.show()
```

**Forecast Insights:**

* Sales expected to grow **8–10%** over the next 12 months.
* Seasonal peaks align with holiday periods.
* Sales trend remains stable and positive.

---

### 📊 **Power BI Dashboard**

An interactive Power BI dashboard was developed to visualize:

* 🏬 Store-wise & Department-wise Sales
* 📅 Yearly and Monthly Trends
* 🎉 Holiday vs. Non-Holiday Sales
* 🔮 Prophet Forecast Summary
* ⚙️ KPIs such as Total Sales, Average Weekly Sales, and Growth %


---

### 💡 **Key Findings**

| Insight             | Description                                 |
| ------------------- | ------------------------------------------- |
| 🏆 Top Stores       | Top 5 stores contribute ~40% of total sales |
| 🎉 Holiday Sales    | Sales increase up to 2.5x during holidays   |
| ⛽ Fuel Price Impact | Minor negative correlation with sales       |
| 🔮 Forecast         | Sales projected to grow steadily next year  |

---

### 🧠 **Project Learnings**

* Developed an **end-to-end data analytics workflow**.
* Enhanced SQL skills for retail KPI analysis.
* Learned time series forecasting using Prophet.
* Strengthened storytelling skills through **Power BI visualization**.
* Connected business logic with data-driven insights.

---

### 📁 **Files Included**

| File                          | Description                                           |
| ----------------------------- | ----------------------------------------------------- |
| `amazonsales_csv_final.ipynb` | Cleaned notebook with Python analysis and forecasting |
| `sqlqueries.sql`              | SQL file with analytical queries                      |
| `amazonsale.pbix`             | Power BI dashboard file                               |
| `README.md`                   | Project documentation (this file)                     |

---

### 👩‍💻 **About the Developer**

**Lovey Galav**
🎯 *Data Analyst | SQL | Power BI | Python | Forecasting*

💬 Passionate about turning raw data into meaningful insights for smarter business decisions.
📊 Strong interest in Data Analytics, Business Intelligence, and AI-driven data storytelling.



### 🌟 **Final Note**

> “This project represents the complete data analytics lifecycle — from data cleaning and SQL querying to visualization and forecasting.”

⭐ *If you liked this project, please give it a star and connect with me on LinkedIn!*
