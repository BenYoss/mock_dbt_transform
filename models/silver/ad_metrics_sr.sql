SELECT 
    ad_spend,
    ad_revenue,
    (ad_revenue + game_revenue) / ad_spend AS roas,
    ad_revenue / (ad_revenue + game_revenue) AS ad_revenue_ratio,
    ad_spend / (ad_revenue + game_revenue) AS payback_period,
    hrly_timestamp,
    hour_of_day,
    day_of_month,
    month_of_year,
    event_date
FROM 
    {{ref('user_aquisition_metrics_sr')}}
