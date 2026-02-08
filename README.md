# 📊 Loan Portfolio Analysis — End-to-End Data Analytics Project

**End-to-End Analytics Project (Excel • Python • SQL • Power BI)**

## 📌 Project Overview
Loan defaults pose a significant financial risk to lending institutions. Poor risk assessment can lead to **credit losses**, while overly conservative policies can reduce **loan approvals and revenue**.

This project delivers an **end-to-end financial risk analytics solution** to:

- Analyze loan performance and default behavior  
- Identify high-risk borrower segments  
- Understand credit, demographic, and loan-structure drivers of default  
- Translate insights into actionable lending and risk management recommendations  

The workflow mirrors a real-world analytics pipeline using **Excel for staging**, **Python for EDA**, **SQL for business metrics**, and **Power BI/Excel for dashboards**.

---

## 🎯 Business Objective
- Reduce loan default rates  
- Improve borrower risk segmentation  
- Support data-driven credit approval decisions  
- Identify portfolios with high loss exposure  
- Strengthen monitoring of risky loan cohorts  

---

## 📂 Dataset Description
**Source:** Public financial loan dataset  
**Level:** Loan-level records  
**Size:** ~39,000 loan applications  

### Key Attributes
- Borrower details: income, employment title, home ownership  
- Loan details: loan amount, interest rate, term, purpose  
- Credit metrics: DTI, grade, sub-grade  
- Repayment outcomes: loan status, total payment, default flag  
- Time features: issue date, issue month, issue year  

---
```
📁 Project Structure
│── README.md
│── data/
│   ├── raw/
│── notebooks/
│   └── Loan_Analysis.ipynb
│── sql/
├── 01_schema_and_load.sql     
├── 02_data_quality_and_flags.sql
├── 03_portfolio_kpis.sql      
├── 04_segmentation_defaults.sql
└── 05_advanced_trends.sql      
│── dashboards/
│   ├── Loan_Dashboard_Excel.xlsx
│   └── Loan_Dashboard_PowerBI.pbix
│── images/
│   └── dashboard_preview.png

```


## 🔄 End-to-End Workflow
**Excel → Python → SQL → Power BI**

---

## 1️⃣ Problem Understanding
The primary focus is identifying **loan default risk** and understanding how borrower characteristics and loan structures influence repayment behavior.

### Default Definition
Loans were categorized as:

- **Good Loan** → Fully Paid / Current  
- **Bad Loan** → Charged Off / Default  

### Stakeholders
- Credit risk teams  
- Loan underwriting teams  
- Portfolio managers  
- Business leadership  

---

## 2️⃣ Excel-Based Data Cleaning & Staging
Initial data inspection and preparation were performed in Excel.

### Key Activities
- Validated column formats and ranges  
- Checked missing values in borrower attributes  
- Reviewed loan categories and repayment status  
- Created early business-friendly views  

**Why Excel?**
- Fast data validation  
- Improves business understanding  
- Helps catch data quality issues early  

---

## 3️⃣ Python-Based Exploratory Data Analysis (EDA)
Python served as the **core analytical layer**.

### Tools Used
- pandas, numpy  
- matplotlib, seaborn  

### EDA Performed
#### Univariate Analysis
- Loan amount distribution  
- Interest rate and DTI spread  
- Loan term and grade distribution  

#### Bivariate Analysis
- Loan grade × Default  
- Purpose × Default  
- Term × Default  
- Income × Default  

#### Multivariate Analysis
- Loan grade × Term × Default  
- Interest rate × DTI × Default  
- Purpose × Loan amount × Default  

---

## 4️⃣ Feature Engineering in Python
Additional analytical features were engineered:

- Loan category (Good / Bad)  
- Interest rate buckets  
- DTI risk bands  
- Loan size categories  
- Time-based features (issue month, year)  

**Purpose:** Prepare data for SQL metrics and dashboards.

---

## 5️⃣ SQL-Based Business Metrics & Analysis
SQL was used to translate analytical findings into **business-ready insights**.

### Analysis Workflow
1. **Data Validation**
   - Row count verification  
   - Missing value checks  
   - Range validation for interest rate and DTI  

2. **Portfolio KPIs**
   - Total loan applications  
   - Total funded amount  
   - Total received amount  
   - Average interest rate  
   - Average DTI  

3. **Risk Segmentation**
   - Good vs Bad loan distribution  
   - Default rate by grade, purpose, state, and term  

4. **Time-Series Analysis**
   - Monthly bad loan volumes  
   - Month-over-month growth in funded amount  
   - Year-wise cohort analysis  

---

## 6️⃣ Dashboards (Power BI / Excel)
Interactive dashboards were built to visualize:

- Overall loan portfolio health  
- Default rate trends  
- High-risk borrower segments  
- Loan grade and purpose risk breakdown  
- Time-based portfolio performance  

Dashboards are designed for **non-technical stakeholders**.

---

## 📈 Key Insights
- Higher credit grades show significantly lower default rates  
- Longer loan terms carry higher default risk  
- Certain loan purposes consistently show elevated default behavior  
- Geographic variation exists in default rates  

---

## 💡 Business Recommendations
- Apply risk-adjusted pricing for high-risk grades  
- Tighten approval criteria for high-default loan purposes  
- Monitor long-tenure loans closely  
- Strengthen early-warning systems for risky borrowers  

---

## ⚠️ Limitations & Assumptions
- Observational data only (no causal inference)  
- No external credit bureau data  
- Simplified borrower financial profiles  
- Results depend on historical repayment behavior  

---

## 🚀 Future Enhancements
- Predictive modeling (Logistic Regression, Random Forest)  
- Model explainability using SHAP  
- Loss Given Default (LGD) analysis  
- Real-time portfolio monitoring  


