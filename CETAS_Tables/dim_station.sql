IF OBJECT_ID('dbo.dim_station') IS NOT NULL
BEGIN
  DROP EXTERNAL TABLE [dbo].[dim_station];
END

CREATE EXTERNAL TABLE dbo.dim_station
WITH (
    LOCATION = 'dim_station',
    DATA_SOURCE = [udacitydemo_udacitydemo_dfs_core_windows_net],
    FILE_FORMAT = [SynapseDelimitedTextFormat]
)  
AS
SELECT 
    station_id,
    name AS station_name,
    latitude,
    longitude
FROM dbo.station_stage;
GO

SELECT TOP 10 * FROM dbo.dim_station;
