/***********************************************************************/

USE Dziekanat


/***********************************************************************/

-- Dodanie rekordów do tabeli 'Rodzaj Oceny'

INSERT INTO Dziekanat.dbo.RodzajOceny VALUES ('Egzamin')
INSERT INTO Dziekanat.dbo.RodzajOceny VALUES ('Zaliczenie')

/***********************************************************************/

-- Dodanie rekordów do tabeli 'Stopieñ naukowy'

INSERT INTO Dziekanat.dbo.StopienNaukowy VALUES ('mgr')
INSERT INTO Dziekanat.dbo.StopienNaukowy VALUES ('dr')
INSERT INTO Dziekanat.dbo.StopienNaukowy VALUES ('dr hab.')
INSERT INTO Dziekanat.dbo.StopienNaukowy VALUES ('prof.')

/***********************************************************************/

-- Dodanie rekordów do tabeli 'Wyk³adowca'

INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Piotr','Kowalski','Zastosowañ matematyki i informatyki',4)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Anna','Nowak','Zastosowañ matematyki i informatyki',4)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Bartosz','Paj¹k','Zastosowañ matematyki i informatyki',3)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Pawe³','Nowak','Zastosowañ matematyki i informatyki',3)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Tomasz','Pastor','Zastosowañ matematyki i informatyki',3)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Piotr','Smoczyñski','Zastosowañ matematyki i informatyki',3)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Artur','Nowogrodzki','Zastosowañ matematyki i informatyki',3)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Katarzyna','Kalêba','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Arkadiusz','Micha³owski','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Marek','Rêbowski','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Anita','Zajtek','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Aleksander','Glegolski','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Janusz','Konwiñski','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Matylda','Zaj¹czkowska','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Barbara','Kociñska','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('W³odzimierz','Ró¿alski','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Jacek','Kowalski','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Dariusz','Stoiñski','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Danuta','Urbañska','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Bart³omiej','Wilk','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Miros³aw','Kot','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Piotr','Wróbel','Zastosowañ matematyki i informatyki',2)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Patryk','B¹k','Zastosowañ matematyki i informatyki',1)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Anastazja','Bzyczyñska','Zastosowañ matematyki i informatyki',1)
INSERT INTO Dziekanat.dbo.Wykladowca VALUES ('Micha³','Kaczmarek','Zastosowañ matematyki i informatyki',1)

/***********************************************************************/

-- Dodanie rekordów do tabeli 'Semestr'

INSERT INTO Dziekanat.dbo.Semestr VALUES ('I')
INSERT INTO Dziekanat.dbo.Semestr VALUES ('II')
INSERT INTO Dziekanat.dbo.Semestr VALUES ('III')
INSERT INTO Dziekanat.dbo.Semestr VALUES ('IV')
INSERT INTO Dziekanat.dbo.Semestr VALUES ('V')
INSERT INTO Dziekanat.dbo.Semestr VALUES ('VI')
INSERT INTO Dziekanat.dbo.Semestr VALUES ('VII')
INSERT INTO Dziekanat.dbo.Semestr VALUES ('VIII')

/***********************************************************************/

-- Dodanie rekordów do tabeli 'Przedmiot'

INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Algebra liniowa',1,10)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Wstêp do programowania',1,17)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Podstawy fizyki',1,20)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Matematyka dyskretna I',1,21)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Analiza matematyczna',2,14)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Programowanie obiektowe',2,7)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Architektura komputerów',2,9)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Matematyka dyskretna II',2,10)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Systemy operacyjne',3,18)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Algorytmy i struktury danych',3,15)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Podstawy elektroniki',3,13)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Rachunek prawdopodobieñstwa',3,11)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('In¿ynieria oprogramowania',4,6)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Technologie baz danych',4,20)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Grafy i sieci',4,22)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Bezpieczeñstwo w systemie Linux',4,25)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Metody numeryczne',5,24)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Metody analizy danych',5,19)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Sieci komputerowe',5,15)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Programowanie komponentowe',5,11)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Paradygmaty programowania',6,17)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Techniki cyfrowe',6,16)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Programowanie w internecie',6,22)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Hurtownie danych',6,18)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Grafika komputerowa',7,9)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Ochrona informacji',7,5)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Systemy handlu elektronicznego',7,13)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Laboratorium systemów cyfrowych',7,20)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Sztuczna inteligencja',8,14)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Problemy zawodowe informatyki',8,11)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Seminarium dyplomowe',8,6)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Praca dyplomowa',8,4)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Fakultet 1',5,14)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Fakultet 2',6,19)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Fakultet 3',7,5)
INSERT INTO Dziekanat.dbo.Przedmiot VALUES ('Fakultet 4',8,7)

