CREATE VIEW [rapOp].[Widok2]
	AS

	SELECT
		[za].[ZamowienieId] AS [Lista zamówień],
		(([ce].[Cena] - [za].[Cena])/[ce].[Cena])*100 AS [Rabat w %]
	FROM
					[dbo].[Zamowienia]	AS [za]
		INNER JOIN	[dbo].[Cennik]		AS [ce] ON [za].[ModelId] = [ce].[ModelId]
	GROUP BY
		[za].[ZamowienieId],
		[za].[Cena],
		[ce].[Cena]



GO