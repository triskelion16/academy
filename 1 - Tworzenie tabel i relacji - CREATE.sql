/****************************************************************************/
/****************************************************************************/

-- Stworzenie nowej bazy danych; (Nale¿y wykonaæ jako osobne zapytanie a dopiero nastêpnie tworzyæ tabele)
USE master;
CREATE DATABASE Dziekanat;

/****************************************************************************/
/****************************************************************************/

-- Utworzenie tabeli 'Semestr'

CREATE TABLE Dziekanat.dbo.Semestr
(
	IdSemestr		 int identity (1,1) primary key not null,
	NrSemestru		 char(5) not null
);
GO

/****************************************************************************/

-- Utworzenie tabeli 'Student'

CREATE TABLE Dziekanat.dbo.Student
(
	IdStudent		 int identity (1,1) primary key not null,
	Imie			 nvarchar(20) not null,
	Nazwisko		 nvarchar(30) not null,
	DataUrodzenia	 date,
	Kierunek		 nvarchar(20) not null default 'Informatyka',
	IdSemestr		 int CONSTRAINT FK_Semestr REFERENCES Dziekanat.dbo.Semestr(IdSemestr)
);
GO

/****************************************************************************/

-- Utworzenie tabeli 'Stopieñ Naukowy'

CREATE TABLE Dziekanat.dbo.StopienNaukowy
(
	IdStopienNaukowy	 int identity (1,1) primary key not null,
	Tytul				 nvarchar(10) not null default 'dr'
);
GO

/****************************************************************************/

-- Utworzenie tabeli 'Wyk³adowca'

CREATE TABLE Dziekanat.dbo.Wykladowca
(
	IdWykladowca	 int identity (1,1) primary key not null,
	Imie			 nvarchar(20) not null,
	Nazwisko		 nvarchar(30) not null,
	Wydzial			 nvarchar(50) not null default 'Zastosowañ matematyki i informatyki',
	IdStopienNaukowy int CONSTRAINT FK_Stopien REFERENCES Dziekanat.dbo.StopienNaukowy(IdStopienNaukowy)
);
GO

/****************************************************************************/

-- Utworzenie tabeli 'Przedmiot'

CREATE TABLE Dziekanat.dbo.Przedmiot
(
	IdPrzedmiot		 int identity (1,1) primary key not null,
	Nazwa			 nvarchar(50) not null,
	IdSemestr		 int CONSTRAINT FK_Semestr2 REFERENCES Dziekanat.dbo.Semestr(IdSemestr),
	IdWykladowca	 int CONSTRAINT FK_Wykladowca REFERENCES Dziekanat.dbo.Wykladowca(IdWykladowca)
);
GO

/****************************************************************************/

-- Utworzenie tabeli 'Rodzaj Oceny'

CREATE TABLE Dziekanat.dbo.RodzajOceny
(
	IdRodzajOceny	 int identity (1,1) primary key not null,
	Nazwa			 nvarchar(30) not null
);
GO

/****************************************************************************/

-- Utworzenie tabeli 'Oceny'

CREATE TABLE Dziekanat.dbo.Oceny
(
	IdOceny			 int identity (1,1) primary key not null,
	IdStudent		 int CONSTRAINT FK_Student REFERENCES Dziekanat.dbo.Student(IdStudent),
	IdPrzedmiot		 int CONSTRAINT FK_Przedmiot2 REFERENCES Dziekanat.dbo.Przedmiot(IdPrzedmiot),
	Ocena			 char(5) not null,
	IdRodzajOceny	 int CONSTRAINT FK_RodzajOceny REFERENCES Dziekanat.dbo.RodzajOceny(IdRodzajOceny),
	DataWystawienia	 date not null default getdate()
);
GO