WITH t AS (
  SELECT
    Country,
    Sub_Category,
    ROUND(SUM(Revenue),2) AS revenue,
    RANK() OVER (PARTITION BY Country ORDER BY SUM(Revenue) DESC) AS rnk
  FROM bike_sales
  GROUP BY Country, Sub_Category
)
SELECT Country, Sub_Category, revenue
FROM t
WHERE rnk = 1
ORDER BY revenue DESC;
