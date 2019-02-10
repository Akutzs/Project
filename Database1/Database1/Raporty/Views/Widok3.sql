-- widok  3.

	CREATE VIEW [Raporty].[Widok3]
	AS

	SELECT
		[ma].[NazwaMarki],
		[mo].[NazwaModelu],
		[mo].[NumerVIN],
		[mo].[KolorModelu],
		[mo].[PojemnoscSilnika],
		[mo].[TypNadwozia],
		[mo].[RodzajPojazdu]
		
	FROM
				[dbo].[Modele]		AS [mo]
	LEFT JOIN	[dbo].[Zamowienia]	AS [za] ON [mo].[ModelId] = [za].[ModelId]
	INNER JOIN	[dbo].[Marki]		AS [ma] ON [mo].[MarkaId] = [ma].[MarkaId]
	WHERE
		[za].[ZamowienieId] IS NULL