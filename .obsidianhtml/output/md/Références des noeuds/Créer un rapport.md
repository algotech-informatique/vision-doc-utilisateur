# Créer un rapport

#smartflow #workflow

## Description

La tâche **Créer un rapport** permet de générer un rapport selon un [[0 - Le système de template et markups|modèle de rapport]] prédéfini.



## Fonctionnement

![[SN-XREPORT__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Selectionner le rapport | string | Sélection du modèle dans la liste des templates de rapports existants. |
| 2 | Données d'entrée | section | Liste d'entrées à renseigner pour le template en question |
| 3 | Nom du fichier | string | Nom de sauvegarde du fichier |
| 4 | Ouverture du fichier | boolean | Téléchargement du fichier après sa création (fonctionne uniquement dans les [workflows](Glossaire.md#Workflow)) |
| 5 | Sauvegarder le fichier | boolean | Permet d'activer la sauvegarde (nécessite d'avoir renseigné le [Smart Object](Glossaire.md#Smart%20Object)) |
| 6 | Smart Object | sk:atDocument | Associe le fichier créé dans le [Smart Object](Glossaire.md#Smart%20Object) |
| 7 | Versionnement | sys:file | Permet de créer une nouvelle version du document dans le [Smart Object](Glossaire.md#Smart%20Object).<br /> La version passée doit être la dernière version active. <br /><br /> _Les sources `document-selected` et `documents-selected` constituent des versions._ |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | sys:file | Le rapport généré |

## Utilisation

### Studio

![[SN-XREPORT__studio.png]]

