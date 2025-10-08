WITH survey_metrics AS (SELECT    -- Ключевые метрики эффективности опросов
        survey_id,
        AVG(response_time_sec) as avg_response_time,
        COUNT(DISTINCT user_id) as total_participants,
        SUM(completed) as completed_surveys
    FROM survey_data
    GROUP BY survey_id
)
SELECT * FROM survey_metrics;
