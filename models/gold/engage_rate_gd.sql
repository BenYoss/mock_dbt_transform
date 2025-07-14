SELECT
    SUM(user_retention_rate) AS user_retention_rate,
    SUM(avg_time_spent) AS avg_time_spent,
    AVG(engagement_index) AS engagement_index,
    event_date,
FROM
    {{ref('user_metrics_sr')}}
GROUP BY
    event_date