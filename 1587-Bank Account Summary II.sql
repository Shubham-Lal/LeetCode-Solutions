# Write your MySQL query statement below
SELECT name, sum(amount) AS balance FROM Users NATURAL JOIN Transactions
GROUP BY account HAVING balance > 10000;