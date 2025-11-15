-- Check row counts in final tables
SELECT 
    'fact_trip' as table_name, COUNT(*) as row_count FROM fact_trip
UNION ALL
SELECT 'payment_fact', COUNT(*) FROM dbo.payment_fact
UNION ALL  
SELECT 'dim_station', COUNT(*) FROM dbo.dim_station
UNION ALL
SELECT 'rider_dim', COUNT(*) FROM dbo.rider_dim
UNION ALL
SELECT 'date_dim', COUNT(*) FROM dbo.date_dim;
