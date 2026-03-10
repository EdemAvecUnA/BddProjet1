CREATE DATABASE manga_db;
USE manga_db;
CREATE TABLE Manga (
    idManga INT PRIMARY KEY,
    titre VARCHAR(150) NOT NULL,
    typeManga VARCHAR(20),
    statutManga VARCHAR(20),
    resume TEXT,
    genrePrincipal VARCHAR(50),
    themeSecondaire VARCHAR(255)
);

CREATE TABLE Partenaire (
    idPartenaire INT PRIMARY KEY,
    nomPartenaire VARCHAR(150) NOT NULL
);

CREATE TABLE Auteur (
    idAuteur INT PRIMARY KEY,
    nomAuteur VARCHAR(100) NOT NULL,
    prenomAuteur VARCHAR(100),
    pseudonyme VARCHAR(100),
    nationalite VARCHAR(50)
);

CREATE TABLE Tome (
    idTome INT PRIMARY KEY,
    idManga INT,
    numeroTome INT,
    ISBN VARCHAR(13) UNIQUE,
    dateSortie DATE,
    prixPublic DECIMAL(5,2),
    nombrePages INT,
    statutDisponibilite VARCHAR(20),
    stockActuel INT,
    urlCouverture VARCHAR(255),

    FOREIGN KEY (idManga)
        REFERENCES Manga(idManga)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE Jeux_videos (
    idJeuVideo INT PRIMARY KEY,
    titreJeuVideo VARCHAR(150),
    editeurJeuVideo VARCHAR(150),
    idManga INT,

    FOREIGN KEY (idManga)
        REFERENCES Manga(idManga)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);

CREATE TABLE Contrat (
    idManga INT,
    idPartenaire INT,
    dateDebutContrat DATE,
    dateFinContrat DATE,
    canalVente VARCHAR(50),

    PRIMARY KEY (idManga, idPartenaire),

    FOREIGN KEY (idManga)
        REFERENCES Manga(idManga)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (idPartenaire)
        REFERENCES Partenaire(idPartenaire)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE Participe (
    idManga INT,
    numeroTome INT,
    idAuteur INT,
    roleAuteur VARCHAR(50),

    PRIMARY KEY (idManga, numeroTome, idAuteur),

    FOREIGN KEY (idManga)
        REFERENCES Manga(idManga)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (idAuteur)
        REFERENCES Auteur(idAuteur)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

SHOW TABLES;
