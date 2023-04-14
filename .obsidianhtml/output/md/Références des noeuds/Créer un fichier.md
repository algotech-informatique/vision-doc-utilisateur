# Créer un fichier

#smartflow #workflow

## Description

La tâche **Créer un fichier** permet de créer un fichier.
Le type de fichier créé dépend de l'extension renseignée dans le nom du fichier ainsi que du corps du fichier.

Le comportement par défaut est la création d'un fichier de type TEXT (txt, json, ...) en passant du texte dans le corps du fichier.
Il est également possible de créer une image en passant sa base64.



## Fonctionnement

![[SN-DOCUMENT-FILECREATE__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Corps | string, object | Le contenu du fichier |
| 2 | Nom du fichier | string | Le nom du fichier avec son extension |
| 3 | Ouverture du fichier | boolean | Téléchargement du fichier après sa création (fonctionne uniquement dans les [workflows](Glossaire.md#Workflow)) |
| 4 | Sauvegarder le fichier | boolean | Permet d'activer la sauvegarde (nécessite d'avoir renseigné le [Smart Object](Glossaire.md#Smart%20Object)) |
| 5 | Smart Object | sk:atDocument | Associe le fichier créé dans le [Smart Object](Glossaire.md#Smart%20Object) |
| 6 | Versionnement | sys:file | Permet de créer une nouvelle version du document dans le [Smart Object](Glossaire.md#Smart%20Object).<br /> La version passée doit être la dernière version active. <br /><br /> _Les sources `document-selected` et `documents-selected` constituent des versions._ |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | sys:file | Le fichier créé |

## Utilisation

### Studio

![[SN-DOCUMENT-FILECREATE__studio.png]]

