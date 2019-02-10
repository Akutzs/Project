CREATE TABLE [dbo].[Cennik]
(
	[CenaId] INT,  --PK (NOT NULL),
	[ModelId] INT, --FK (NOT NULL),
	[Cena] MONEY CHECK(Cena > 0) NOT NULL, -- w zł
	[DataOdKiedyObowiazujeCena] DATETIME NOT NULL,
	[DataDoKiedyObowiazujeCena] DATETIME ,
	CONSTRAINT [PK_Cennik] PRIMARY KEY CLUSTERED ([CenaId])
);
GO
ALTER TABLE [dbo].[Cennik] ADD CONSTRAINT [FK_CenaModelId]
    FOREIGN KEY ([ModelId]) REFERENCES [dbo].[Modele] ([ModelId]) ON DELETE SET NULL ON UPDATE SET NULL;
GO
CREATE INDEX [IFK_CenaModelId] ON [dbo].[Cennik] ([ModelId]);