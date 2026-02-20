SELECT
  category,
  sub_category,
  SUM(sales)  AS total_sales,
  SUM(profit) AS total_profit
FROM superstore_cleaned
GROUP BY category, sub_category
HAVING SUM(profit) < 0
ORDER BY total_sales DESC;

SELECT COUNT(DISTINCT sub_category) AS total_sub_categories
FROM superstore_cleaned;

SELECT SUM(sales) AS loss_sales
FROM superstore_cleaned
WHERE sub_category IN (
  SELECT sub_category
  FROM superstore_cleaned
  GROUP BY sub_category
  HAVING SUM(profit) < 0
);

