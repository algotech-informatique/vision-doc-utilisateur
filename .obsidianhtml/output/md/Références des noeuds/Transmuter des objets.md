# Transmuter des objets

#smartflow #workflow

## Description

La tâche **Transmuter des objets** permet de mapper un objet JSON dans un ou plusieurs [Smart Object(s)](Glossaire.md#Smart%20Object).


Cette tâche parcours l'ensemble des propriétés de l'objet et les affectes dans les propriétés du [Smart Object](Glossaire.md#Smart%20Object), si la propriété existe (référencement par la clé) et que le type est correct.

_Cette tâche fonctionne de façon récursive (si l'objet contient un sous objet, et que le [Smart Object](Glossaire.md#Smart%20Object) contient un Sous [Smart Object](Glossaire.md#Smart%20Object))._

## Fonctionnement

![[SN-MAPPED__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Objet | object | Objet(s) à mapper |
| 2 | Smart Model | string | [Smart Model](Glossaire.md#Smart%20Model) utilisé pour la transmutation |
| 3 | Sauvegarder sur l'API | boolean | Si la condition est vrai, les transactions de créations de [Smart Objects](Glossaire.md#Smart%20Object) seront effecuées en base de données |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | so:* | Le(s) [Smart Object(s)](Glossaire.md#Smart%20Object) mappés |

