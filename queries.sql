-- Fraud vs Normal Count
SELECT Class, COUNT(*) AS total_transactions
FROM fraud_small
GROUP BY Class;

-- Fraud Percentage
SELECT ROUND((SUM(Class) / COUNT(*)) * 100, 2) AS fraud_percentage
FROM fraud_small;

-- Average Amount
SELECT Class, ROUND(AVG(Amount), 2) AS avg_amount
FROM fraud_small
GROUP BY Class;

-- Small Fraud Transactions
SELECT * FROM fraud_small
WHERE Amount < 2 AND Class = 1;

-- High Value Fraud
SELECT * FROM fraud_small
WHERE Amount > 2000 AND Class = 1;

-- Transaction Categorization
SELECT Amount,
CASE 
    WHEN Amount < 10 THEN 'Low'
    WHEN Amount BETWEEN 10 AND 1000 THEN 'Medium'
    ELSE 'High'
END AS transaction_type
FROM fraud_small;

-- Fraud by Category
SELECT 
CASE 
    WHEN Amount < 10 THEN 'Low'
    WHEN Amount BETWEEN 10 AND 1000 THEN 'Medium'
    ELSE 'High'
END AS category,
COUNT(*) AS fraud_count
FROM fraud_small
WHERE Class = 1
GROUP BY category;

-- Ranking Transactions
SELECT Time, Amount, Class,
RANK() OVER (ORDER BY Amount DESC) AS rank_amount
FROM fraud_small;

-- Top Fraud Transactions
SELECT *
FROM fraud_small
WHERE Class = 1
ORDER BY Amount DESC
LIMIT 3;
