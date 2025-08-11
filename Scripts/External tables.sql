CREATE MASTER KEY ENCRYPTION BY PASSWORD='Sudip58$'

CREATE DATABASE SCOPED CREDENTIAL cred_sudip
WITH IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION ='https://awstoragesudip.blob.core.windows.net/silver',
    CREDENTIAL=cred_sudip
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION ='https://awstoragesudip.blob.core.windows.net/gold',
    CREDENTIAL=cred_sudip
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE=PARQUET,
    DATA_COMPRESSION='org.apache.hadoop.io.compress.SnappyCodec'
)

------CREATE EXTERNAL TABLE EXTERNAL_SALES

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION='extsales',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT * FROM gold.sales

SELECT * FROM gold.extsales







