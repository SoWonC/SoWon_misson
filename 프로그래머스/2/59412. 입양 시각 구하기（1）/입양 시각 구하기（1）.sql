SELECT 
    hour(DATETIME) AS HOUR, 
    COUNT(*) AS COUNT
FROM 
    ANIMAL_OUTS
where hour(DATETIME) >= 9 AND hour(DATETIME) < 20
GROUP BY 
    hour(DATETIME)
order by hour(DATETIME) asc;
