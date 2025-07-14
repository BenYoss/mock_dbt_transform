SELECT
    user_retention_rate,
    avg_time_spent,
    avg_time_spent * user_retention_rate AS engagement_index,
    hrly_timestamp,
    hour_of_day,
    day_of_month,
    month_of_year,
    event_date
FROM
    {{ref('user_aquisition_metrics_sr')}}