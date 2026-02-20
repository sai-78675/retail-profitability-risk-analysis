SELECT COUNT(*) AS zero_or_negative_sales
FROM superstore_cleaned
WHERE sales <= 0;


SELECT COUNT(*) AS invalid_discount
FROM superstore_cleaned
WHERE discount < 0 OR discount > 1;

SELECT COUNT(*) AS zero_quantity
FROM superstore_cleaned
WHERE quantity <= 0;

SELECT
  COUNT(*) AS extreme_margin_cases
FROM superstore_cleaned
WHERE profit / NULLIF(sales,0) < -1
   OR profit / NULLIF(sales,0) > 1;


