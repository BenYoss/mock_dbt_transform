{{
    config(
        materialized='incremental',
        unique_key='event_date'
    )
}}

SELECT
    SUM(app.app_revenue) AS app_revenue,
    SUM(ad.ad_revenue) AS ad_revenue,
    app.event_date AS event_date
FROM
    {{ref('app_metrics_sr')}} AS app
JOIN
    {{ref('ad_metrics_sr')}} AS ad ON
    ad.hrly_timestamp = app.hrly_timestamp
{% if is_incremental() %}
    WHERE event_date >= (SELECT max(event_date) FROM {{ this }})
{% endif %}
GROUP BY 
    app.event_date