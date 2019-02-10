CREATE TABLE [dbo].[Modele]
(
    [ModelId] INT, --PK (NOT NULL),
	[MarkaId] INT, --FK 
    [NazwaModelu] NVARCHAR(25)NOT NULL,
    [KolorModelu] NVARCHAR(15),
    [DataProdukcji] DATETIME CHECK(DataProdukcji<getDate()),
    [DataRejestracji] DATETIME CHECK(DataRejestracji<= getDate())NOT NULL,
    [PojemnoscSilnika] NVARCHAR (4),
    [DataPrzyjecia] DATETIME DEFAULT(getDate()),
    [DataSprzedazy] DATETIME CHECK(DataSprzedazy<= getDate()),
	[Rezerwacja] BIT,
	[NumerVIN] NVARCHAR (17) NOT NULL,
    [TypNadwozia] NVARCHAR(10),  
	[RodzajPojazdu] NVARCHAR(15),  
    CONSTRAINT [PK_Modele] PRIMARY KEY CLUSTERED ([ModelId])
);
GO
--KLUCZE OBCE I INDEKSY DO NICH

ALTER TABLE [dbo].[Modele] ADD CONSTRAINT [FK_ModelMarkaId]
    FOREIGN KEY ([MarkaId]) REFERENCES [dbo].[Marki] ([MarkaId]) ON DELETE SET NULL ON UPDATE SET NULL;
GO
CREATE INDEX [IFK_ModeleMarkaId] ON [dbo].[Modele] ([MarkaId]);