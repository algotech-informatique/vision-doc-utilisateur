# Créer un fichier ZIP

#smartflow #workflow

## Description

La tâche **Créer un fichier ZIP** permet de créer un fichier ZIP en joignant le(s) fichier(s) souhaités.



## Fonctionnement

![[SN-DOCUMENT-FILEZIP__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Fichiers à ziper | sk:atDocument, sys:file | Fichier(s) à joindre au fichier zip |
| 2 | Nom du fichier | string | Nom de sauvegarde du fichier |
| 3 | Ouverture du fichier | boolean | Téléchargement du fichier ZIP après sa création (fonctionne uniquement dans les [workflows](Glossaire.md#Workflow)) |
| 4 | Sauvegarder le fichier | boolean | Permet d'activer la sauvegarde (nécessite d'avoir renseigné le [Smart Object](Glossaire.md#Smart%20Object)) |
| 5 | Smart Object | sk:atDocument | Associe le fichier créé dans le [Smart Object](Glossaire.md#Smart%20Object) |
| 6 | Versionnement | sys:file | Permet de créer une nouvelle version du document dans le [Smart Object](Glossaire.md#Smart%20Object).<br /> La version passée doit être la dernière version active. <br /><br /> _Les sources `document-selected` et `documents-selected` constituent des versions._ |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | sys:file | Le fichier ZIP créé |

## Utilisation

### Studio

![[SN-DOCUMENT-FILEZIP__studio.png]]

