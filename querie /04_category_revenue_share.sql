SELECT
  Product_Category,
  ROUND(SUM(Revenue),2) AS revenue,
  ROUND(100 * SUM(Revenue) / SUM(SUM(Revenue)) OVER (), 2) AS share_pct
FROM bike_sales
GROUP BY Product_Category
ORDER BY share_pct DESC;
