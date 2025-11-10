# Customer_Behavior_Analysis
## Executive Summary
This project analyzes **customer shopping behavior** using data from **3,900 retail transactions** to uncover patterns that inform marketing, pricing, and loyalty strategies.  

Using **Python (Pandas, NumPy)** for data cleaning and **PostgreSQL** for deeper business analysis, the project identifies spending patterns, customer preferences, and behavior trends across demographics, product types, and purchase frequency.

**Key Outcomes**
- Males account for the majority of total revenue (~68%).  
- Express Shipping users spend slightly more (+3–4%), showing higher convenience value.  
- Loyal customers represent over 80% of the customer base.  
- Younger adults are the most active and valuable demographic segment.  

---

## Business Problem
Retailers often have large volumes of transaction data but lack clarity on **who their most valuable customers are** and **what drives their purchasing decisions**.  

This project addresses that gap by exploring:
- **Demographic influences** on spending  
- **Subscription and loyalty behaviors**  
- **Discount and shipping preferences**  
- **Product performance** across categories  

The goal: Enable **data-driven marketing and retention strategies** that improve customer lifetime value.

---

## Methodology
The workflow combines **Python-based data preprocessing** and **SQL-driven business analysis**.

**1. Data Preparation (Python)**
- Imported and profiled data using `pandas`.  
- Cleaned missing `review_rating` values with median per product category.  
- Standardized column names and engineered new features such as `age_group` and `purchase_frequency_days`.  
- Verified data consistency and dropped redundant variables.  
- Loaded the cleaned dataset into **PostgreSQL** for further analysis.

**2. SQL Analysis (PostgreSQL)**
- Created aggregate queries to calculate revenue and spending metrics by gender, age group, and subscription status.  
- Identified high-value discount users, top-rated products, and high-performing categories.  
- Segmented customers by loyalty and subscription behavior to reveal retention patterns.  
- Compared spending between shipping types and discount usage.

---

## Technical Skills Demonstrated
- **Python (Pandas, NumPy):** Data cleaning, feature engineering, and imputation.  
- **PostgreSQL (SQL):** Aggregations, joins, and subqueries for trend and segment analysis.  
- **Analytical Thinking:** Translating business questions into measurable metrics.  
- **Data Integration:** Combining Python preprocessing with SQL-based insights.

---

## Results & Insights
- **Customer Profile:** Young adults dominate purchases and revenue share.  
- **Revenue Drivers:** Male customers and express shippers contribute higher per-order spending.  
- **Loyalty Strength:** Over 80% of customers are repeat buyers, suggesting strong brand retention.  
- **Subscription Opportunity:** Only a fraction of frequent buyers are subscribers — a clear target group for promotions.  
- **Discount Sensitivity:** Price-sensitive products benefit from controlled promotional strategies.  

---

## Business Recommendations
1. **Expand Subscription Base:** Offer exclusive rewards and shipping perks to convert repeat buyers.  
2. **Enhance Loyalty Programs:** Use tiered incentives to strengthen engagement with top customers.  
3. **Optimize Discounts:** Balance promotional intensity for high-margin items to protect profitability.  
4. **Highlight Top Products:** Promote highly rated and best-selling items to drive conversions.  
5. **Target Younger Shoppers:** Personalize campaigns for high-spending, younger demographics.  

---

## Dashboard Preview


*Power BI dashboard visualizing customer segments, sales trends, and loyalty metrics.*

---

## Next Steps
- Incorporate **predictive modeling** to forecast purchase likelihood and customer churn.  
- Integrate **real-time data pipelines** for live behavioral tracking.  
- Expand segmentation with additional features like marketing channel and product return rate.  
