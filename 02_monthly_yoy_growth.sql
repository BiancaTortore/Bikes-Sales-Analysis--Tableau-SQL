WITH m AS (
  SELECT
    DATE_FORMAT(Date, '%Y-%m-01') AS month_start,
    Year,
    ROUND(SUM(Revenue),2) AS revenue
  FROM bike_sales
  GROUP BY 1, 2
)
SELECT
  month_start,
  revenue,
  LAG(revenue, 12) OVER (ORDER BY month_start) AS revenue_prev_year,
  ROUND(100 * (revenue - LAG(revenue, 12) OVER (ORDER BY month_start)) 
        / NULLIF(LAG(revenue, 12) OVER (ORDER BY month_start),0), 2) AS yoy_growth_pct
FROM m
ORDER BY month_start;
