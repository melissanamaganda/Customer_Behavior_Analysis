SELECT * FROM customer LIMIT 20

--Total Revenue generated from male vs female customers

SELECT gender,
SUM(purchase_amount) AS revenue
FROM customer
GROUP BY gender

-- Which customers used discounts but still spent more than the average purchase amount

SELECT customer_id, purchase_amount
FROM customer
WHERE discount_applied = 'Yes' AND purchase_amount >= (SELECT AVG(purchase_amount)FROM customer)

-- Top 5 products with highest average review rating

SELECT item_purchased, ROUND(AVG(review_rating::numeric),2) AS "Average Producting Rating"
FROM customer
GROUP BY item_purchased
ORDER BY AVG(review_rating) DESC
LIMIT 5;

-- Compare the average purchase amounts between standard and express shipping

SELECT shipping_type,
ROUND(AVG(purchase_amount),2) 
FROM customer
WHERE shipping_type IN('Standard', 'Express')
GROUP BY shipping_type

-- Do subscribed customers spend more?

SELECT subscription_status,
COUNT (customer_id) AS total_customers,
ROUND(AVG(purchase_amount),2) AS avg_spend,
ROUND(SUM(purchase_amount),2) AS total_revenue
FROM customer
GROUP BY subscription_status
ORDER BY total_revenue, avg_spend DESC;

-- The 5 products with the highest peercentage of purchases with discounts applied.
-- i.e. which products depend heavily on discounts to be sold

SELECT item_purchased,
ROUND(100 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/ COUNT(*),2) as discount_rate
FROM customer
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;

-- Segmentation of customers into New, Returning, and Loyal based on their total number
-- of previous purchases, plus count of each

WITH customer_type AS (
SELECT customer_id, previous_purchases,
CASE 
    WHEN previous_purchases = 1 THEN 'New'
    WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
    ELSE 'Loyal'
    END AS customer_segment
FROM customer)

SELECT customer_segment, COUNT(*) AS "Number of Customers" 
FROM customer_type 
GROUP BY customer_segment;

-- Top 3 most purchased products within each category

WITH item_counts AS (
    SELECT category,
           item_purchased,
           COUNT(customer_id) AS total_orders,
           ROW_NUMBER() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank
    FROM customer
    GROUP BY category, item_purchased
)
SELECT item_rank,category, item_purchased, total_orders
FROM item_counts
WHERE item_rank <=3;

-- Are repeat buyers also subscribers?

SELECT subscription_status,
       COUNT(customer_id) AS repeat_buyers
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status;

-- Revenue contribution of each age group

SELECT age_group,
SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY age_group
ORDER BY total_revenue desc;


