# Requête base de données

#smartflow #workflow

## Description

Le tâche **Requête base de données** permet de réaliser une requête sur une base de données.


Pour fonctionner, la requête doit prendre en paramètre la connexion à la base de données grâce au [[Connexion base de données|nœud Connexion base de données]].

## Fonctionnement

![[SN-QUERY-BUILDER__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Connexion | sys:dbconnection | La connexion établie à la base de données, résultat du noeud connexion base de données |
| 2 | Mode assistant | boolean | / |
| 3 | Sources | section | La liste des sources à utilisée dans la requête<br /><br /> L'utilisation d'une source dans la requête doit être entourée par des moustaches: `SELECT {{column}} FROM USER`. |
| 4 | Requête | string | Requête SQL à éxecuter |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | object | L'objet résultant de la requête à la base de données |

## Utilisation

### Studio

![[SN-QUERY-BUILDER__studio.png]]

