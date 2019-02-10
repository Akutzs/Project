CREATE VIEW [rapOp].[Widok3Serwis]
AS
SELECT [z].[Klient],
[h].[StatusID],
[h].[DataUstawienia]

FROM [dbo].[Zamowienia] AS [z]

INNER JOIN [dbo].[Slownik] AS [s] ON [z].[StatusID] = [s].[StatusID]
INNER JOIN [dbo].[Historia] AS [h] ON [z].[ZamowienieId] = [h].[ZamowienieId]

GROUP BY 
[z].[Klient]