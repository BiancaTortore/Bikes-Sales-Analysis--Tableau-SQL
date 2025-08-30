SELECT
  Sub_Category,
  ROUND(AVG(Unit_Price),2) AS avg_price,
  ROUND(100 * AVG((Unit_Price - Unit_Cost)/NULLIF(Unit_Price,0)),2) AS avg_unit_margin_pct,
  COUNT(*) AS rows_count
FROM bike_sales
GROUP BY Sub_Category
HAVING rows_count >= 10
ORDER BY avg_unit_margin_pct DESC;
