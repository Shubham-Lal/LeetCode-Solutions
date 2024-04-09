# Write your MySQL query statement below
SELECT 
    ROUND((COUNT(A1.player_id) / (SELECT COUNT(DISTINCT A3.player_id) FROM Activity A3)), 2) AS fraction 
FROM 
    activity A1
RIGHT JOIN 
    (SELECT player_id, 
            MIN(event_date) AS latest_date
     FROM activity
     GROUP BY player_id
     ORDER BY latest_date DESC) A2 
ON 
    A2.player_id = A1.player_id 
WHERE 
    DATE_ADD(A2.latest_date, INTERVAL 1 DAY) = A1.event_date