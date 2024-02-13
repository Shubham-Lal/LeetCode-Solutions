# Write your MySQL query statement below
SELECT Sales.product_id, product_name
FROM Product JOIN Sales ON Product.product_id = Sales.product_id
GROUP BY Sales.product_id
HAVING MAX(sale_date) <= "2019-03-31" AND MAX(sale_date) >= "2019-01-01" AND MIN(sale_date) >= "2019-01-01";