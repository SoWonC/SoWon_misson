SELECT 
  YEAR(o.sales_date) AS YEAR,
  MONTH(o.sales_date) AS MONTH,
  u.gender AS GENDER, 
  COUNT(DISTINCT u.user_id) AS USERS
FROM user_info u
JOIN online_sale o 
  ON u.user_id = o.user_id
WHERE u.gender IS NOT NULL
GROUP BY 
  YEAR(o.sales_date),
  MONTH(o.sales_date),
  u.gender
ORDER BY 
  YEAR,
  MONTH,
  GENDER asc;
