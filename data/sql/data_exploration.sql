SELECT survey_id,   -- Анализ completion rate по опросам
 survey_topic,
 COUNT (DISTINCT user_id) AS total_users,
 COUNT (DISTINCT CASE WHEN completed = 1 THEN user_id END) AS completed_users,
 ROUND (COUNT (DISTINCT CASE WHEN completed THEN user_id END) * 100.0 / COUNT (DISTINCT user_id), 2 AS completion_rate
  FROM survey_data
  GROUP BY survey_id, survey_topic
  ORDER BY completion_rate DESC;