/***********************************************************************/

-- Dodanie rekordów do tabeli 'Student'

INSERT INTO Dziekanat.dbo.Student VALUES ('Arkadiusz','Gumny','1990-12-11','Informatyka',2)
INSERT INTO Dziekanat.dbo.Student VALUES ('Piotr','Stañczyk','1982-02-10','Informatyka',2)
INSERT INTO Dziekanat.dbo.Student VALUES ('Tomasz','Manowski','1988-07-28','Informatyka',2)
INSERT INTO Dziekanat.dbo.Student VALUES ('Robert','Siwiak','1980-03-19','Informatyka',2)
INSERT INTO Dziekanat.dbo.Student VALUES ('Tomasz','Klonowski','1989-01-01','Informatyka',2)
INSERT INTO Dziekanat.dbo.Student VALUES ('Adam','Kozal','1983-10-25','Informatyka',2)
INSERT INTO Dziekanat.dbo.Student VALUES ('Zuzanna','Chmielewska','1990-03-13','Informatyka',4)
INSERT INTO Dziekanat.dbo.Student VALUES ('Amelia','Rybczyñska','1989-08-20','Informatyka',4)
INSERT INTO Dziekanat.dbo.Student VALUES ('Marcel','Okoñski','1986-06-02','Informatyka',4)
INSERT INTO Dziekanat.dbo.Student VALUES ('Antek','Horuba³a','1987-02-02','Informatyka',4)
INSERT INTO Dziekanat.dbo.Student VALUES ('Maja','Stradowska','1990-06-19','Informatyka',4)
INSERT INTO Dziekanat.dbo.Student VALUES ('Julian','Górecki','1988-12-12','Informatyka',4)
INSERT INTO Dziekanat.dbo.Student VALUES ('Jakub','Gruszka','1988-02-15','Informatyka',6)
INSERT INTO Dziekanat.dbo.Student VALUES ('Samuel','Urbaniak','1989-07-31','Informatyka',6)
INSERT INTO Dziekanat.dbo.Student VALUES ('Patrycja','Lipska','1985-03-28','Informatyka',6)
INSERT INTO Dziekanat.dbo.Student VALUES ('Rafa³','Juszkiewicz','1982-09-21','Informatyka',6)
INSERT INTO Dziekanat.dbo.Student VALUES ('Micha³','Strumiñski','1988-08-18','Informatyka',6)
INSERT INTO Dziekanat.dbo.Student VALUES ('Dorota','Nowak','1990-12-11','Informatyka',6)
INSERT INTO Dziekanat.dbo.Student VALUES ('Mariola','Kowalska','1984-02-16','Informatyka',8)
INSERT INTO Dziekanat.dbo.Student VALUES ('Sebastian','Suski','1987-05-02','Informatyka',8)
INSERT INTO Dziekanat.dbo.Student VALUES ('Tomasz','Czajkowski','1982-03-13','Informatyka',8)
INSERT INTO Dziekanat.dbo.Student VALUES ('Aleksander','Czaplicki','1989-09-28','Informatyka',8)
INSERT INTO Dziekanat.dbo.Student VALUES ('Konrad','Popie³uszko','1986-10-10','Informatyka',8)
INSERT INTO Dziekanat.dbo.Student VALUES ('Justyna','Schulc','1987-11-11','Informatyka',8)

/***********************************************************************/

-- Dodanie rekordów do tabeli 'Oceny'

--------------- Studenci - Rok 1 ----------------
---------------     Semestr 1    ----------------

