# 💳 Credit Card Fraud Detection Analysis using Python & SQL

## 📌 Project Overview

This project demonstrates an end-to-end fraud detection analysis workflow using **Python** and **SQL**. The objective is to analyze credit card transaction data, identify fraudulent patterns, and generate meaningful business insights through data analysis and visualization.

The project combines Python for data preprocessing and exploratory data analysis (EDA) with MySQL for querying and detecting suspicious transactions.

---

# 🚀 Technologies Used

- Python
- Pandas
- Matplotlib
- Seaborn
- KaggleHub
- MySQL
- SQL
- Jupyter Notebook

---

# 📂 Dataset

**Source**

Credit Card Fraud Detection Dataset from Kaggle

https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud

The Python program automatically downloads the dataset using **KaggleHub**, so manual downloading is not required.

### Dataset Features

- Time
- Amount
- V1 – V28 (Anonymized Features)
- Class
  - 0 → Normal Transaction
  - 1 → Fraud Transaction

---

# 🐍 Python Workflow

The Python program performs the following tasks:

✔ Downloads the dataset directly from Kaggle

✔ Loads the dataset using Pandas

✔ Performs Exploratory Data Analysis (EDA)

✔ Checks missing values

✔ Generates descriptive statistics

✔ Calculates fraud distribution

✔ Creates a SQL-friendly dataset (`fraud_small.csv`)

✔ Generates visualizations

✔ Exports summary CSV files

---

# 📊 Visualizations Generated

The project automatically creates the following charts:

### 📈 Fraud Distribution (Bar Chart)

Shows the number of normal and fraudulent transactions.
<img width="600" height="400" alt="fraud_bar_chart" src="https://github.com/user-attachments/assets/199e7205-991d-473c-9562-15f16ddb6bbf" />


---

### 🥧 Fraud Distribution (Pie Chart)

Displays the percentage of fraud transactions.
<img width="600" height="600" alt="fraud_pie_chart" src="https://github.com/user-attachments/assets/34dc3f78-e8fa-4cb7-89ef-63c9162171cd" />

---

### 📊 Transaction Amount Histogram

Shows the distribution of transaction amounts.
<img width="800" height="500" alt="amount_histogram" src="https://github.com/user-attachments/assets/7c274ae7-9e9a-4f04-851b-ad9778d9b45d" />

---

### 📦 Transaction Amount Box Plot

Compares transaction amounts between fraud and normal transactions.
<img width="600" height="400" alt="amount_boxplot" src="https://github.com/user-attachments/assets/bd2e8140-8b3f-427b-b256-7e40efb86581" />

---

### 🔥 Correlation Heatmap

Visualizes correlations between all numerical features.
<img width="1200" height="1000" alt="correlation_heatmap" src="https://github.com/user-attachments/assets/c05a8ff6-0f08-49e8-b713-3a699154d9ae" />

---

### 📉 Amount Range Analysis

Shows the number of transactions in different amount categories.
<img width="800" height="500" alt="amount_range_bar_chart" src="https://github.com/user-attachments/assets/e0dcb978-ee48-4326-8705-46b6db37aeae" />

---

# 📁 Generated Files

After running the Python program:

```
outputs/
│
├── fraud_summary.csv
├── amount_categories.csv
├── top_fraud_transactions.csv
│
├── fraud_bar_chart.png
├── fraud_pie_chart.png
├── amount_histogram.png
├── amount_boxplot.png
├── correlation_heatmap.png
└── amount_range_bar_chart.png
```

The project also generates:

```
fraud_small.csv
```

which is used for SQL analysis.

---

# 🛠 SQL Analysis

The SQL section demonstrates how relational databases can be used to detect suspicious transactions.

### SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- CASE
- Aggregate Functions
- Window Functions (RANK)

---

## Example SQL Queries

- Find the highest-value fraud transactions
- Count fraud vs normal transactions
- Calculate average fraud amount
- Rank fraud transactions
- Filter suspicious transactions

---

# 📸 SQL Output

Example:

```sql
SELECT *
FROM fraud_small
WHERE Class = 1
ORDER BY Amount DESC
LIMIT 3;
```

Output

| Time | Amount | Class |
|------|--------|------|
| 7 | 3000 | 1 |
| 3 | 2500 | 1 |
| 6 | 1500 | 1 |
<img width="800" height="500" alt="amount_range_bar_chart" src="./sql_output.png" />
---

# 📈 Key Insights

- Fraud transactions represent only a very small percentage of all transactions.
- High-value transactions often require additional verification.
- Fraud detection is a highly imbalanced classification problem.
- SQL can quickly identify suspicious transaction patterns.
- Python helps uncover hidden insights through visualization and exploratory analysis.

---

# 📚 Project Structure

```
Fraud-Detection-Analysis
│
├── analysis.py
├── queries.sql
├── fraud_small.csv
├── README.md
│
├── outputs
│   ├── fraud_summary.csv
│   ├── amount_categories.csv
│   ├── top_fraud_transactions.csv
│   ├── fraud_bar_chart.png
│   ├── fraud_pie_chart.png
│   ├── amount_histogram.png
│   ├── amount_boxplot.png
│   ├── correlation_heatmap.png
│   └── amount_range_bar_chart.png
```

---

# ▶️ How to Run

## Clone the repository

```bash
git clone https://github.com/Barani06/fraud-detection-sql-project.git
```

---

## Install dependencies

```bash
pip install pandas matplotlib seaborn kagglehub
```

---

## Run the analysis

```bash
python analysis.py
```

---

## Run SQL Queries

1. Import `fraud_small.csv` into MySQL.
2. Execute the queries in `queries.sql`.
3. Analyze the generated results.

---

# 🧠 What I Learned

Through this project I improved my understanding of:

- SQL querying and data analysis
- Data preprocessing using Python
- Exploratory Data Analysis (EDA)
- Fraud pattern identification
- Data visualization
- Working with real-world datasets
- Converting raw data into actionable insights

---

# 🚀 Future Improvements

- Machine Learning based fraud prediction
- Real-time fraud detection
- Interactive Power BI dashboard
- Streamlit web application
- Automated fraud reporting

---

# 📌 Conclusion

This project demonstrates an end-to-end data analytics workflow using Python and SQL. It highlights how data preprocessing, visualization, and SQL querying can work together to identify fraudulent transaction patterns and generate meaningful business insights.
