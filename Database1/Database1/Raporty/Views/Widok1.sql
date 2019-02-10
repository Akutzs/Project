-- widok 1.

	CREATE VIEW [Raporty].[Widok1]
	AS

	SELECT
		[ma].[NazwaMarki]	AS [Marki],
		COUNT(*)			AS [Ilość zamówień],
		SUM ([Cena])		AS [Sumaryczna kwota sprzedaży]

	FROM
					[dbo].[Marki] AS [ma]
		INNER JOIN	[dbo].[Modele] AS [mo] ON [ma].[MarkaId] = [mo].[MarkaId]
		INNER JOIN	[dbo].[Zamowienia] AS [za] ON [mo].[ModelId] = [za].[ModelId]
	GROUP BY
		[ma].[NazwaMarki]