/*************************************************************************/

USE Dziekanat


/****************************** Widok 1 **********************************/
/********************* Lista wszystkich student�w ************************/

CREATE VIEW ListaStudentow
as

	SELECT top 100 percent  
			ST.IdStudent as [Numer indeksu], 
			ST.Imie + ' ' + ST.Nazwisko as Student, 
			ST.DataUrodzenia, 
			ST.Kierunek, 
			SE.NrSemestru as [Numer semestru]
	FROM Dziekanat.dbo.Student ST INNER JOIN Dziekanat.dbo.Semestr SE ON SE.IdSemestr=ST.IdSemestr

	ORDER by SE.IdSemestr ASC
	


/****************************** Widok 2 **********************************/
/*********** Lista student�w, kt�rzy nie zaliczyli semestru **************/

CREATE VIEW StudenciZWarunkiem
as

	SELECT top 100 percent
			ST.IdStudent as [Numer indeksu],
			ST.Imie,
			ST.Nazwisko,
			SE.NrSemestru as [Numer semestru],
			P.Nazwa as [Nazwa przedmiotu],
			O.DataWystawienia as [Data wystawienia]
	FROM Dziekanat.dbo.Oceny O INNER JOIN Dziekanat.dbo.Student ST ON ST.IdStudent=O.IdStudent
							   INNER JOIN Dziekanat.dbo.Przedmiot P ON P.IdPrzedmiot=O.IdPrzedmiot
							   INNER JOIN Dziekanat.dbo.Semestr SE ON SE.IdSemestr=ST.IdSemestr
	WHERE O.Ocena = '2'

	ORDER by SE.IdSemestr ASC



/****************************** Widok 3 **********************************/
/******************* Lista 10 najlepszych student�w **********************/

CREATE VIEW NajlepsiStudenci
as

	SELECT  top 10
			ST.Imie,
			ST.Nazwisko,
			ROUND(AVG(TRY_CONVERT(float,O.Ocena)),2) as �rednia

	FROM Dziekanat.dbo.Student ST INNER JOIN Dziekanat.dbo.Oceny O ON O.IdStudent=ST.IdStudent

	GROUP by ST.Imie, ST.Nazwisko

	ORDER by �rednia DESC



/******************************* Widok 4 **********************************/
/******************* Lista przedmiot�w, gdzie �rednia ocen jest mniejsza ni� 4 **********************/

CREATE VIEW SredniaZPrzedmiotow
as

	SELECT top 100 percent
			P.Nazwa as [Nazwa przedmiotu],
			ROUND(AVG(TRY_CONVERT(float,O.Ocena)),2) as [�rednia ocen],
			SN.Tytul +' '+ W.Imie +' '+ W.Nazwisko as [Wystawi�]

	FROM Dziekanat.dbo.Przedmiot P INNER JOIN Dziekanat.dbo.Oceny O ON O.IdPrzedmiot=P.IdPrzedmiot
								   INNER JOIN Dziekanat.dbo.Wykladowca W ON W.IdWykladowca=P.IdWykladowca
								   INNER JOIN Dziekanat.dbo.StopienNaukowy SN ON SN.IdStopienNaukowy=W.IdStopienNaukowy

	GROUP by P.Nazwa, W.Imie, W.Nazwisko, SN.Tytul

	HAVING AVG(TRY_CONVERT(float,O.Ocena)) < 4

	ORDER by [�rednia ocen] DESC



/****************************** Widok 5 **********************************/
/******************* Lista student�w starszych ni� �rednia wieku wszystkich student�w **********************/

CREATE VIEW StarsiNizSrednia
as

	SELECT top 100 percent
			S.IdStudent as [Numer indeksu],
			S.Imie,
			S.Nazwisko,
			YEAR(GETDATE()) - YEAR(S.DataUrodzenia) as Lat

	FROM Dziekanat.dbo.Student S

	WHERE (YEAR(GETDATE()) - YEAR(S.DataUrodzenia)
		  > (SELECT AVG(YEAR(GETDATE()) - YEAR(S.DataUrodzenia)) as �redniWieku
			 FROM Dziekanat.dbo.Student S))

	ORDER by Lat ASC