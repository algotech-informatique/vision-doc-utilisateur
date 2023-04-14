# Revue

#workflow

## Description

La tâche **Revue** permet à un profil d'utilisateurs d'examiner une notification.


Les différents flux de sortie de cette tâche sont configurables et correspondent aux différents choix présentés à l'examinateur de la notification (par défaut accepter et refuser). 

## Fonctionnement

![[SN-REVIEW__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Notification | sys:notification | La notification à examiner |
| 2 | Ajouter un commentaire | boolean | Cette option permet d'ajouter des commentaires à la notification |
| 3 | Fichier(s) attaché(s) | sys:file | Cette option permet d'attacher des fichiers à la notification |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Accepter | flow | Le flow de sortie utilisé si le viewer choisit l'option accepter |
| 2 | Refuser | flow | Le flow de sortie utilisé si le viewer choisit l'option refuser |

## Utilisation

### Studio

![[SN-REVIEW__studio.png]]