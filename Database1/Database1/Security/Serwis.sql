CREATE TABLE [Uslugi]
(
[UslugiID] INT NOT NULL,
[Przeglad] NVARCHAR (25) NOT NULL,
[Wymiana_czesci_eksploatacyjnych] NVARCHAR (25) NOT NULL,
[Sprowadzenie_samochodu] NVARCHAR (25) NOT NULL,
[Auto_zastepcze] NVARCHAR (25) NOT NULL,
[Naprawa_w_ramach_gwarancji] NVARCHAR (25) NOT NULL,
[Jazda_probna] NVARCHAR (25) NOT NULL,
); 

CREATE TABLE [Zamowienia]
(
[Klient] NVARCHAR (25) NOT NULL,
[UslugiID] INT NOT NULL,
[StatusID] INT NOT NULL,
[ZamowienieID] INT NOT NULL,
);

SET IDENTITY_INSERT [dbo].[Zamowienia] ON

INSERT [dbo].[Zamowienia] ([Klient], [UslugiID], [StatusID]) VALUES ('Jakub_Nocon',1,1)
INSERT [dbo].[Zamowienia] ([Klient], [UslugiID], [StatusID]) VALUES ('Karolina_Budyn',3,2)
INSERT [dbo].[Zamowienia] ([Klient], [UslugiID], [StatusID]) VALUES ('Michal_Siano',5,3)
INSERT [dbo].[Zamowienia] ([Klient], [UslugiID], [StatusID]) VALUES ('Joanna_Moduch',6,4)

CREATE TABLE [Slownik]
(
[StatusID] INT NOT NULL,
[Status_zamowienia] NVARCHAR (25) NOT NULL,
);

SET IDENTITY_INSERT [dbo].[Slownik] ON

INSERT [dbo].[Slownik] ([StatusID],[Status_zamowienia]) VALUES (1, 'zlozone')
INSERT [dbo].[Slownik] ([StatusID],[Status_zamowienia]) VALUES (2, 'w_realizacji' )
INSERT [dbo].[Slownik] ([StatusID], [Status_zamowienia]) VALUES (3, 'czeka_na_odbior')
INSERT [dbo].[Slownik] ([StatusID], [Status_zamowienia]) VALUES (4, 'zamkniete')

SET IDENTITY_INSERT [dbo].[Slownik] OFF

CREATE TABLE [Historia]
(
[PracownikID] INT NOT NULL,
[ZamowienieID] INT NOT NULL,
[StatusID] INT NOT NULL,
[Data_ustawienia] NVARCHAR (25) NOT NULL,
);

SET IDENTITY_INSERT [dbo].[Historia] ON

INSERT [dbo].[Historia] ([PracownikID], [ZamowienieID], [StatusID], [Data_ustawienia]) VALUES (1,1,4,'2016/10/01')
INSERT [dbo].[Historia] ([PracownikID], [ZamowienieID], [StatusID], [Data_ustawienia]) VALUES (2,2,2,'2017/01/02')
INSERT [dbo].[Historia] ([PracownikID], [ZamowienieID], [StatusID], [Data_ustawienia]) VALUES (2,3,1,'2016/12/29')
INSERT [dbo].[Historia] ([PracownikID], [ZamowienieID], [StatusID], [Data_ustawienia]) VALUES (4,4,3,'2017/01/15')

SET IDENTITY_INSERT [dbo].[Historia] OFF

