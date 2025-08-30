SELECT
  Product_Category,
  Sub_Category,
  ROUND(SUM(Revenue),2)                         AS revenue,
  ROUND(SUM(Cost),2)                            AS cost,
  ROUND(SUM(Profit),2)                          AS profit,
  ROUND(100 * SUM(Profit)/NULLIF(SUM(Revenue),0),2) AS margin_pct
FROM bike_sales
GROUP BY Product_Category, Sub_Category
ORDER BY margin_pct DESC, revenue DESC;
