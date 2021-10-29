/****** Script for SelectTopNRows command from SSMS  ******/
USE DBASFE
TRUNCATE TABLE secondout_cleaned;
GO

INSERT INTO secondout_cleaned
SELECT  convert(datetime2,replace([column1],'''',''))
      ,convert(numeric(18,10),column2)
      ,convert(numeric(18,10),column3)
      ,convert(numeric(18,10),column4)
      ,replace([column5],'''','')
  FROM [DBASFE].[dbo].[secondoutv2];
GO

  