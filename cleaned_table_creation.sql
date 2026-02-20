CREATE TABLE superstore_cleaned AS
SELECT
  `Row ID`        AS row_id,
  `Order ID`      AS order_id,
  STR_TO_DATE(`Order Date`, '%m/%d/%Y') AS order_date,
  STR_TO_DATE(`Ship Date`,  '%m/%d/%Y') AS ship_date,
  `Ship Mode`     AS ship_mode,
  `Customer ID`   AS customer_id,
  `Customer Name` AS customer_name,
  `Segment`       AS segment,
  `Country`       AS country,
  `City`          AS city,
  `State`         AS state,
  `Postal Code`   AS postal_code,
  `Region`        AS region,
  `Product ID`    AS product_id,
  `Category`      AS category,
  `Sub-Category`  AS sub_category,
  `Product Name`  AS product_name,
  `Sales`         AS sales,
  `Quantity`      AS quantity,
  `Discount`      AS discount,
  `Profit`        AS profit
FROM superstore_raw;

