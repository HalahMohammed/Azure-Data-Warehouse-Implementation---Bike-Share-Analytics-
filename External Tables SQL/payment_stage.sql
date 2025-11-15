
drop EXTERNAL table dbo.payment_stage
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

CREATE EXTERNAL TABLE dbo.payment_stage (
	[payment_id] bigint,
	[date] date,
	[amount] float,
	[account_num] bigint
	)
	WITH (
	LOCATION = 'payments.csv',
	DATA_SOURCE = [udacitydemo_udacitydemo_dfs_core_windows_net],
	FILE_FORMAT = [SynapseDelimitedTextFormat]
	)
GO


SELECT TOP 100 * FROM dbo.payment_stage
GO
