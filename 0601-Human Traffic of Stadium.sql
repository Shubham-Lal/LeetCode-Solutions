# Write your MySQL query statement below
SELECT s.id, s.visit_date, s.people
FROM Stadium s WHERE people >= 100
AND ((
    100 <= (SELECT people FROM Stadium WHERE s.id = id+1) 
    AND 
    100 <= (SELECT people FROM Stadium WHERE s.id = id+2)
) OR (
    100 <= (SELECT people FROM Stadium WHERE s.id = id-1) 
    AND 
    100 <= (SELECT people FROM Stadium WHERE s.id = id-2)
) OR (
    100 <= (SELECT people FROM Stadium WHERE s.id = id+1) 
    AND 
    100 <= (SELECT people FROM Stadium WHERE s.id = id-1)
)) ORDER BY visit_date;