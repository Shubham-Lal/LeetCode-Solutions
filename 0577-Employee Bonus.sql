# Write your MySQL query statement below
SELECT name, bonus
FROM Employee e LEFT JOIN Bonus b
on e.empid = b.empid
where ifnull(bonus, 0) < 1000;