SELECT
  ROUND(SUM(Revenue),2)   AS total_revenue,
  ROUND(SUM(Cost),2)      AS total_cost,
  ROUND(SUM(Profit),2)    AS total_profit,
  ROUND(100 * SUM(Profit) / NULLIF(SUM(Revenue),0), 2) AS margin_pct
FROM bike_sales;
