# Blinkit Sales Analysis Capstone Project

## 📊 Project Overview

This project performs a comprehensive sales analysis of Blinkit (a quick-commerce grocery platform) using data science and BI techniques. The goal is to derive business insights from Blinkit’s grocery sales data — analyzing sales trends, customer behavior, and outlet performance — and present them via a Power BI dashboard.

---

## 📸 Dashboard Preview

Here is a quick look at the interactive Power BI dashboard created for this project:

![Blinkit Dashboard](POWERBI/Dashboard.png)

---

## 🗄️ SQL Queries & Analysis

This project also includes SQL-based analysis for understanding the dataset structure, solving business problems, and validating insights.

### 📌 ERD / Schema
The schema used in this project is available in the `Schemas.sql` file.

### 📌 Business Problem Queries  
Below are previews of the SQL queries used in the project:

#### **Query 1**
![SQL Query 1](SQL/Query%20.png)

#### **Query 2**
![SQL Query 2](SQL/Query%202.png)

You can find the full SQL scripts here:
- `Business Problems.sql`  
- `Business Problems Solutions.sql`  
- `Schemas.sql`

---


## 🔍 Business Objectives

1. Understand Blinkit’s overall sales performance: total sales volume, average sale per transaction, and number of items.
2. Analyze customer satisfaction using average item ratings.
3. Explore how different item attributes (like fat content or product category) affect sales.
4. Compare outlet performance by:

   * Outlet type (supermarket, grocery store, etc.)
   * Outlet size
   * Outlet location tier
   * Outlet establishment year
5. Generate actionable insights for Blinkit stakeholders (e.g., which outlet types to focus on, popular product segments, and customer preferences).

---


## 📂 Project Structure

```
Blinkit-Sales-Analysis-Capstone-Project/
│
├── BlinkIT Grocery Data.csv
│
├── SQL/
│   ├── Business Problems.sql
│   ├── Business Problems Solutions.sql
│   ├── Schemas.sql
│   ├── Query .png
│   └── Query 2.png
│
├── Power BI/
│   ├── Blinkit.pbix
│   ├── Dashboard.png
│   
│
├── Python/
│   ├── (Your Python notebooks/scripts here)
│
├── Images/
│   ├── (Dashboard screenshots / visualizations)
│
└── Blinkit Analysis.pptx
 
```

---

## 🛠️ Tools & Technologies

* **Python**: data cleaning, EDA, preprocessing
* **SQL**: structured data querying
* **Power BI**: interactive dashboard, DAX, visuals
* **Data Visualization / Modeling**: KPIs, relationships, slicers, storytelling

---


## 📈 Key Metrics & KPIs

* **Total Sales**
* **Average Sales**
* **Number of Items Sold**
* **Average Rating**

---

## 📊 Insights & Findings

* Low-fat products show strong sales trends, making them ideal for targeted promotions.
* Categories like **Fruits & Vegetables** and **Snack Foods** appear to drive a major share of revenue.
* Medium-sized outlets indicate consistently better sales performance.
* Tier-3 locations reveal unexpectedly strong sales, opening up opportunities for expansion.
* Outlet establishment year analysis helps identify maturity-based performance patterns.

---

## 💡 Business Recommendations

1. Optimize inventory toward high-demand categories.
2. Prioritize investment in medium-sized and high-performing outlet types.
3. Promote healthier low-fat product lines.
4. Explore more aggressive expansion in promising location tiers.
5. Continuously track performance through the Power BI dashboard.

---

## 🚀 How to Run / Use This Project

1. **Clone the Repository**

   ```bash
   git clone https://github.com/mangal-singh001/Blinkit-Sales-Analysis-Capstone-Project.git
   ```

2. **Data Cleaning & EDA**

   * Use the Python notebooks in the `Python/` folder
   * Run SQL queries in the `SQL/` folder if needed

3. **Open the Power BI Dashboard**

   * Load the `.pbix` file from the `Power BI/` directory
   * Explore using slicers and filters

4. **View the Presentation**

   * Open `Blinkit Analysis.pptx` for summarized insights and recommendations

---

## 📁 Data Details

* **Dataset:** `BlinkIT Grocery Data.csv`
* **Fields include:** Item type, fat content, outlet size, location tier, establishment year, sales, ratings, etc.

---

## ⚠️ Limitations & Considerations

* Possible missing or inconsistent data
* Dataset may not represent all Blinkit outlets
* Insights depend on time period of the dataset
* Observational analysis — not causal

---

## 📚 References / Inspiration

Data-analysis portfolio projects from the community helped with dashboard ideas.
Best practices for README structure inspired by open-source data science templates.

---

⭐ **If you found this project helpful, please consider giving it a star!**
