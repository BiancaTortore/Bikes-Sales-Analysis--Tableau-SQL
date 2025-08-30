WITH m AS (
  SELECT
    DATE_FORMAT(Date, '%Y-%m-01') AS month_start,
    ROUND(SUM(Revenue),2) AS revenue
  FROM bike_sales
  GROUP BY 1
)
SELECT
  month_start,
  revenue,
  ROUND(AVG(revenue) OVER (
    ORDER BY month_start
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
  ), 2) AS revenue_ma_3m
FROM m
ORDER BY month_start;
