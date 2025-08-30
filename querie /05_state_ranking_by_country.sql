WITH by_state AS (
  SELECT
    Country, State,
    ROUND(SUM(Revenue),2) AS revenue
  FROM bike_sales
  GROUP BY Country, State
)
SELECT
  Country, State, revenue,
  RANK() OVER (PARTITION BY Country ORDER BY revenue DESC) AS state_rank_in_country
FROM by_state
ORDER BY Country, state_rank_in_country;
