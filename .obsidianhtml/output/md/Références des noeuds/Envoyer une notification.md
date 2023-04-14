# Envoyer une notification

#smartflow #workflow

## Description

La tâche **Envoyer une notification** permet d'envoyer des notifications à des profils d'utilisateurs.


La notification créée par cette tâche pourra ensuite être examinée avec la [[Revue|tâche Revue]] si nécessaire.

## Fonctionnement

![[SN-NOTIFICATION__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Profils de validation | string | Les profils de validation sont notifiés de la notification, peuvent la consulter et ont la possibilité de continuer le [workflow](Glossaire.md#Workflow) |
| 2 | Profils d'information | string | Les profils d'information sont notifiés de la notification et peuvent seulement la consulter |
| 3 | Canaux | string | Le choix du canal de distribution de la notification : mobile, web ou les deux |
| 4 | Titre | string | Le titre de la notification |
| 5 | Contenu | string | Le message de la notification |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | sys:notification | La notification créée |

## Utilisation

### Studio

![[SN-NOTIFICATION__studio.png]]

