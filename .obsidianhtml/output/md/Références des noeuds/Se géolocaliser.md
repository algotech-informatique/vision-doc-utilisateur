# Se géolocaliser

#workflow

## Description

La tâche **Se géolocaliser** permet de déterminer la position géographique de l'appareil



## Fonctionnement

![[SN-GEOLOCATION__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Smart Object | sk:atGeolocation | [Smart Object](Glossaire.md#Smart%20Object) où la localisation sera enregistrée |
| 2 | Délai (ms) | number | Le temps d'attente maximum en millisecondes |
| 3 | Haute précision | boolean | Active la précision lors de la géolocalisation |
| 4 | Message d'attente | string | Message affiché au chargement de la géolocalisation |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | sys:location | Sortie avec la localisation créée |

