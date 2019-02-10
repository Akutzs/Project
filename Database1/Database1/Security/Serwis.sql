CREATE TABLE [Uslugi]
(
[UslugiID] INT NOT NULL,
[NazwaUslugi] NVARCHAR (25) NOT NULL,
); 

CREATE TABLE [Zamowienia]
(
[Klient] NVARCHAR (25) NOT NULL,
[UslugiID] INT NOT NULL,
[StatusID] INT NOT NULL,
[ZamowienieID] INT NOT NULL,
);

SET IDENTITY_INSERT [dbo].[Zamowienia] ON

INSERT [dbo].[Zamowienia] ([Klient], [UslugiID], [StatusID], [ZamowienieID]) VALUES ('Jakub_Nocon',1,1,1)
INSERT [dbo].[Zamowienia] ([Klient], [UslugiID], [StatusID], [ZamowienieID]) VALUES ('Karolina_Budyn',3,2,2)
INSERT [dbo].[Zamowienia] ([Klient], [UslugiID], [StatusID], [ZamowienieID]) VALUES ('Michal_Siano',5,3,3)
INSERT [dbo].[Zamowienia] ([Klient], [UslugiID], [StatusID], [ZamowienieID]) VALUES ('Joanna_Moduch',6,4,4)

CREATE TABLE [Slownik]
(
[StatusID] INT NOT NULL,
[StatusZamowienia] NVARCHAR (25) NOT NULL,
);

SET IDENTITY_INSERT [dbo].[Slownik] ON

INSERT [dbo].[Slownik] ([StatusID],[StatusZamowienia]) VALUES (1, 'zlozone')
INSERT [dbo].[Slownik] ([StatusID],[StatusZamowienia]) VALUES (2, 'wrealizacji' )
INSERT [dbo].[Slownik] ([StatusID], [StatusZamowienia]) VALUES (3, 'czekanaodbior')
INSERT [dbo].[Slownik] ([StatusID], [StatusZamowienia]) VALUES (4, 'zamkniete')

SET IDENTITY_INSERT [dbo].[Slownik] OFF

CREATE TABLE [Historia]
(
[PracownikID] INT NOT NULL,
[ZamowienieID] INT NOT NULL,
[StatusID] INT NOT NULL,
[DataUstawienia] NVARCHAR (25) NOT NULL,
);

SET IDENTITY_INSERT [dbo].[Historia] ON

INSERT [dbo].[Historia] ([PracownikID], [ZamowienieID], [StatusID], [DataUstawienia]) VALUES (1,1,4,'2016/10/01')
INSERT [dbo].[Historia] ([PracownikID], [ZamowienieID], [StatusID], [DataUstawienia]) VALUES (2,2,2,'2017/01/02')
INSERT [dbo].[Historia] ([PracownikID], [ZamowienieID], [StatusID], [DataUstawienia]) VALUES (2,3,1,'2016/12/29')
INSERT [dbo].[Historia] ([PracownikID], [ZamowienieID], [StatusID], [DataUstawienia]) VALUES (4,4,3,'2017/01/15')

SET IDENTITY_INSERT [dbo].[Historia] OFF

