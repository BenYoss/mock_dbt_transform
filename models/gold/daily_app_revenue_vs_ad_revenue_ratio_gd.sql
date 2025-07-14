SELECT
    SUM(app.app_revenue) AS app_revenue,
    SUM(ad.ad_revenue) AS ad_revenue,
    app.event_date AS event_date
FROM
    {{ref('app_metrics_sr')}} AS app
JOIN
    {{ref('ad_metrics_sr')}} AS ad ON
    ad.hrly_timestamp = app.hrly_timestamp
GROUP BY 
    app.event_date