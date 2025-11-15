if OBJECT_ID('dbo.date_dim') is not NULL
begin 
  drop EXTERNAL table dbo.date_dim
END
create EXTERNAL table dbo.date_dim with(
    LOCATION='date_dim',
    DATA_SOURCE=[udacitydemo_udacitydemo_dfs_core_windows_net],
    FILE_FORMAT=[SynapseDelimitedTextFormat]
) 
AS SELECT CAST(date as date) full_date,
DATEPART(YEAR,date) year,
DATEPART(MONTH,date) MONTH,
DATEPART(QUARTER,date) Quarter,
DATEPART(week,date) week,
DATENAME(weekday, date) day
from dbo.payment_stage

