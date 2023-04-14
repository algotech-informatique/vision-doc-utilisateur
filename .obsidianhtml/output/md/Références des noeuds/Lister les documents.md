# Lister les documents

#workflow

## Description

La tâche **Lister les documents** permet d'afficher une liste de documents.


Cette liste permet à l'utilisateur sur le Player, en plus de lister, de télécharger les documents ou encore de gérer le stockage de ces documents sur mobile.

## Fonctionnement

![[SN-DOCUMENT-LIST__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Titre (texte affiché) | string | Le titre de la liste  |
| 2 | Document(s) | sk:atDocument, sys:file | Les documents à lister. <br />Il peut s'agir d'un objet qui possède l'aptitude document, auquel cas seront listés sa liste de documments associés, ou bien directement un tableau de documents |
| 3 | Montrer barre de recherche | boolean | Cette option permet d'afficher une barre de recherche en amont de la liste |

## Utilisation

### Studio

![[SN-DOCUMENT-LIST__studio.png]]

### Player

![[SN-DOCUMENT-LIST__player.gif]]

