SELECT
    SUM(downloads) AS downloads,
    SUM(app_revenue) AS app_revenue,
    AVG(app_revenue_ratio) AS app_revenue_ratio,
    SUM(revenue_per_download) AS revenue_per_download,
    event_date
FROM
    {{ref('app_metrics_sr')}}
GROUP BY
    event_date