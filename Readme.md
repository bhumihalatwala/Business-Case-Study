# ✈️ Airline Route Profitability Analysis

*A SQL + Power BI Data Project*

## 🌟 Overview

This project analyzes airline route performance using **SQL-based data exploration** and an **interactive Power BI dashboard**.
The goal was to understand route profitability, demand patterns, operational efficiency, and geographic trends to support data-driven aviation decisions.

---

## 🧩 Workflow

### 🗄️ **1. Data Preparation & SQL Analysis**

Using MySQL, I performed a complete analytical breakdown of the dataset, including:

* Identifying the most frequently operated routes
* Measuring route-level revenue, cost, and profit
* Detecting loss-making and low-margin routes
* Computing seat occupancy & operational efficiency
* Analyzing monthly profit trends
* Comparing Domestic vs International profitability
* Ranking routes by revenue efficiency (revenue per minute)

These SQL outputs gave a strong analytical foundation before building visuals.

---

### 📊 **2. Power BI Dashboard Development**

Using the original dataset + SQL insights, I created a multi-visual Power BI dashboard featuring:

* **Top Profitable Routes** (Bar Chart)
* **Origin–Destination Map** (city-level visual)
* **Monthly Profit Trend** (Line Chart)
* **Average Occupancy** (Donut)
* **Cost vs Revenue Comparison** (Stacked Column)
* **Interactive Filters** for Aircraft Type, Flight Month & Route Code

The dashboard brings all insights together in a clean, visually appealing format.

#### 📈 Dashboard

<img width="1276" height="714" alt="Screenshot 2025-11-21 005432" src="https://github.com/user-attachments/assets/d2edd449-36ab-4811-9096-0c151ac5e07c" />

<img width="1273" height="713" alt="Screenshot 2025-11-21 005447" src="https://github.com/user-attachments/assets/412e6c07-86cf-4c01-8797-e3b08cfb96c4" />

---

## 🌍 Key Insights

✨ Medium-haul international routes show the strongest profitability
✨ Some long-haul routes generate high revenue but low margin due to high operating costs
✨ Demand peaks during Jan–Feb, mid-year, and festive months
✨ Occupancy is highest on routes connecting India with Middle-East hubs
✨ Certain low-margin routes need operational or pricing optimization

---

## 📂 Dataset

The dataset contains flight-level operational and revenue metrics, including:

* Route details & aircraft type
* Flight duration
* Seats available vs seats sold
* Revenue & operational cost
* Latitude/Longitude for mapping
* Flight type (Domestic / International)

Format: **CSV**
Visualized using: **Power BI Desktop**
Analyzed using: **MySQL 8.0**

---

## 🛠️ Tools Used

* **MySQL 8.0** — Data exploration & analysis
* **Power BI Desktop** — Visualization & dashboarding
* **Power Query (M)** — File parameterization & data loading
* **DAX** — Calculated fields & measures

---

## 🚀 Highlights

* Combined SQL querying + BI visualization for complete business understanding
* Clean and interactive dashboard with slicers
* Parameterized data loading for flexibility
* Simple, clear storytelling through visuals

---

## 💬 Contact

If you’d like to explore the SQL scripts, dashboard design, or insights deeper, I’m happy to help! 😊
