# Transmuter un fichier CSV

#smartflow #workflow

## Description

La tâche **Transmuter un fichier CSV** permet de mapper le contenu d'un fichier CSV dans un ou plusieurs [Smart Object(s)](Glossaire.md#Smart%20Object).


Cette tâche utilise le mécanisme [[2 - Les Smart Objects#Importer des Smart Objects|d'importation]].

Cette tâche parcours l'ensemble des lignes du fichier CSV, et pour chaque ligne, affecte chaque cellules dans les propriétés du [Smart Object](Glossaire.md#Smart%20Object), si la propriété existe (référencement par la clé) et que le type est correct.

## Fonctionnement

![[SN-CSV-MAPPED__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Fichier CSV | sys:file | Fichier CSV à transmuter |
| 2 | Délimiteur | string | Délimiteur pour séparer les cellules |
| 3 | Smart Model | string | [Smart Model](Glossaire.md#Smart%20Model) utilisé pour la transmutation |
| 4 | Sauvegarder sur l'API | boolean | Si la condition est vrai, les transactions de créations de [Smart Objects](Glossaire.md#Smart%20Object) seront effecuées en base de données |
| 5 | Format de date | section | Permet de spécifier le format des dates (utilisés dans le CSV) pour les colonnes de type date ou datetime. <br /><br />_Exemple:_ `DD/MM/YYYY HH:mm` |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | so:* | Le(s) [Smart Object(s)](Glossaire.md#Smart%20Object) mappés |

