# Write your MySQL query statement below
SELECT p.product_name, SUM(o.unit) unit
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id
WHERE MONTH(order_date) = 2 and YEAR(order_date) =2020
GROUP BY p.product_id
HAVING unit >=100;