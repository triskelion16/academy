/*************************************************************************/

USE Dziekanat


/*********************************** SELECT 1 ************************************/
/********* Lista studentów, których imiona zaczynaj¹ siê na literê 'A' ***********/
/*********                i studiuj¹ 'Informatykê'                     ***********/

SELECT St.*
FROM Dziekanat.dbo.Student St

WHERE St.Imie LIKE 'A%' AND St.Kierunek = 'Informatyka'



/*********************************** SELECT 2 ************************************/
/**********        Lista studentów wraz z ocenami z przedmiotów,       ***********/
/**********    gdzie wymagany by³ egzamin (sortowanie wg semestru)     ***********/

SELECT  St.Imie +' '+ St.Nazwisko as Student,
		O.Ocena,
		P.Nazwa
FROM Dziekanat.dbo.Oceny O INNER JOIN Dziekanat.dbo.Student St ON St.IdStudent=O.IdStudent
						   INNER JOIN Dziekanat.dbo.Przedmiot P ON P.IdPrzedmiot=O.IdPrzedmiot
						   INNER JOIN Dziekanat.dbo.RodzajOceny Ro ON Ro.IdRodzajOceny=O.IdRodzajOceny

WHERE Ro.Nazwa = 'Egzamin'

ORDER by P.IdSemestr



/*********************************** SELECT 3 ************************************/
/**********            Lista wyk³adowców, którzy nie zostali           ***********/
/**********             przydzieleni do ¿adnego przedmiotu             ***********/

SELECT  W.IdWykladowca,
		SN.Tytul as Tytu³,
		W.Imie,
		W.Nazwisko
FROM Dziekanat.dbo.Wykladowca W INNER JOIN Dziekanat.dbo.StopienNaukowy SN ON SN.IdStopienNaukowy=W.IdStopienNaukowy

WHERE NOT EXISTS 
		(
			SELECT P.*
			FROM Dziekanat.dbo.Przedmiot P
			WHERE W.IdWykladowca = P.IdWykladowca
		)



/*********************************** SELECT 4 ************************************/
/********** Lista studentów, którzy urodzili siê pomiêdzy 1983 a 1989 rokiem ***********/
/**********                    sortowanie od najstarszego                    ***********/

SELECT St.IdStudent as [Nr indeksu],
		St.Imie,
		St.Nazwisko,
		St.DataUrodzenia,
		Se.NrSemestru as Semestr
FROM Dziekanat.dbo.Student St INNER JOIN Dziekanat.dbo.Semestr Se ON Se.IdSemestr=St.IdSemestr

WHERE St.DataUrodzenia BETWEEN '1983-01-01' AND '1988-12-31'

ORDER by St.DataUrodzenia



/*********************************** SELECT 5 ************************************/
/**********          Wyœwietla œredni¹ ocen z ka¿dego semestru         ***********/

SELECT  S.NrSemestru as [Numer semestru],
		ROUND(AVG(TRY_CONVERT(float,O.Ocena)),2) as [Œrednia z semestru]
FROM Dziekanat.dbo.Oceny O INNER JOIN Dziekanat.dbo.Przedmiot P ON P.IdPrzedmiot=O.IdPrzedmiot
						   INNER JOIN Dziekanat.dbo.Semestr S ON S.IdSemestr=P.IdSemestr

GROUP by S.NrSemestru 



/*********************************** UPDATE 1 ************************************/
/********** Aktualizacja zmieniaj¹ca stopieñ naukowy z 'dr' na 'dr hab.' ***********/
/**********                  dla wyk³adowcy o nr Id = 10                 ***********/

UPDATE Dziekanat.dbo.Wykladowca SET IdStopienNaukowy = 3
WHERE IdWykladowca = 10



/*********************************** UPDATE 2 ************************************/
/**********   Aktualizacja zmieniaj¹ca nazwisko studentowi o podanym   ***********/
/**********                     imieniu i nazwisku                     ***********/

