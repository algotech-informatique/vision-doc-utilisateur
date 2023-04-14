# Sélectionner un document

#workflow

## Description

La tâche **Sélectionner un document** permet de lister des documents et de les sélectionner.


Il est nécessaire que l'utilisateur sélectionne des documents pour pouvoir passer à la tâche suivante.

## Fonctionnement

![[SN-DOCUMENT-SELECT__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Titre (texte affiché) | string | Le titre de la liste |
| 2 | Document(s) | sk:atDocument, sys:file | Les documents à lister. <br />Il peut s'agir d'un objet qui possède l'aptitude document, auquel cas seront listés sa liste de documments associés, ou bien directement un tableau de documents |
| 3 | Montrer barre de recherche | boolean | Cette option permet d'afficher une barre de recherche en amont de la liste |
| 4 | Selection multiple | boolean | Cette option permet d'activer la sélection multiple |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | sys:file | Le ou les document(s) séléctionné(s) par l'utilisateur |

