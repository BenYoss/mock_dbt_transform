SELECT
    SUM(ad_spend) AS ad_spend,
    SUM(ad_revenue) AS ad_revenue,
    AVG(roas) AS return_on_ad_spend,
    event_date
FROM
    {{ref('ad_metrics_sr')}}
GROUP BY
    event_date