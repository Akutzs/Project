CREATE TABLE [dbo].[Klienci]
(
	[KlientId] INT, --PK (NOT NULL),
	[ImieKlienta] NVARCHAR (15) NOT NULL,
	[NazwiskoKlienta] NVARCHAR (25) NOT NULL,
	[NrDowoduOsobistego] NCHAR (9) UNIQUE NOT NULL, -- zawsze 3 litery i 6 cyfr
	CONSTRAINT [PK_Klienci] PRIMARY KEY CLUSTERED ([KlientId])
);