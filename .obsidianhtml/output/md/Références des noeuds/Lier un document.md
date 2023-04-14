# Lier un document

#workflow

## Description

La tâche **Lier un document** permet de lister tous les documents de la base et de les sélectionner pour pouvoir les lier à un [Smart Object](Glossaire.md#Smart%20Object).


Il est nécessaire que l'utilisateur sélectionne des documents pour pouvoir passer à la tâche suivante.

## Fonctionnement

![[SN-DOCUMENT-LINK__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Titre (texte affiché) | string | Le titre de la liste |
| 2 | Document(s) | sk:atDocument | Le [Smart Object](Glossaire.md#Smart%20Object) qui associera les documents sélectionnés |
| 3 | Sélection multiple | boolean | Cette option permet d'activer la sélection multiple |
| 4 | Montrer barre de recherche | boolean | Cette option permet d'afficher une barre de recherche en amont de la liste |
| 5 | Mode Panier | boolean | Ce mode s'utilise en sélection multiple seulement, il permet d'ajouter un bouton en en-tête de la liste qui affichera la sélection en cours |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | sys:file | Le ou les document(s) séléctionné(s) par l'utilisateur |

## Utilisation

### Studio

![[SN-DOCUMENT-LINK__studio.png]]

### Player

![[SN-DOCUMENT-LINK__player.gif]]

