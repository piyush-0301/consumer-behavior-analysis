
USE Customer_Behavior;
GO

SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';


SELECT TOP 10 *
FROM dbo.cleaned_customer_data;

SELECT COUNT(*) AS Total_Customers
FROM dbo.cleaned_customer_data;


SELECT SUM(purchase_amount) AS Total_Sales
FROM dbo.cleaned_customer_data;


SELECT category,
       SUM(purchase_amount) AS Total_Sales
FROM dbo.cleaned_customer_data
GROUP BY category
ORDER BY Total_Sales DESC;


SELECT gender,
       COUNT(*) AS Total_Customers
FROM dbo.cleaned_customer_data
GROUP BY gender;


SELECT gender,
       SUM(purchase_amount) AS Total_Revenue
FROM dbo.cleaned_customer_data
GROUP BY gender;

SELECT item_purchased,
       COUNT(*) AS Times_Purchased
FROM dbo.cleaned_customer_data
GROUP BY item_purchased
ORDER BY Times_Purchased DESC;


SELECT category,
       COUNT(*) AS Total_Orders
FROM dbo.cleaned_customer_data
GROUP BY category
ORDER BY Total_Orders DESC;

SELECT season,
       COUNT(*) AS Orders,
       SUM(purchase_amount) AS Revenue
FROM dbo.cleaned_customer_data
GROUP BY season
ORDER BY Revenue DESC;


SELECT payment_method,
       COUNT(*) AS Transactions
FROM dbo.cleaned_customer_data
GROUP BY payment_method
ORDER BY Transactions DESC;


SELECT discount_applied,
       COUNT(*) AS Orders,
       AVG(purchase_amount) AS Avg_Order_Value
FROM dbo.cleaned_customer_data
GROUP BY discount_applied;

SELECT subscription_status,
       COUNT(*) AS Customers,
       SUM(purchase_amount) AS Revenue
FROM dbo.cleaned_customer_data
GROUP BY subscription_status;

SELECT category,
       AVG(review_rating) AS Average_Rating
FROM dbo.cleaned_customer_data
GROUP BY category
ORDER BY Average_Rating DESC;

SELECT TOP 10
       location,
       SUM(purchase_amount) AS Revenue
FROM dbo.cleaned_customer_data
GROUP BY location
ORDER BY Revenue DESC;


SELECT shipping_type,
       COUNT(*) AS Orders,
       AVG(purchase_amount) AS Avg_Order_Value
FROM dbo.cleaned_customer_data
GROUP BY shipping_type
ORDER BY Orders DESC;

SELECT TOP 10
       customer_id,
       previous_purchases
FROM dbo.cleaned_customer_data
ORDER BY previous_purchases DESC;



SELECT frequency_of_purchases,
       COUNT(*) AS Customers
FROM dbo.cleaned_customer_data
GROUP BY frequency_of_purchases
ORDER BY Customers DESC;

SELECT size,
       SUM(purchase_amount) AS Revenue
FROM dbo.cleaned_customer_data
GROUP BY size
ORDER BY Revenue DESC;

SELECT size,
       SUM(purchase_amount) AS Revenue
FROM dbo.cleaned_customer_data
GROUP BY size
ORDER BY Revenue DESC;

SELECT
    COUNT(*) AS Total_Customers,
    SUM(purchase_amount) AS Total_Revenue,
    AVG(purchase_amount) AS Average_Purchase,
    MAX(purchase_amount) AS Highest_Purchase,
    MIN(purchase_amount) AS Lowest_Purchase,
    AVG(review_rating) AS Average_Rating
FROM dbo.cleaned_customer_data;
