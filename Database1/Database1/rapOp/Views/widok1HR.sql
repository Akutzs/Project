CREATE VIEW [rapOp].[Widok1HR]
AS
SELECT 
[sp].[NazwaStanowiska],
[st].[PracownikID],
[w].[OdZarobki],
[w].[DoZarobki],
[w].[Kwota]
FROM
[dbo].[StanowiskoPracy] AS [sp]

INNER JOIN [dbo].[Stanowisko] AS [st] ON [sp].[StanowiskoID] = [st].[StanowiskoID]
INNER JOIN [dbo].[Wynagrodzenie] AS [w] ON [st].[PracownikID] = [w].[PracownikID]

GROUP BY 
[st].[NazwaStanowiska]
-- od kad pracuje, id pracownika, stanowisko ktore wykonuje i jego wynagrodzenie