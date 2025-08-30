SELECT
  Product,
  Sub_Category,
  Product_Category,
  SUM(Order_Quantity)      AS units,
  ROUND(AVG(Unit_Price),2) AS avg_price,
  ROUND(SUM(Revenue),2)    AS revenue,
  ROUND(SUM(Profit),2)     AS profit
FROM bike_sales
GROUP BY Product, Sub_Category, Product_Category
ORDER BY revenue DESC
LIMIT 10;
