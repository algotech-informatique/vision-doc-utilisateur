# Lire un QRCode

#workflow

## Description

La tâche **Lire un QRCode** permet de scanner et décoder un QRCode depuis un terminal mobile.



## Fonctionnement

![[SN-QRCODE__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Titre (texte affiché) | string | Le titre affiché en haut de la tâche |
| 2 | Délai (s) | number | Si indiqué, le temps maximum en secondes pour scanner un QRCode, sinon, le scan sera sans délai<br /> Une fois le temps maximum atteind, la tâche est considérée comme expirée |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Terminer | flow | Le flux de sortie lorsque le QRCode a été scanné |
| 2 |  | string | Le résultat décodé |
| 3 | Révision | flow | Le flux de sortie lorsqu'on rencontre une erreur |
| 4 | Temps expiré | flow | Le flux de sortie lorsque le temps est expiré (si un délai est indiqué) |

## Utilisation

### Studio

![[SN-QRCODE__studio.png]]

