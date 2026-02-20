SELECT
  sub_category,
  region,
  SUM(sales)  AS total_sales,
  SUM(profit) AS total_profit
FROM superstore_cleaned
WHERE sub_category IN ('Tables', 'Bookcases', 'Supplies')
GROUP BY sub_category, region
HAVING SUM(profit) < 0
ORDER BY sub_category, total_sales DESC;


SELECT
  sub_category,
  region,
  AVG(discount) AS avg_discount,
  SUM(sales)    AS total_sales,
  SUM(profit)   AS total_profit
FROM superstore_cleaned
WHERE sub_category IN ('Tables', 'Bookcases', 'Supplies')
GROUP BY sub_category, region
ORDER BY sub_category, avg_discount DESC;
