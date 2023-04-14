# FIN

#smartflow #workflow

## Description

La tâche **Fin** représente le point d'arrêt du [workflow](Glossaire.md#Workflow) ou du [smartflow](Glossaire.md#Smartflow).


Il doit exister au moins une tâche **Fin** dans chaque [workflow](Glossaire.md#Workflow) ou [smartflow](Glossaire.md#Smartflow). S'il existe plusieurs processus conditionnels, vous pouvez avoir plusieurs sorties.

## Fonctionnement

![[SN-FINISHER__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Sauvegarde | boolean | Sauvegarde des modifications dans la base de données. Si la condition est définie sur 'False', les données ne seront pas enregistrées, et aucune transactions ne sera réalisées. |
| 2 | Déclenchement | string | Déclenche la fin du [workflow](Glossaire.md#Workflow) à :<br /> - La fin des transactions (attend que les transactions se terminent)<br /> - La fin des tâches (dès que la dernière tâche est terminée) |
| 3 | Mode d'affichage | string | Choix du mode d'affichage de l'écran final :<br /> - Une notification toast<br /> - Une fenêtre d'affichage<br /> - Aucun affichage |
| 4 | Temps d'affichage (ms) | number | La durée en ms de l'affichage final |
| 5 | Message | string | Le message à afficher |

## Utilisation

### Studio

![[SN-FINISHER__studio.png]]

### Player

![[SN-FINISHER__player.png]]

