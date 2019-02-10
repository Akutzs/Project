-- widok  4.

	CREATE VIEW [rapOp].[Widok4]
	AS

	SELECT
		[p].ImiePracownika,
		[p].NazwiskoPracownika,
		[p].PESELPracownika,
		[p].DataZatrudnienia,
		COUNT (*) AS [Ile zamówień],
		SUM ([Cena])AS [Łączna kwota]		
	FROM
				[dbo].[Pracownicy]	AS [p]
	LEFT JOIN	[dbo].[Zamowienia]	AS [za] ON [p].[PracownikId] = [za].[PracownikId]
	GROUP BY
		[p].PracownikId,
		[p].ImiePracownika,
		[p].NazwiskoPracownika,
		[p].PESELPracownika,
		[p].DataZatrudnienia