CREATE VIEW [rapOp].[Widok2Serwis]
AS
SELECT [z].[Klient],
[u].[NazwaUslugi],
[s].[StatusZamowienia]

FROM [dbo].[Uslugi] AS [u] 
INNER JOIN [dbo].[Zamowienia] AS [z] ON [u].[UslugiID] = [z].[UslugiID]
INNER JOIN [dbo].[Slownik] AS [s] ON [z].[StatusID] = [s].[StatusID]

GROUP BY
[z].[Klient]

-- do kazdego klienta jaka usluge wybral i jaki jest jej status tej uslugi