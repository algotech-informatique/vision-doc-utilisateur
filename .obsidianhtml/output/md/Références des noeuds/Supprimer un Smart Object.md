# Supprimer un Smart Object

#smartflow #workflow

## Description

La tâche **Supprimer un Smart Object** permet de supprimer un ou plusieurs [Smart Object(s)](Glossaire.md#Smart%20Object) de la base de données.

Elle détruit les [Smart Objects](Glossaire.md#Smart%20Object) en composition inclus à l'intérieur du [Smart Object](Glossaire.md#Smart%20Object) à supprimer.
Elle retire également tout les liens présents vers le ou les [Smart Object(s)](Glossaire.md#Smart%20Object).

> [!info] 
> Les [Smart Object(s)](Glossaire.md#Smart%20Object) ne seront pas supprimés définitivement mais mis à la corbeille.
Pour supprimer définitivement un [Smart Object](Glossaire.md#Smart%20Object), il faut utiliser le module [Database Editor](Glossaire.md#Database%20Editor).

## Fonctionnement

![[SN-OBJECT-DELETION__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Smart Object(s) | so: | [Smart Object(s)](Glossaire.md#Smart%20Object) à supprimer |

