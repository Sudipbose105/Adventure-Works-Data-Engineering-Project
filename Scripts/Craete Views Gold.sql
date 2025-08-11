------------------------
-- CREATE VIEW CALENDAR
------------------------
CREATE VIEW gold.calendar
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awstoragesudip.blob.core.windows.net/silver/AdventureWorks_Calendar/',
            FORMAT = 'PARQUET'
        ) as QUER1



---CREATE VIEW CUSTOMERS
CREATE VIEW gold.customer
AS
SELECT
    *
FROM 
    OPENROWSET(
        BULK 'https://awstoragesudip.dfs.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT='PARQUET'
    ) as query1

---CREATE VIEW PRODUCTS
CREATE VIEW gold.products
AS
SELECT
    *
FROM 
    OPENROWSET(
        BULK 'https://awstoragesudip.dfs.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT='PARQUET'
    ) as query1

---CREATE VIEW Returns
CREATE VIEW gold.return_view
AS
SELECT
    *
FROM 
    OPENROWSET(
        BULK 'https://awstoragesudip.dfs.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT='PARQUET'
    ) as query1

---CREATE VIEW Sales
CREATE VIEW gold.sales
AS
SELECT
    *
FROM 
    OPENROWSET(
        BULK 'https://awstoragesudip.dfs.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT='PARQUET'
    ) as query1

---CREATE VIEW Subcategories
CREATE VIEW gold.subcategories
AS
SELECT
    *
FROM 
    OPENROWSET(
        BULK 'https://awstoragesudip.dfs.core.windows.net/silver/AdventureWorks_Subcategories/',
        FORMAT='PARQUET'
    ) as query1

---CREATE VIEW Territories
CREATE VIEW gold.territories
AS
SELECT
    *
FROM 
    OPENROWSET(
        BULK 'https://awstoragesudip.dfs.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT='PARQUET'
    ) as query1