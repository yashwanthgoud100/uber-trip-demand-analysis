SELECT COUNT(*) AS total_trips
FROM uber_trips;

SELECT 
  substr("Date/Time", instr("Date/Time", ' ') + 1, 2) AS hour,
  COUNT(*) AS trips
FROM uber_trips
GROUP BY hour
ORDER BY hour;
SELECT 
  substr("Date/Time", 1, instr("Date/Time", ' ') - 1) AS day,
  COUNT(*) AS trips
FROM uber_trips
GROUP BY day
ORDER BY day;
SELECT 
  Base,
  COUNT(*) AS trips
FROM uber_trips
GROUP BY Base
ORDER BY trips DESC;
