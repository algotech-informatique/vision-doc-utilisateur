# Résultat du smartflow

#smartflow #workflow

## Description

La tâche **Résultat du smartflow** permet d'indiquer la réponse qui sera retournée par le [smartflow](Glossaire.md#Smartflow).


Utilisation détaillée dans [[3 - Gérer les retours et les erreurs]]

## Fonctionnement

![[SN-REQUEST-RESULT__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Données | string, number, date, time, datetime, boolean, so:, sys:, object | La donnée à retourner |
| 2 | Code de réponse HTTP | number | Le code statut HTTP réponse du [smartflow](Glossaire.md#Smartflow) |
| 3 | Format de retour | string | Dans le cas d'un type de données [Smart Object](Glossaire.md#Smart%20Object).<br /><br />Choix du format de retour:<br /> - SmartObject<br /> - JSON |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Résultat | object | Le résultat du [smartflow](Glossaire.md#Smartflow) |
| 2 | status | number |  |

## Utilisation

### Studio

![[SN-REQUEST-RESULT__studio.png]]

