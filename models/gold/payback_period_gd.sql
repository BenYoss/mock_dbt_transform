SELECT
    SUM(ad.ad_spend) AS ad_spend,
    SUM(ad.ad_revenue) AS ad_revenue,
    SUM(app.app_revenue) AS app_revenue,
    AVG(ad.payback_period) AS payback_period,
    ad.event_date AS event_date
FROM
    {{ref('ad_metrics_sr')}} AS ad
JOIN
    {{ref('app_metrics_sr')}} AS app ON
    app.hrly_timestamp = ad.hrly_timestamp
GROUP BY
    ad.event_date