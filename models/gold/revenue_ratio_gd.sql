SELECT
    SUM(ad_spend) AS ad_spend,
    SUM(ad_revenue) AS ad_revenue,
    AVG(ad_revenue_ratio) AS ad_revenue_ratio,
    event_date
FROM
    {{ref('ad_metrics_sr')}}
GROUP BY
    event_date
