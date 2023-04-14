# Uploader un fichier

#workflow

## Description

La tâche **Uploader un fichier** permet d'importer un fichier dans Vision et de l'associer à un [Smart Object](Glossaire.md#Smart%20Object).



## Fonctionnement

![[SN-DOCUMENT-UPLOAD__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Titre (texte affiché) | string | Titre affiché dans la tâche |
| 2 | Smart Object | sk:atDocument | [Smart Object](Glossaire.md#Smart%20Object) dans lequel les documents ajoutés seront liés |
| 3 | Autoriser plusieurs fichiers | boolean | Donner la possibilité d'uploader plusieurs documents |
| 4 | Versionnement | sys:file | Permet de créer une nouvelle version du document dans le [Smart Object](Glossaire.md#Smart%20Object). <br />La version passée doit être la dernière version active.<br /><br />_Les sources `document-selected` et `documents-selected` constituent des versions._  |
| 5 | Activer le taggage | boolean | Activer le taggage du document |
| 6 | Modèles de tag | string | Liste de tags de type image qui sera utlisée |
| 7 | Activer les métadonnées | boolean | Activer les métadonnées dans le document |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | sys:file | Fichier(s) uploadé(s) |

