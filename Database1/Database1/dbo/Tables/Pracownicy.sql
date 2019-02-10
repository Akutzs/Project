CREATE TABLE [dbo].[Pracownicy]
(
	[PracownikId] INT,  --PK (NOT NULL),
	[ImiePracownika] NVARCHAR (15) NOT NULL,
	[NazwiskoPracownika] NVARCHAR (25) NOT NULL,
	[PESELPracownika] NCHAR (11) UNIQUE NOT NULL, -- zawsze 11 cyfr, bez potrzeby operacji algebraicznych
	[DataZatrudnienia] DATETIME DEFAULT(getDate()),
    CONSTRAINT [PK_Pracownicy] PRIMARY KEY CLUSTERED ([PracownikId])
);
GO
CREATE INDEX [IFK_ZamowieniePracownikId] ON [dbo].[Pracownicy] ([PracownikId]);