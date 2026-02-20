SELECT
  product_id,
  product_name,
  SUM(sales)        AS total_sales,
  SUM(profit)       AS total_profit,
  AVG(discount)     AS avg_discount
FROM superstore_cleaned
GROUP BY product_id, product_name
HAVING SUM(profit) < 0
ORDER BY total_sales DESC
LIMIT 10;
