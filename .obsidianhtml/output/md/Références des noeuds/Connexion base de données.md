# Connexion base de données

#smartflow #workflow

## Description

Le nœud **Connexion base de données** permet d'établir une connexion à un système de gestion de base de données.


Les différents inputs de ce nœud correspondent aux différents paramètres nécessaires à la connexion.

Ce nœud a pour but de se connecter à l'input *Connexion* de la [[Requête base de données|tâche Requête base de données]].

## Fonctionnement

![[SN-DB-CONNECTOR__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Type | string | Sélection du type de système de gestion de base de données |
| 2 | Hôte | string | Le nom d'hôte de la base de données |
| 3 | Port | number | Le numéro de port |
| 4 | Utilisateur | string | L'utilisateur à authentifier |
| 5 | Mot de passe | string | Le mot de passe de cet utilisateur |
| 6 | Base de données | string | Le nom de la base de données |
| 7 | Certificat auto-signé | boolean | Utilisation d'un certificat auto-signé (seulement pour SqlServer) |
| 8 | Azure | boolean | Sur Azure (seulement pour SqlServer) |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Résultat | sys:dbconnection | Connexion établie à la base de données |

## Utilisation

### Studio

![[SN-DB-CONNECTOR__studio.png]]

