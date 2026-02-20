CREATE VIEW subcategory_discount_profit AS
SELECT
  sub_category,
  region,
  AVG(discount) AS avg_discount,
  SUM(sales)    AS total_sales,
  SUM(profit)   AS total_profit
FROM superstore_cleaned
WHERE sub_category IN ('Tables', 'Bookcases', 'Supplies')
GROUP BY sub_category, region;
