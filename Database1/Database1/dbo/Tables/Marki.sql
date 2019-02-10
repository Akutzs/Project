--TABELE

CREATE TABLE [dbo].[Marki]
(
    [MarkaId] INT, --PK (NOT NULL),  przez polecenie ON DELETE SET NULL ON UPDATE SET NULL nie może być tu 'NOT NULL'
    [NazwaMarki] NVARCHAR(160) NOT NULL,
    CONSTRAINT [PK_Marki] PRIMARY KEY CLUSTERED ([MarkaId])
);