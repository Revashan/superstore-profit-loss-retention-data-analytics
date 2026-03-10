/***Customer repeat purchase analysis ***/
SELECT
    customer_id,
    COUNT(order_id) AS purchase_count
FROM superstore_sales
GROUP BY customer_id
HAVING purchase_count > 1
ORDER BY purchase_count DESC;

/*product repeat purchase */
SELECT
    product_name,
    COUNT(customer_id) AS repeat_buyers
FROM superstore_sales
GROUP BY product_name
ORDER BY repeat_buyers DESC
LIMIT 10;
