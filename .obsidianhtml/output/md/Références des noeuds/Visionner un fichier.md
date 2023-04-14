# Visionner un fichier

#workflow

## Description

La tâche **Visionner un fichier** permet de visionner un ou plusieurs fichier(s).


L'aperçu sera affiché dans un carrousel d'images.

## Fonctionnement

![[SN-DOCUMENT-VIEWER__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Titre (texte affiché) | string | Le titre de la tâche |
| 2 | Document(s) | sk:atDocument, sys:file | Les fichiers à visionner.<br />Il peut s'agir d'un objet qui possède l'aptitude document, auquel cas seront listés sa liste de documments associés, ou bien directement un tableau de documents |
| 3 | Nom du fichier visible | boolean | Cette option permet d'afficher les noms des fichiers |
| 4 | Activer les annotations | boolean | Cette option permet d'activer les annotation sur les images |

