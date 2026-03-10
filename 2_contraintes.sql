ALTER TABLE Manga
ADD CONSTRAINT chk_type_manga
CHECK (typeManga IN ('francais','japonais','adaptation'));

ALTER TABLE Manga
ADD CONSTRAINT chk_statut_manga
CHECK (statutManga IN ('en cours','termine','pause'));

ALTER TABLE Tome
ADD CONSTRAINT chk_prix
CHECK (prixPublic > 0);

ALTER TABLE Tome
ADD CONSTRAINT chk_pages
CHECK (nombrePages > 0);

ALTER TABLE Tome
ADD CONSTRAINT chk_stock
CHECK (stockActuel >= 0);

ALTER TABLE Tome
ADD CONSTRAINT chk_statut_disponibilite
CHECK (statutDisponibilite IN ('disponible','epuise'));

ALTER TABLE Contrat
ADD CONSTRAINT chk_dates_contrat
CHECK (dateFinContrat > dateDebutContrat);

ALTER TABLE Participe
ADD CONSTRAINT chk_role_auteur
CHECK (roleAuteur IN ('scenariste','dessinateur','coloriste'));