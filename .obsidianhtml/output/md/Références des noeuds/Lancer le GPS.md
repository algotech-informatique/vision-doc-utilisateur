# Lancer le GPS

#workflow

## Description

La tâche **Lancer le GPS** permet de lancer une application tiers de GPS (type maps) et de lancer un itinéraire avec comme destination, la localisation de l'objet en entrée.



## Fonctionnement

![[SN-GPS__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Titre (texte affiché) | string | Le titre affiché en haut de la tâche |
| 2 | Smart Object | sk:atGeolocation | Le [Smart Object](Glossaire.md#Smart%20Object) contenant la destination |
| 3 | Text du button GPS | string | Le texte du boutton qui permet de lancer l'application de GPS<br /> Par défaut : "Lancer le GPS" |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | sys:location | La localisation du [Smart Object](Glossaire.md#Smart%20Object) en entrée |

## Utilisation

### Studio

![[SN-GPS__studio.png]]

