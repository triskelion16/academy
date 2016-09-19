/*************************************************************************/

USE Dziekanat


/********************* Procedura 1 ************************/
/************** List wyk�adowc�w (alfabetycznie) z tytu�em 'doktor' *****************/

CREATE PROC Wykladowcy_dr
as
	BEGIN
			SELECT top 100 percent
					W.IdWykladowca,
					W.Nazwisko,
					W.Imie,
					W.Wydzial as Wydzia�

			FROM Dziekanat.dbo.Wykladowca W INNER JOIN Dziekanat.dbo.StopienNaukowy SN ON SN.IdStopienNaukowy=W.IdStopienNaukowy

			WHERE SN.Tytul = 'dr'

			ORDER by W.Nazwisko ASC
	END

---------------------------------------------
EXEC Wykladowcy_dr



/********************* Procedura 2 ************************/
/************** Lista student�w z ocen� podan� jako parametr *****************/

CREATE PROC StudenciZOcena_Parametr
		@Ocena char(5)
as
	BEGIN
			SELECT top 100 percent
					ST.IdStudent as [Numer indeksu],
					ST.Nazwisko,
					ST.Imie,
					P.Nazwa as [Nazwa przedmiotu]

			FROM Dziekanat.dbo.Oceny O INNER JOIN Dziekanat.dbo.Student ST ON ST.IdStudent=O.IdStudent
									   INNER JOIN Dziekanat.dbo.Przedmiot P ON P.IdPrzedmiot=O.IdPrzedmiot

			WHERE O.Ocena = @Ocena

			ORDER by ST.Nazwisko
	END

------------------------------------------------
EXEC StudenciZOcena_Parametr '4,5'



/********************* Procedura 3 ************************/
/************** Procedura dodaje wyk�adowc�w do tabeli i wy�wietla t� tabel� *****************/

CREATE PROC DodawanieWykladowcow
		@Imie nvarchar(20), 
		@Nazwisko nvarchar(30), 
		@Wydzual nvarchar(50), 
		@IdStopienNaukowy int
as
	BEGIN
			INSERT INTO Dziekanat.dbo.Wykladowca VALUES (@Imie, @Nazwisko, @Wydzual, @IdStopienNaukowy)

			PRINT 'Dodano nowy rekord'

			SELECT top 100 percent
					W.IdWykladowca,
					W.Imie,
					W.Nazwisko,
					W.Wydzial,
					SN.Tytul
			FROM Dziekanat.dbo.Wykladowca W INNER JOIN Dziekanat.dbo.StopienNaukowy SN ON SN.IdStopienNaukowy=W.IdStopienNaukowy
			ORDER by IdWykladowca DESC
	END

------------------------------------------------------
EXEC DodawanieWykladowcow '�ukasz', 'Jankowski', 'Nauk spo�ecznych', 2



/********************* Procedura 4 ************************/
/************** Procedura pr�buje usun�� wyk�adowc� z podanym numerem Id z tabeli *****************/

CREATE PROC UsuwanieWykladowcy
		@NumerId int
as
	BEGIN
			BEGIN TRY
				begin tran
						DELETE FROM Dziekanat.dbo.Wykladowca
						WHERE IdWykladowca = @NumerId
				commit tran
			END TRY

			BEGIN CATCH
				rollback tran
				print 'Nie mo�na usun�� tego wyk�adowcy'
			End CATCH
	END

------------------------------------------------------
EXEC UsuwanieWykladowcy 26



/********************* Procedura 5 ************************/
/******************* Procedura tworzy kopie tabeli podanej jako prametr ************************/
/************** o nazwie podanej jako drugi parametr i wy�wietla jej zawarto�� *****************/

CREATE PROC KopiaTabeli
		 @TabelaNazwa nvarchar(30), @KopiaNazwa nvarchar(30)
as
	BEGIN
			declare @zmp nvarchar(100)=
					' if OBJECT_ID(''' +@KopiaNazwa+ ''') is not null
							DROP TABLE ' +@KopiaNazwa
			EXEC (@zmp)

			SET @zmp=
					' SELECT * INTO ' +@KopiaNazwa+
					' FROM ' +@TabelaNazwa
			EXEC (@zmp)

			SET @zmp=
					' SELECT *
					  FROM ' +@KopiaNazwa
			EXEC (@zmp)
	END

-----------------------------------------------------------
EXEC KopiaTabeli 'Student', 'KopiaStudent'