INSERT INTO Dziekanat.dbo.Oceny VALUES (1,1,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (1,2,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (1,3,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (1,4,'4',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (2,1,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (2,2,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (2,3,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (2,4,'5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (3,1,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (3,2,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (3,3,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (3,4,'3,5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (4,1,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (4,2,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (4,3,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (4,4,'4,5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (5,1,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (5,2,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (5,3,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (5,4,'5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (6,1,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (6,2,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (6,3,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (6,4,'3,5',2,getdate())

---------------     Semestr 2    ----------------

INSERT INTO Dziekanat.dbo.Oceny VALUES (1,5,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (1,6,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (1,7,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (1,8,'5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (2,5,'2',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (2,6,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (2,7,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (2,8,'2',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (3,5,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (3,6,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (3,7,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (3,8,'5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (4,5,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (4,6,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (4,7,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (4,8,'3,5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (5,5,'2',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (5,6,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (5,7,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (5,8,'4',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (6,5,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (6,6,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (6,7,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (6,8,'3,5',2,getdate())


--------------- Studenci - Rok 2 ----------------
---------------     Semestr 3    ----------------

INSERT INTO Dziekanat.dbo.Oceny VALUES (7,9,'2',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (7,10,'3,5',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (7,11,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (7,12,'4',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (8,9,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (8,10,'4,5',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (8,11,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (8,12,'4',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (9,9,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (9,10,'5',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (9,11,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (9,12,'3,5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (10,9,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (10,10,'3,5',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (10,11,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (10,12,'4',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (11,9,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (11,10,'5',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (11,11,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (11,12,'4,5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (12,9,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (12,10,'4,5',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (12,11,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (12,12,'5',2,getdate())

---------------     Semestr 4    ----------------

INSERT INTO Dziekanat.dbo.Oceny VALUES (7,13,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (7,14,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (7,15,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (7,16,'4,5',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (8,13,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (8,14,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (8,15,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (8,16,'4',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (9,13,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (9,14,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (9,15,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (9,16,'5',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (10,13,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (10,14,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (10,15,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (10,16,'4',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (11,13,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (11,14,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (11,15,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (11,16,'5',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (12,13,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (12,14,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (12,15,'3,3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (12,16,'5',1,getdate())


--------------- Studenci - Rok 3 ----------------
---------------     Semestr 5    ----------------

INSERT INTO Dziekanat.dbo.Oceny VALUES (13,17,'4',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (13,18,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (13,19,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (13,20,'4,5',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (14,17,'5',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (14,18,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (14,19,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (14,20,'5',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (15,17,'3,5',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (15,18,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (15,19,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (15,20,'5',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (16,17,'3',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (16,18,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (16,19,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (16,20,'4',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (17,17,'3,5',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (17,18,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (17,19,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (17,20,'5',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (18,17,'2',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (18,18,'2',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (18,19,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (18,20,'2',1,getdate())

---------------     Semestr 6    ----------------

INSERT INTO Dziekanat.dbo.Oceny VALUES (13,21,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (13,22,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (13,23,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (13,24,'4,5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (14,21,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (14,22,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (14,23,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (14,24,'4,5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (15,21,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (15,22,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (15,23,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (15,24,'3',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (16,21,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (16,22,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (16,23,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (16,24,'4',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (17,21,'2',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (17,22,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (17,23,'3',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (17,24,'5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (18,21,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (18,22,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (18,23,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (18,24,'5',2,getdate())


--------------- Studenci - Rok 4 ----------------
---------------     Semestr 7    ----------------

INSERT INTO Dziekanat.dbo.Oceny VALUES (19,25,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (19,26,'5,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (19,27,'4',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (19,28,'3,5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (20,25,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (20,26,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (20,27,'5',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (20,28,'4,5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (21,25,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (21,26,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (21,27,'3,5',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (21,28,'4,5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (22,25,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (22,26,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (22,27,'4',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (22,28,'4',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (23,25,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (23,26,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (23,27,'5',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (23,28,'4,5',2,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (24,25,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (24,26,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (24,27,'5',2,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (24,28,'4,5',2,getdate())

---------------     Semestr 8    ----------------

INSERT INTO Dziekanat.dbo.Oceny VALUES (19,29,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (19,30,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (19,31,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (19,32,'4,5',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (20,29,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (20,30,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (20,31,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (20,32,'4,5',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (21,29,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (21,30,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (21,31,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (21,32,'4,5',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (22,29,'5!',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (22,30,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (22,31,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (22,32,'5!',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (23,29,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (23,30,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (23,31,'4,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (23,32,'5',1,getdate())

INSERT INTO Dziekanat.dbo.Oceny VALUES (24,29,'3,5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (24,30,'5',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (24,31,'4',1,getdate())
INSERT INTO Dziekanat.dbo.Oceny VALUES (24,32,'4',1,getdate())
