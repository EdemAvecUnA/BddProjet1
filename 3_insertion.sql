INSERT INTO Manga VALUES
(1,'Naruto','japonais','termine','Ninja cherchant la reconnaissance','Action','Amitie'),
(2,'One Piece','japonais','en cours','Pirates a la recherche du tresor ultime','Aventure','Liberte'),
(3,'Astérix','francais','termine','Gaulois resistants face aux Romains','Humour','Amitie');

INSERT INTO Auteur VALUES
(1,'Kishimoto','Masashi','1974-11-08','Japon'),
(2,'Oda','Eiichiro','1975-01-01','Japon'),
(3,'Goscinny','Rene','1926-08-14','France'),
(4,'Uderzo','Albert','1927-04-25','France');

INSERT INTO Tome VALUES
(1,1,1,'9782505000001','1999-03-03',6.90,192,'disponible',50,'naruto1.jpg'),
(2,1,2,'9782505000002','1999-07-02',6.90,190,'disponible',30,'naruto2.jpg'),
(3,2,1,'9782505000003','1997-07-22',7.20,210,'disponible',40,'onepiece1.jpg'),
(4,3,1,'9782505000004','1961-10-29',10.50,48,'epuise',15,'asterix1.jpg');

INSERT INTO Partenaire VALUES
(1,'Kana','Belgique'),
(2,'Glénat','France');

INSERT INTO Contrat VALUES
(1,1,1,'2010-01-01','2020-01-01'),
(2,2,1,'2012-05-01','2025-05-01'),
(3,3,2,'2000-01-01','2010-01-01');

INSERT INTO Participe VALUES
(1,1,'scenariste'),
(2,2,'scenariste'),
(3,3,'scenariste'),
(4,3,'dessinateur');

