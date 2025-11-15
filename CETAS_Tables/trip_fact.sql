IF OBJECT_ID(' dbo.fact_trip') IS NOT NULL
BEGIN
    DROP EXTERNAL TABLE  dbo.fact_trip
END
CREATE EXTERNAL TABLE dbo.fact_trip 
WITH (
    LOCATION = 'trip_fact',
    DATA_SOURCE = [udacitydemo_udacitydemo_dfs_core_windows_net],
    FILE_FORMAT = [SynapseDelimitedTextFormat]
)
AS 
SELECT
    t.trip_id,
    t.rideable_type,
    t.start_at,
    t.ended_at,
    t.start_station_id,
    t.end_station_id,
    t.member_id,
    CAST(t.ended_at AS DATE) as date,  
    DATEDIFF(minute, t.start_at, t.ended_at) AS trip_duration,
    DATEDIFF(year, r.birthday, t.ended_at) AS rider_age
FROM dbo.trip_stage t 
LEFT JOIN dbo.rider_stage r ON t.member_id = r.rider_id
