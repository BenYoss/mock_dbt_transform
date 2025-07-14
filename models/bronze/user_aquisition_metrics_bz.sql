
SELECT 
   COALESCE(ad_spend, 0) AS ad_spend,
   COALESCE(user_retention_rate, 0) AS user_retention_rate,
   COALESCE(num_of_downloads, 0) AS downloads,
   COALESCE(avg_time_spent, 0) AS avg_time_spent,
   COALESCE(advertising_revenue, 0) AS ad_revenue,
   COALESCE(in_game_revenue, 0) AS game_revenue,
   COALESCE(in_app_purchases, 0) AS app_purchases,
   COALESCE(date_created, DATE '1900-01-01') AS hrly_timestamp
 FROM
    app_marketing_metrics
 WHERE 
   hrly_timestamp != DATE '1900-01-01'