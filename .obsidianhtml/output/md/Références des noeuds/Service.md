# Service

#smartflow #workflow

## Description

La tâche **Service** permet d'effectuer une requête à une API REST


Utilisation détaillée dans [[2 - Utilisation des noeuds API, BDD, FTP]]

## Fonctionnement

![[SN-SERVICE__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Type | string | Choix du verbe HTTP (GET, POST, PUT, PATCH, DELETE) |
| 2 | Type de réponse | string | Choix du type de réponse de la route:<br /> - Fichier<br /> - JSON |
| 3 | Url | string | Url complète de la requête |
| 4 | Clé-Valeur | boolean | Permet d'activer la saisie du corps de la requête (body) par un système de clé / valeur (objet composé dynamiquement).<br />Si le mode est désactivé, le corps de la requête sera renseigné directement par un objet JSON. |
| 5 | Nom du fichier | string | _Disponnible uniquement dans le cas d'un type de réponse Fichier._<br /><br /> Nom à attribuer au fichier récupéré |
| 6 | Sauvegarder | boolean | _Disponnible uniquement dans le cas d'un type de réponse Fichier._<br /><br /> Permet d'activer la sauvegarde (nécessite d'avoir renseigné le [Smart Object](Glossaire.md#Smart%20Object)) |
| 7 | Smart Object | sk:atDocument | _Disponnible uniquement dans le cas d'un type de réponse Fichier._<br /><br /> Associe le fichier créé dans le [Smart Object](Glossaire.md#Smart%20Object) |
| 8 | Version | sys:file | _Disponnible uniquement dans le cas d'un type de réponse Fichier._<br /><br /> Permet de créer une nouvelle version du document dans le [Smart Object](Glossaire.md#Smart%20Object). <br /> La version passée doit être la dernière version active. <br /><br /> _Les sources `document-selected` et `documents-selected` constituent des versions._ |
| 9 | Headers | section | Cette section permet de définir les headers de la requête<br /> |
| 10 | Paramètres | section | Cette section permet de définir les paramètres de requête<br /> |
| 11 | Body | section | _Disponnible uniquement dans le cas où le mode clé / valeur est activé._<br /><br /> Saisie du corps de la requête (body) par un système de clé / valeur (objet composé dynamiquement) |
| 12 | Objet JSON | object | _Disponnible uniquement dans le cas où le mode clé / valeur est désactivé._<br /><br /> Objet JSON à injecter au corps de la requête |
| 13 | Retour des headers | boolean | Si cette option est cochée, le flow succés aura deux sorties (le corps de la réponse et les headers de la réponse) |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Succès | flow | Flux de sortie lorsque le service se termine sans erreur |
| 2 |  | object, sys:file | Le résultat du corps de la requête (fichier ou objet JSON) en fonction du type de réponse renseigné |
| 3 |  | object | _Diponnible uniquement si le Retour des headers est activé._<br /><br /> Le résultat des headers de la requête |
| 4 | Erreur | flow | Flux de sortie lorsque le service se termine avec erreur |
| 5 |  | number | Le code d'erreur renvoyé par le service |
| 6 |  | string, object | Le message d'erreur renvoyé par le service |

