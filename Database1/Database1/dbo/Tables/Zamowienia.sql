CREATE TABLE [dbo].[Zamowienia]
(
	[ZamowienieId] INT,		--PK (NOT NULL),
	[ModelId] INT,			--FK (NOT NULL),
	[PracownikId] INT,		--FK (NOT NULL),
	[KlientId] INT,			--FK (NOT NULL),
	[Cena] MONEY CHECK(Cena > 0) NOT NULL,
	[DataZamowienia] DATETIME DEFAULT(GetDate())NOT NULL,
	[DataPlanowanegoOdbioru] DATETIME,
	[Realizacja] BIT NOT NULL, --  czy zamówienie zostało już zrealizowane 
	[Oplata] BIT NOT NULL, --  czy zamówienie zostało już opłacone
	CONSTRAINT [PK_Zamowienia] PRIMARY KEY CLUSTERED ([ZamowienieId])
);
GO
ALTER TABLE [dbo].[Zamowienia] ADD CONSTRAINT [FK_ZamowienieKlientId]
    FOREIGN KEY ([KlientId]) REFERENCES [dbo].[Klienci] ([KlientId]) ON DELETE SET NULL ON UPDATE SET NULL;
GO
ALTER TABLE [dbo].[Zamowienia] ADD CONSTRAINT [FK_ZamowienieModelId]
    FOREIGN KEY ([ModelId]) REFERENCES [dbo].[Modele] ([ModelId]) ON DELETE SET NULL ON UPDATE SET NULL;
GO
ALTER TABLE [dbo].[Zamowienia] ADD CONSTRAINT [FK_ZamowieniePracownikId]
    FOREIGN KEY ([PracownikId]) REFERENCES [dbo].[Pracownicy] ([PracownikId]) ON DELETE SET NULL ON UPDATE SET NULL;
GO
CREATE INDEX [IFK_ZamowienieKlientId] ON [dbo].[Zamowienia] ([KlientId]);
GO
CREATE INDEX [IFK_ZamowienieModelId] ON [dbo].[Zamowienia] ([ModelId]);