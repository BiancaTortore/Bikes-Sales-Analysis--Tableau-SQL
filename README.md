# 📊 Bike Sales – SQL + Tableau Project  

This project demonstrates a complete **data analytics workflow** using a bike sales dataset:  
1. Database creation & SQL queries for business insights.  
2. Data visualization with Tableau dashboards.  
3. Repository structure designed for clarity and reproducibility.  

---

## 📈 Tableau Dashboard  

- **Tableau Public:** (https://public.tableau.com/app/profile/bianca.florencia.tortore/viz/BikesSalesAnalysis_17565634017120/SalesDashboard?publish=yes)
- **File:** `tableau/Bikes%20Sales.twb`  
- **Screenshot:** `tableau/Dashboard.png`

The dashboard visualizes:  
- Revenue trends and YoY growth  
- Top-performing products and categories  
- Geographic performance by state/country  
- Demographic analysis by age & gender  

---

## 📂 Repository Structure  
```
├── Data/
│ └── Sales.xlsx # Source dataset
│
├── querie/ # SQL queries (business insights)
│ ├── 01_total_kpis.sql
│ ├── 02_monthly_yoy_growth.sql
│ ├── 03_top10_products.sql
│ ├── 04_category_revenue_share.sql
│ ├── 05_state_ranking_by_country.sql
│ ├── 06_margin_by_category_subcategory.sql
│ ├── 07_revenue_by_age_gender.sql
│ ├── 08_price_vs_margin.sql
│ ├── 09_top_subcategory_by_country.sql
│ └── 10_revenue_moving_avg.sql
│
├── tableau/
│ └── Dashboard.png # Tableau dashboard screenshot
│ └── Bikes Sales.twb # Tableau workbook
│
└── README.md # Project documentation
```
---

## 🗂 Dataset  

**File:** `data/Sales.xlsx`  
**Columns:**  
- `Date, Day, Month, Year, Customer_Age, Age_Group, Customer_Gender, Country, State, Product_Category, Sub_Category, Product, Order_Quantity, Unit_Cost, Unit_Price, Profit, Cost, Revenue`

---

## 🧾 SQL Queries  

Each query answers a specific business question:  

1. **01_total_kpis.sql** → Overall KPIs: revenue, cost, profit, margin %.  
2. **02_monthly_yoy_growth.sql** → Monthly revenue trend with YoY growth %.  
3. **03_top10_products.sql** → Top 10 products by revenue and profit.  
4. **04_category_revenue_share.sql** → Category mix: % share of revenue.  
5. **05_state_ranking_by_country.sql** → Ranking of states by revenue within each country.  
6. **06_margin_by_category_subcategory.sql** → Profitability by category & subcategory.  
7. **07_revenue_by_age_gender.sql** → Revenue breakdown by age group and gender.  
8. **08_price_vs_margin.sql** → Relationship between price and margin by subcategory.  
9. **09_top_subcategory_by_country.sql** → Best-selling subcategory per country.  
10. **10_revenue_moving_avg.sql** → 3-month moving average of revenue (trend smoothing).  

---

## 🚀 How to Use  

1. Import the dataset (`Sales.xlsx`) into your SQL environment as table `bike_sales`.  
2. Run the queries inside `/querie/` to explore business insights.  
3. Open the Tableau workbook (`Bikes Sales.twb`) to interact with the dashboard.  
4. Use `Dashboard.png` for quick visualization reference.  

---

## 🔧 Tech Stack  

- **SQL** (MySQL / PostgreSQL) – Data extraction & transformation  
- **Excel** – Raw dataset  
- **Tableau** – Data visualization & dashboarding  

---

## 📌 Key Insights  

- Identified revenue growth trends with **YoY analysis**.  
- Highlighted **top products and categories** driving revenue.  
- Analyzed **profit margins** across categories and subcategories.  
- Explored **customer demographics** (age & gender impact).  
- Revealed **regional performance** by country and state.

  ---

## 👩‍💻 Author
Bianca Tortore 📍 Based in Berlin, Germany 🌐 Spanish | English | Italian | Learning German (A1) 🔗 [LinkedIn](https://www.linkedin.com/in/bianca-tortore-818349150/)  
