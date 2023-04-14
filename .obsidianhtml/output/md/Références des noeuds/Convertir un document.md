# Convertir un document

#smartflow #workflow

## Description

La tâche **Convertir un document** permet de convertir un document en PDF.



## Fonctionnement

![[SN-DOCUMENT-CONVERT__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Fichier à convertir | sys:file | Document à convertir |
| 2 | Nom du fichier | string | Nom de sauvegarde du fichier |
| 3 | Ouverture du fichier | boolean | Téléchargement du fichier après sa création (fonctionne uniquement dans les [workflows](Glossaire.md#Workflow)) |
| 4 | Sauvegarder le fichier | boolean | Permet d'activer la sauvegarde (nécessite d'avoir renseigné le [Smart Object](Glossaire.md#Smart%20Object)) |
| 5 | Smart Object | sk:atDocument | Associe le fichier PDF dans le [Smart Object](Glossaire.md#Smart%20Object) |
| 6 | Versionnement | sys:file | Permet de créer une nouvelle version du document dans le [Smart Object](Glossaire.md#Smart%20Object).<br /> La version passée doit être la dernière version active. <br /><br /> _Les sources `document-selected` et `documents-selected` constituent des versions._ |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | sys:file | Le document PDF créé |

## Utilisation

### Studio

![[SN-DOCUMENT-CONVERT__studio.png]]