UPDATE Dziekanat.dbo.Student SET Nazwisko = 'Lipska-Kot'
WHERE Nazwisko = 'Lipska' AND Imie = 'Patrycja'



/*********************************** UPDATE 3 ************************************/
/**********   Aktualizacja zmienia wyk³adowcê przedmiotów, które by³y  ***********/
/**********        prowadzone do innego wyk³adowcy (po nr Id)          ***********/

DECLARE @NowyWykladowca int = 1,
		@StaryWykladowca int = 11

UPDATE Dziekanat.dbo.Przedmiot SET IdWykladowca = @NowyWykladowca
WHERE IdWykladowca = @StaryWykladowca



/*********************************** UPDATE 4 ************************************/
/**********        Aktualizacja zmienia rodzaj oceny z przedmiotu      ***********/
/**********                   podanym jako zmienna                     ***********/

DECLARE @RodzajNazwa nvarchar(10) = 'Zaliczenie',
		@PrzedmiotNazwa nvarchar(50) = 'Podstawy fizyki'

UPDATE Dziekanat.dbo.RodzajOceny SET Nazwa = @RodzajNazwa
FROM Dziekanat.dbo.RodzajOceny RO INNER JOIN Dziekanat.dbo.Oceny O ON O.IdRodzajOceny=RO.IdRodzajOceny
								  INNER JOIN Dziekanat.dbo.Przedmiot P ON P.IdPrzedmiot=O.IdPrzedmiot

WHERE P.Nazwa = @PrzedmiotNazwa



/*********************************** UPDATE 5 ************************************/
/**********       Aktualizacje datê wystawienia oceny z przedmiotu     ***********/
/**********         prowadzonego przez wyk³adowcê o podanym 'Id '      ***********/

DECLARE @NowaData date = '2015-06-01',
		@Wykladowca int = 21

UPDATE Dziekanat.dbo.Oceny SET DataWystawienia = @NowaData
FROM Dziekanat.dbo.Oceny O INNER JOIN Dziekanat.dbo.Przedmiot P ON P.IdPrzedmiot=O.IdPrzedmiot
						   INNER JOIN Dziekanat.dbo.Wykladowca W ON W.IdWykladowca=P.IdWykladowca

WHERE W.IdWykladowca = @Wykladowca



/*********************************** DELETE 1 ************************************/
/**********          Usuwa rekordy z tabeli 'Oceny', w których         ***********/
/**********                studenci otrzymali ocenê = '2'              ***********/

DELETE 
FROM Dziekanat.dbo.Oceny 
WHERE Ocena = '2'



/*********************************** DELETE 2 ************************************/
/**********     Usuwa wyk³adowców, którzy nie zostali przydzieleni     ***********/
/**********                    do ¿adnego przedmiotu                   ***********/

DELETE W
FROM Dziekanat.dbo.Wykladowca W
WHERE NOT EXISTS 
		(
			SELECT P.*
			FROM Dziekanat.dbo.Przedmiot P
			WHERE W.IdWykladowca = P.IdWykladowca
		)



/*********************************** DELETE 3 ************************************/
/**********          Usuwa te dane z tabeli 'Oceny', w których         ***********/
/**********     data wystawienia jest starsza ni¿ podana w zmiennej    ***********/

DECLARE @Data date = '2015-06-10'

DELETE 
FROM Dziekanat.dbo.Oceny 
WHERE DataWystawienia < @Data



/*********************************** DELETE 4 ************************************/
/**********         Usuwa te przedmioty, w których nie zosta³a         ***********/
/**********                   wystawiona ¿adna ocena                   ***********/

DELETE P
FROM Dziekanat.dbo.Przedmiot P
WHERE  NOT EXISTS 
		(
			SELECT O.*
			FROM Dziekanat.dbo.Oceny O 
			WHERE P.IdPrzedmiot = O.IdPrzedmiot
		)



/*********************************** DELETE 5 ************************************/
/**********      Usuwa zbiorczo wszystkie rekordy z tabeli 'Oceny'     ***********/

TRUNCATE TABLE Dziekanat.dbo.Oceny
