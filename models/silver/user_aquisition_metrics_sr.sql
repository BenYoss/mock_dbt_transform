SELECT
    ad_spend,
    user_retention_rate,
    downloads,
    avg_time_spent,
    ad_revenue,
    game_revenue,
    app_purchases,
    hrly_timestamp,
    EXTRACT(HOUR FROM hrly_timestamp) AS hour_of_day,
    EXTRACT(DAY FROM hrly_timestamp) AS day_of_month,
    EXTRACT(MONTH FROM hrly_timestamp) AS month_of_year,
    DATE(hrly_timestamp) AS event_date
FROM
    {{ref('user_aquisition_metrics_bz')}}