IF NOT EXISTS (SELECT * FROM sys.external_file_formats WHERE name = 'SynapseDelimitedTextFormat') 
	CREATE EXTERNAL FILE FORMAT [SynapseDelimitedTextFormat] 
	WITH ( FORMAT_TYPE = DELIMITEDTEXT ,
	       FORMAT_OPTIONS (
			 FIELD_TERMINATOR = ',',
			 USE_TYPE_DEFAULT = FALSE
			))
GO

IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name = 'udacitydemo_udacitydemo_dfs_core_windows_net') 
	CREATE EXTERNAL DATA SOURCE [udacitydemo_udacitydemo_dfs_core_windows_net] 
	WITH (
		LOCATION = 'abfss://udacitydemo@udacitydemo.dfs.core.windows.net' 
	)
GO

CREATE EXTERNAL TABLE dbo.trip_stage (
	[trip_id] nvarchar(4000),
	[rideable_type] nvarchar(4000),
	[start_at] datetime2(0),
	[ended_at] datetime2(0),
	[start_station_id] nvarchar(4000),
	[end_station_id] nvarchar(4000),
	[member_id] bigint
	)
	WITH (
	LOCATION = 'trips.csv',
	DATA_SOURCE = [udacitydemo_udacitydemo_dfs_core_windows_net],
	FILE_FORMAT = [SynapseDelimitedTextFormat]
	)
GO


SELECT TOP 100 * FROM dbo.trip_stage
GO
