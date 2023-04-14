# Conditions

#smartflow #workflow

## Description

La tâche **Conditions** permet de comparer une valeur suivant des critères définis et renvoie la valeur Vrai ou Faux en fonction du résultat de la comparaison entre le champ et les critères.


Les critères sont définis par les [[Filtre|nœuds Filtre]].

## Fonctionnement

![[SN-CONDITION__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Champ à comparer | string, number, date, time, datetime, boolean, object, so: | Champ à comparer |
| 2 | Critères | section | Définition des critères de la condition.<br /> Si plusieurs critères sont définis, c'est l'ensemble d'entre eux qui constituera un résultat positif. |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Vrai | flow | Flux de sortie de la comparaison quand le résultat est vrai |
| 2 | Faux | flow | Flux de sortie de la comparaison quand le résultat est faux |

## Utilisation

### Studio

![[SN-CONDITION__studio.png]]

