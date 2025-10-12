SELECT weather_type, ts , cnt
FROM (
  SELECT weather_type,ts,
         COUNT(*) OVER (PARTITION BY weather_type, ts) AS cnt
  FROM weather_sample
) t
WHERE cnt = 1
ORDER BY weather_type DESC, ts DESC;
