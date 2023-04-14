# Créer une variable

#smartflow #workflow

## Description

La tâche **Créer une variable** permet d'instancier une variable locale au [workflow](Glossaire.md#Workflow)/[smartflow](Glossaire.md#Smartflow).


Elle peut être utilisée pour stocker des calculs, des formules, du texte ou encore pour construire des tableaux.

## Fonctionnement

![[SN-DATA-BUFFER__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Donnée(s) | string, number, date, time, object, datetime, boolean, so:, sys: | Donnée(s) à enregistrer dans la variable |
| 2 | Cumuler les valeurs | boolean | Si le champ est actif, la donnée passée en paramètre sera cumulée dans un tableau (tableau constitué de toutes les variables du [workflow](Glossaire.md#Workflow)/[smartflow](Glossaire.md#Smartflow) qui ont la même clé de sortie).<br /> Si le champ est inactif, la donnée active écrasera les anciennes variables (qui ont la même clé de sortie). |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | any | Donnée(s) enregistrée(s) dans la variable |

## Utilisation

### Studio

![[SN-DATA-BUFFER__studio.png]]

