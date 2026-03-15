# BddProjet1
Mini-projet Base de données 1

prompt final : 

Tu travailles dans le domaine du manga. Shônen LAB a comme activité d’éditer des mangas français, des mangas japonais populaires et des adaptations de  jeux vidéos. C’est une entreprise comme pika et kana. Les données ont été collectées sur internet. Inspire-toi des sites web suivants : https://www.pika.fr , https://www.kana.fr/mangas 
Shônen Lab veut appliquer MERISE pour concevoir un système d'information. Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données. 
D’abord, établis les règles de gestions des données de Shônen Lab, sous la forme d'une liste à puce. Elle doit correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information.
Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. Il doit y avoir entre 25 et 35 données. Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite.
Fournis donc les règles de gestion et le dictionnaire de données.

règles de gestion des données : 

📚 Gestion des mangas

Shônen LAB édite des mangas français (créations originales).

Shônen LAB publie des mangas japonais sous licence.

Shônen LAB peut publier des adaptations de jeux vidéo.

Un manga appartient à une seule collection éditoriale.

Un manga peut comporter plusieurs tomes.

Chaque tome appartient à un seul manga.

Chaque tome possède un ISBN unique.

Chaque tome a une date de sortie officielle.

Un tome a un prix public fixé par l’éditeur.

Un tome peut être disponible ou épuisé.

Un manga peut être en cours, terminé ou en pause.

Un manga est associé à un ou plusieurs auteurs.

Un auteur peut travailler sur plusieurs mangas.

Un manga possède un genre principal (shônen, seinen, etc.).

Un manga peut avoir plusieurs thèmes (sport, fantasy, romance…).

🎮 Gestion des adaptations

Une adaptation est liée à un jeu vidéo existant.

Un jeu vidéo peut avoir plusieurs adaptations manga.

Un jeu vidéo est associé à un éditeur de jeux.

🏢 Gestion des partenaires

Un manga japonais nécessite un contrat de licence.

Un contrat de licence possède une date de début et une date de fin.

Un contrat de licence concerne un seul manga.

Un partenaire (éditeur japonais ou studio) peut avoir plusieurs contrats.

Les auteurs français sont liés à un contrat d’édition.

👥 Gestion des auteurs

Un auteur possède un nom, prénom et éventuellement un pseudonyme.

Un auteur a une nationalité.

Un auteur peut avoir un rôle (scénariste, dessinateur, coloriste).

Un manga peut avoir plusieurs rôles différents pour plusieurs auteurs.

🛒 Gestion commerciale

Chaque tome est distribué via un distributeur.

Un distributeur peut distribuer plusieurs tomes.

Chaque tome a un stock initial.

Le stock est mis à jour selon les ventes.

Les ventes sont enregistrées par date.

Les ventes peuvent être faites via différents canaux (librairie, site web, salon).

🌐 Gestion du site web

Chaque manga possède une fiche descriptive.

Chaque tome possède une couverture.

Chaque manga peut avoir une bande-annonce ou un visuel promotionnel.

Le site affiche le statut de disponibilité.

Les nouveautés sont mises en avant selon leur date de sortie.



Dictionnaire de données brutes : 


Signification de la donnée	Type	Taille
Identifiant du manga	Numérique	10 chiffres
Titre du manga	Alphanumérique	150 caractères
Type de manga (français, japonais, adaptation)	Alphanumérique	20 caractères
Statut du manga (en cours, terminé, pause)	Alphanumérique	20 caractères
Résumé du manga	Texte	2000 caractères
Genre principal	Alphanumérique	50 caractères
Thèmes secondaires	Alphanumérique	255 caractères
Identifiant du tome	Numérique	10 chiffres
Numéro du tome	Numérique	3 chiffres
ISBN	Alphanumérique	13 caractères
Date de sortie	Date	10 caractères
Prix public	Numérique (décimal)	5 chiffres dont 2 décimales
Nombre de pages	Numérique	4 chiffres
Statut de disponibilité	Alphanumérique	20 caractères
Stock actuel	Numérique	6 chiffres
URL couverture	Alphanumérique	255 caractères
Identifiant auteur	Numérique	10 chiffres
Nom auteur	Alphanumérique	100 caractères
Prénom auteur	Alphanumérique	100 caractères
Pseudonyme	Alphanumérique	100 caractères
Nationalité	Alphanumérique	50 caractères
Rôle de l’auteur	Alphanumérique	50 caractères
Identifiant jeu vidéo	Numérique	10 chiffres
Titre jeu vidéo	Alphanumérique	150 caractères
Éditeur du jeu vidéo	Alphanumérique	150 caractères
Identifiant partenaire	Numérique	10 chiffres
Nom partenaire	Alphanumérique	150 caractères
Date début contrat	Date	10 caractères
Date fin contrat	Date	10 caractères
Canal de vente	Alphanumérique	50 caractères

Modèle conceptuel de données (MCD) :

<img width="666" height="510" alt="MCD png" src="https://github.com/user-attachments/assets/f333ce4f-9e6a-49df-a35e-a26083e9cb24" />


Modèle logique de données (MLD):

<img width="770" height="514" alt="Capture d&#39;écran 2026-03-08 142909" src="https://github.com/user-attachments/assets/cab28db2-3f14-46a1-832d-3da7d8cd1b59" />

Prompt partie 4 : 

Donne les requêtes d’insertion permettant de remplir la base de données dont le modèle relationnel est le suivant :
Auteur(idAuteur, nomAuteur, nationalite)
Clé primaire : idAuteur
Partenaire(idPartenaire, nomPartenaire)
Clé primaire : idPartenaire
Manga(idManga, titre, genre, #idAuteur)
Clé primaire : idManga
Clé étrangère : idAuteur → Auteur(idAuteur)
Tome(idTome, numeroTome, dateSortie, #idManga)
Clé primaire : idTome
Clé étrangère : idManga → Manga(idManga)
Générer :
-10 auteurs
-5 partenaires
-10 mangas
-30 tomes
Les clés étrangères doivent correspondre aux clés primaires existantes.
Remplir d’abord les tables sans clés étrangères puis celles qui en contiennent.
Fournis l’ensemble sous la forme d’un script SQL prêt à être exécuté.

Scénario d’utilisation : 

La base de données Shônen LAB permet de gérer les informations relatives aux mangas publiés par l’éditeur. Elle stocke notamment les données concernant les auteurs, les mangas, les tomes et les partenaires.
Dans un premier temps, l’entreprise peut enregistrer les auteurs travaillant avec elle, qu’ils soient français ou japonais. Chaque auteur possède un identifiant unique, un nom et une nationalité.
Ensuite, les mangas sont enregistrés dans la base de données. Chaque manga possède un titre, un genre et est associé à un auteur. Cela permet de savoir rapidement quel auteur est responsable d’une œuvre.
Chaque manga est composé de plusieurs tomes. Les tomes possèdent un numéro et une date de sortie officielle. Ces informations permettent de suivre la publication des séries et de connaître les volumes disponibles.
Les partenaires représentent les entreprises ou éditeurs avec lesquels Shônen LAB collabore, par exemple pour les licences de mangas japonais ou les adaptations de jeux vidéo.
Grâce aux requêtes SQL, l’entreprise peut facilement exploiter les données. Par exemple, il est possible d’afficher la liste des mangas, de connaître les auteurs associés, de consulter les tomes disponibles ou encore d’obtenir des statistiques comme le nombre de tomes par manga.
Ce système d’information permet donc à Shônen LAB de centraliser et organiser efficacement ses informations éditoriales.






