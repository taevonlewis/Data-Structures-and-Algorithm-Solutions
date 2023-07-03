# Write your MySQL query statement below
SELECT start_times.machine_id, 
       ROUND(AVG(end_times.end_time - start_times.start_time), 3) as processing_time
FROM
  (SELECT machine_id, process_id, MIN(timestamp) as start_time
   FROM Activity
   WHERE activity_type = 'start'
   GROUP BY machine_id, process_id) as start_times
JOIN
  (SELECT machine_id, process_id, MAX(timestamp) as end_time
   FROM Activity
   WHERE activity_type = 'end'
   GROUP BY machine_id, process_id) as end_times
ON start_times.machine_id = end_times.machine_id
AND start_times.process_id = end_times.process_id
GROUP BY start_times.machine_id;
