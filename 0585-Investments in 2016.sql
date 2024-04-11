# Write your MySQL query statement below
SELECT round(sum(tiv_2016), 2) as tiv_2016
FROM Insurance
JOIN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING count(pid) > 1
) AS t1 USING(tiv_2015) 
JOIN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING count(pid) = 1
) AS t2 USING(lat, lon);