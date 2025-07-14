SELECT
    app_purchases,
    game_revenue AS app_revenue,
    downloads,
    ad_spend / downloads AS cost_per_download,
    game_revenue / (ad_revenue + game_revenue) AS app_revenue_ratio,
    (ad_revenue + game_revenue) / downloads AS revenue_per_download,
    hrly_timestamp,
    hour_of_day,
    day_of_month,
    month_of_year,
    event_date
FROM
    {{ref('user_aquisition_metrics_sr')}}