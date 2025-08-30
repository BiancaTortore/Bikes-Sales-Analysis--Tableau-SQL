SELECT
  Age_Group,
  ROUND(SUM(CASE WHEN Customer_Gender='F' THEN Revenue END),2) AS revenue_female,
  ROUND(SUM(CASE WHEN Customer_Gender='M' THEN Revenue END),2) AS revenue_male,
  ROUND(SUM(Revenue),2) AS revenue_total
FROM bike_sales
GROUP BY Age_Group
ORDER BY revenue_total DESC;
