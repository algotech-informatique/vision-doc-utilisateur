---
tags:
- todo
---
   
# Utilisation des noeuds API, BDD, FTP   
   
Les [smartflows](../_glossaire/Glossaire.md) peuvent avoir un rôle de **middleware**, c'est-à-dire qu'il serviront d'intermédiaires entre un système et un autre.   
   
Pour se faire, il existe plusieurs noeuds permettant de communiquer avec un système externe, que ce soit depuis une API, une base de données ou depuis un FTP.   
   
# Connexion à une API   
   
Pour se faire, on utilise le noeud [Service](../R%C3%A9f%C3%A9rences%20des%20noeuds/Service.md). Ce noeud n'est présent que dans les [smartflows](../_glossaire/Glossaire.md), il est utilisé pour appeler des **API REST** (protocole HTTP).   
   
Il permet de faire appel à des routes:   
   
- GET   
- POST   
- PUT   
- PATCH   
- DELETE   
   
On peut lui passer différentes entrées:   
   
- des headers (clés / valeurs)   
- des paramètres qui viendront compléter l'url (clé / valeur)   
- un body   
	- via un système clé / valeur (construit un JSON par assemblage des clés / valeurs)   
	- via un objet JSON   
	- via un FormData (construit automatiquement si un paramètre de type Fichier est présent dans la liste des clés / valeurs)   
   
Le retour peut être de type JSON ou Fichier (auquel cas, il sera possible de le sauvegarder dans la base de données Vision et de l'attacher à un [Smart Object](../_glossaire/Glossaire.md)).   
   
Il est également possible de renvoyer les headers de la réponse (section avancé).   
   
>[!exemple]   
>[Utiliser une API avec une authentification](/not_created.md)   
>[Utiliser une API avec des paramètres de recherche et de pagination](/not_created.md)   
   
# Connexion à une base de données   
   
Pour se faire, il existe deux noeuds [Connexion base de données](../R%C3%A9f%C3%A9rences%20des%20noeuds/Connexion%20base%20de%20donn%C3%A9es.md) et [Requête base de données](../R%C3%A9f%C3%A9rences%20des%20noeuds/Requ%C3%AAte%20base%20de%20donn%C3%A9es.md).   
   
Le premier noeud permet d'établir la connexion vers une base de données SQL de type:   
   
- MySQL   
- SQLServer   
- PostGre   
- Oracle   
- FireBord   
   
Ce noeud prend en entrées les différents paramètres nécessaires pour établir la connexion vers la base (utilisateur, mot de passe, ...).   
   
Il est rattaché au second noeud qui va créer la requête SQL et renvoyer le résultat.   
Le résultat est renvoyé sous forme d'objet.   
   
>[!exemple]   
>[Se connecter à une base Postgres](../06%20-%20Smartflows%2C%20connecter%20vos%20apps/Smartflows%20typiques/Se%20connecter%20%C3%A0%20une%20base%20Postgres.md)   
>[Se connecter à une base SQL Server](../06%20-%20Smartflows%2C%20connecter%20vos%20apps/Smartflows%20typiques/Se%20connecter%20%C3%A0%20une%20base%20SQL%20Server.md)   
   
# Connexion à un FTP   
   
`{_obsidian_pattern_tag_todo}`    
   
>[!exemple]   
>[Se connecter à un FTP](../06%20-%20Smartflows%2C%20connecter%20vos%20apps/Smartflows%20typiques/Se%20connecter%20%C3%A0%20un%20FTP.md)