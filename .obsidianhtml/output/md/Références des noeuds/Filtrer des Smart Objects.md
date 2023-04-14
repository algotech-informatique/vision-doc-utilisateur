# Filtrer des Smart Objects

#smartflow #workflow

## Description

La tâche **Filtrer des Smart Objects** permet de filtrer un tableau de [Smart Objects](Glossaire.md#Smart%20Object) donné par rapport à une propriété du modèle.



## Fonctionnement

![[SN-OBJECT-FILTER__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Smart Objects | so: | Tableau des [Smart Objects](Glossaire.md#Smart%20Object) à filtrer |
| 2 | Smart Model | string | Le [Smart Model](Glossaire.md#Smart%20Model) des objets à filtrer |
| 3 | Filtre par propriété | string | La propriété du modèle sur laquelle filtrer |
| 4 | Valeur à filtrer | string | La valeur à comparer, La propriété doit être strictement égale à cette valeur pour être valide. |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | so: | Tableau des [Smart Objects](Glossaire.md#Smart%20Object) filtrés |

## Utilisation

### Studio

![[SN-OBJECT-FILTER__studio.png]]

