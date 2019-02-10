CREATE TABLE [StanowiskoPracy]
(
[NazwaID] INT NOT NULL,
[Nazwa] NVARCHAR (25) NOT NULL,
);
GO
CREATE TABLE [Zespoly]
(
[ZespolID] INT NOT NULL,
[Sprzedawcy] NVARCHAR (25) NOT NULL,
[Administracja] NVARCHAR (25) NOT NULL,
);
GO
CREATE TABLE [m2m]
(
[Pracownicy] NVARCHAR (25) NOT NULL,
[Zespol] NVARCHAR (25) NOT NULL,

);
GO

SET IDENTITY_INSERT [dbo].[StanowiskoPracy] ON 

INSERT [dbo].[StanowiskoPracy] ([StanowiskoID], [NazwaStanowiska]) VALUES (1, N'Sprzedawca')
INSERT [dbo].[StanowiskoPracy] ([StanowiskoID], [NazwaStanowiska]) VALUES (2, N'Ksiegowa')
INSERT [dbo].[StanowiskoPracy] ([StanowiskoID], [NazwaStanowiska]) VALUES (3, N'Kierownik')
SET IDENTITY_INSERT [dbo].[StanowiskoPracy] OFF
SET IDENTITY_INSERT [dbo].[Zespoly] ON 

INSERT [dbo].[Zespoly] ([ZespolID], [NazwaZespolu]) VALUES (1, N'Sprzedawcy')
INSERT [dbo].[Zespoly] ([ZespolID], [NazwaZespolu]) VALUES (2, N'Administracja')
SET IDENTITY_INSERT [dbo].[Zespoly] OFF
INSERT [dbo].[m2m] ([StanowiskoID], [ZespolID]) VALUES (1, 2)
INSERT [dbo].[m2m] ([StanowiskoID], [ZespolID]) VALUES (2, 1)
INSERT [dbo].[m2m] ([StanowiskoID], [ZespolID]) VALUES (2, 2)
INSERT [dbo].[m2m] ([StanowiskoID], [ZespolID]) VALUES (3, 1)

select zs.NazwaZespolu, sp.NazwaStanowiska from Zespoly zs left join m2m mm on mm.ZespolID = zs.ZespolID left join StanowiskoPracy sp on mm.StanowiskoID = sp.StanowiskoID

-- polecenie D

CREATE TABLE [Stanowisko]
(
[StanowiskoID] INT NOT NULL,
[PracownikID] INT NOT NULL,
[DataRozpoczęcia] NVARCHAR (25) NOT NULL, 
[DataZakonczenia] NVARCHAR (25) NOT NULL,
PRIMARY KEY (PracownicyID),

)
GO

ALTER TABLE [dbo].[m2m]  WITH NOCHECK ADD  CONSTRAINT [FK_Stanowisko_m2m] FOREIGN KEY([StanowiskoID])
REFERENCES [dbo].[StanowiskoPracy] ([StanowiskoID])

SET IDENTITY_INSERT [dbo].[Stanowisko] ON

INSERT [dbo].[Stanowisko] ([StanowiskoID], [PracownikID], [DataRozpoczęcia], [DataZakonczenia]) VALUES (1,1,'2012/05/01',null)
INSERT [dbo].[Stanowisko] ([StanowiskoID], [PracownikID], [DataRozpoczęcia], [DataZakonczenia]) VALUES (1,2,'2012/05/09',null)
INSERT [dbo].[Stanowisko] ([StanowiskoID], [PracownikID], [DataRozpoczęcia], [DataZakonczenia]) VALUES (2,3,'2015/08/04',null)
INSERT [dbo].[Stanowisko] ([StanowiskoID], [PracownikID], [DataRozpoczęcia], [DataZakonczenia]) VALUES (2,4,'2016/01/25',null)
INSERT [dbo].[Stanowisko] ([StanowiskoID], [PracownikID], [DataRozpoczęcia], [DataZakonczenia]) VALUES (3,5,'2015/02/01',null)

SET IDENTITY_INSERT [dbo].[Stanowisko] OFF

CREATE TABLE [Wynagrodzenie]
(
[PracownikID] INT NOT NULL,
[Kwota] DECIMAL NOT NULL,
[OdZarobki] NVARCHAR (25) NOT NULL,
[DoZarobki] NVARCHAR (25) NOT NULL,
PRIMARY KEY (PracownikID),
);
GO

ALTER TABLE [dbo].[m2m] WITH NOCHECK ADD CONSTRAINT [FK_Stanowisko_m2m] FOREIGN KEY ([PracownicyID])
REFERENCES [dbo].[Wynagrodzenie] ([PracownikID])

SET IDENTITY_INSERT [dbo].[Wynagrodzenie] ON

INSERT [dbo].[Wynagrodzenie] ([PracownikID], [Kwota], [OdZarobki], [DoZarobki]) VALUES (1,10000,'2012/05/01','2012/06/01')
INSERT [dbo].[Wynagrodzenie] ([PracownikID], [Kwota], [OdZarobki], [DoZarobki]) VALUES (2,10000,'2012/05/09','2012/06/09')
INSERT [dbo].[Wynagrodzenie] ([PracownikID], [Kwota], [OdZarobki], [DoZarobki]) VALUES (3,12000,'2015/08/04','2015/09/04')
INSERT [dbo].[Wynagrodzenie] ([PracownikID], [Kwota], [OdZarobki], [DoZarobki]) VALUES (4,12000,'2016/01/25','2016/02/25')
INSERT [dbo].[Wynagrodzenie] ([PracownikID], [Kwota], [OdZarobki], [DoZarobki]) VALUES (5,15000,'2015/02/01','2015/03/01')

SET IDENTITY_INSERT [dbo].[Wynagrodzenie] OFF

CREATE TABLE [Wyplaty]
(
[PracowikID] INT NOT NULL,
[Kwota] DECIMAL NOT NULL,
[Premia] BIT NOT NULL,
[Pensja] BIT NOT NULL,
[OkresOd] NVARCHAR (25) NOT NULL,
[OkresDo] NVARCHAR (25) NOT NULL,
PRIMARY KEY (PracownikID),
);
GO

ALTER TABLE [dbo].[m2m] WITH NOCHECK ADD CONSTRAINT [FK_Wynagrodzenie_m2m] FOREIGN KEY ([PracownicyID])
REFERENCES [dbo].[Wyplaty] ([PracownikID])

SET IDENTITY_INSERT [dbo].[Wyplaty] ON

INSERT [dbo].[Wyplaty] ([PracowikID], [Kwota], [Premia], [Pensja], [OkresOd], [OkresDo]) VALUES (1,10000,0,1,'2012/05/01','2012/06/01')
INSERT [dbo].[Wyplaty] ([PracowikID], [Kwota], [Premia], [Pensja], [OkresOd], [OkresDo]) VALUES (2,10000,1,0,'2012/05/09','2012/06/09')
INSERT [dbo].[Wyplaty] ([PracowikID], [Kwota], [Premia], [Pensja], [OkresOd], [OkresDo]) VALUES (3,12000,0,0,'2015/08/04','2015/09/04')
INSERT [dbo].[Wyplaty] ([PracowikID], [Kwota], [Premia], [Pensja], [OkresOd], [OkresDo]) VALUES (4,12000,0,1,'2016/01/25','2016/02/25')
INSERT [dbo].[Wyplaty] ([PracowikID], [Kwota], [Premia], [Pensja], [OkresOd], [OkresDo]) VALUES (5,15000,1,1,'2015/02/01','2015/03/01')

SET IDENTITY_INSERT [dbo].[Wyplaty] OFF






