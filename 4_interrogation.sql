-- 1. Afficher tous les mangas présents dans la base
SELECT * 
FROM Manga;

-- 2. Afficher uniquement le titre et le genre des mangas
SELECT titre, genre 
FROM Manga;

-- 3. Afficher la liste des auteurs français
SELECT * 
FROM Auteur
WHERE nationalite = 'Française';

-- 4. Afficher les mangas du genre Shonen
SELECT * 
FROM Manga
WHERE genre = 'Shonen';

-- 5. Afficher les tomes sortis après le 1 janvier 2020
SELECT * 
FROM Tome
WHERE dateSortie > '2020-01-01';

-- 6. Afficher les mangas avec le nom de leur auteur
SELECT Manga.titre, Auteur.nomAuteur
FROM Manga
JOIN Auteur 
ON Manga.idAuteur = Auteur.idAuteur;

-- 7. Afficher les tomes avec le titre du manga correspondant
SELECT Tome.numeroTome, Manga.titre
FROM Tome
JOIN Manga 
ON Tome.idManga = Manga.idManga;

-- 8. Afficher le nombre de tomes par manga
SELECT Manga.titre, COUNT(Tome.idTome) AS nombreTomes
FROM Manga
JOIN Tome 
ON Manga.idManga = Tome.idManga
GROUP BY Manga.titre;

-- 9. Compter le nombre total de mangas
SELECT COUNT(*) AS nombreMangas
FROM Manga;

-- 10. Compter le nombre total de tomes
SELECT COUNT(*) AS nombreTomes
FROM Tome;

-- 11. Afficher les auteurs triés par ordre alphabétique
SELECT * 
FROM Auteur
ORDER BY nomAuteur;

-- 12. Afficher les mangas triés par titre
SELECT * 
FROM Manga
ORDER BY titre;

-- 13. Afficher les tomes du manga Naruto
SELECT Tome.numeroTome
FROM Tome
JOIN Manga 
ON Tome.idManga = Manga.idManga
WHERE Manga.titre = 'Naruto';

-- 14. Afficher les mangas écrits par Kishimoto
SELECT Manga.titre
FROM Manga
JOIN Auteur 
ON Manga.idAuteur = Auteur.idAuteur
WHERE Auteur.nomAuteur = 'Kishimoto';

-- 15. Afficher les tomes triés par date de sortie
SELECT * 
FROM Tome
ORDER BY dateSortie;

-- 16. Afficher les mangas avec leurs auteurs et leurs tomes
SELECT Manga.titre, Auteur.nomAuteur, Tome.numeroTome
FROM Manga
JOIN Auteur 
ON Manga.idAuteur = Auteur.idAuteur
JOIN Tome 
ON Manga.idManga = Tome.idManga;

-- 17. Afficher les mangas ayant plus de 2 tomes
SELECT Manga.titre, COUNT(Tome.idTome) AS nombreTomes
FROM Manga
JOIN Tome 
ON Manga.idManga = Tome.idManga
GROUP BY Manga.titre
HAVING COUNT(Tome.idTome) > 2;

-- 18. Afficher tous les partenaires
SELECT * 
FROM Partenaire;

-- 19. Rechercher les mangas contenant le mot "Dragon"
SELECT * 
FROM Manga
WHERE titre LIKE '%Dragon%';

-- 20. Afficher les tomes d’un manga triés par numéro
SELECT numeroTome
FROM Tome
WHERE idManga = 1
ORDER BY numeroTome;