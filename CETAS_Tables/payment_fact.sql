if OBJECT_name(' dbo.payment_fact') is not NULL
BEGIN
 drop external table  dbo.payment_fact;
end

CREATE EXTERNAL TABLE dbo.payment_fact
WITH (
    LOCATION     = 'payment_fact',
    DATA_SOURCE = [udacitydemo_udacitydemo_dfs_core_windows_net],
    FILE_FORMAT = [SynapseDelimitedTextFormat]
)  
AS
SELECT 
    payment_id, 
    amount, 
    date,
    account_num
FROM dbo.payment_stage 
