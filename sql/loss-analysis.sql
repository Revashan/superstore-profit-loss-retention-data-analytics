/***Loss Analysis ***/
SELECT
    product_name,
    SUM(profit) AS total_loss
FROM superstore_sales
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_loss ASC;

 /***loss bt discount ***/
SELECT
    discount,
    AVG(profit) AS avg_profit
FROM superstore_sales
GROUP BY discount
ORDER BY discount;
