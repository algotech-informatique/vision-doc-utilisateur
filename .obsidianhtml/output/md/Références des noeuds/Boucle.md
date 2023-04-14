# Boucle

#smartflow #workflow

## Description

La tâche **Boucle** permet de réaliser des itérations.


Elle possède un mode pour parcourir chaque élément d'un tableau afin de traiter chaque objet de manière unitaire et un autre mode pour pouvoir itérer sur un nombre défini.

## Fonctionnement

![[SN-LOOP__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Mode "For Each" | boolean | Le mode *For Each* est le mode par défaut pour parcourir un tableau.<br />Si ce mode n'est pas activé, la tâche boucle ne prendra plus en entrée un tableau mais un index qui correspondra au nombre d'itérations que la boucle devra réaliser.<br />L'itteréation suivante se réalise lorsque la sortie (le flux) de la tâche se trouvant dans l'itteration n'est pas branchée. |
| 2 | Objets | string, number, date, time, object, datetime, boolean, so:, sys: | Tableau d'objets d'entrée sur lequel la boucle va itérer |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Fin | flow | Flux de sortie du tableau quand la boucle est terminée |
| 2 | Suivant | flow | Flux suivant pour chaque itération du tableau |
| 3 |  | string, number, date, time, object, datetime, boolean, so:, sys: | L'item du tableau en cours de traitement |

## Utilisation

### Studio

![[SN-LOOP__studio.png]]

