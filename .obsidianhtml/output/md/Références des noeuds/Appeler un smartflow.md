# Appeler un smartflow

#smartflow #workflow

## Description

La tâche **Appeler un smartflow** permet de lancer un sous [smartflow](Glossaire.md#Smartflow) depuis un [smartflow](Glossaire.md#Smartflow) ou un [workflow](Glossaire.md#Workflow).


Le lancement d'un [smartflow](Glossaire.md#Smartflow) existant permet d'éviter la duplication, d'alléger le [smartflow](Glossaire.md#Smartflow)/[workflow](Glossaire.md#Workflow) et le rendre plus lisible.
Cela permet également d'optimiser l’exécution lorsque il y a trop d’instructions dans le processus	principal.

## Fonctionnement

![[SN-CONNECTOR__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Sélection du smartflow | string | Le [smartflow](Glossaire.md#Smartflow) à lancer |
| 2 | Exécution détachée (hors ligne) | boolean | Exécute le [smartflow](Glossaire.md#Smartflow) comme une transaction, le [smartflow](Glossaire.md#Smartflow) sera déclenché lors de la sauvegarde.<br /> Si le [workflow](Glossaire.md#Workflow) est annulé, le [smartflow](Glossaire.md#Smartflow) ne sera pas déclenché.<br /> Si le [workflow](Glossaire.md#Workflow) est joué hors ligne, le [smartflow](Glossaire.md#Smartflow) sera exécuté à la reprise du réseau (lors de la sauvegarde de l'instance). |
| 3 | Entrées du smartflow | section | Cette section liste les différentes variables d'entrées du [smartflow](Glossaire.md#Smartflow) sélectionné. Si celui-ci n'en possède pas, cette section n'est pas affichée. |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Succès | flow | Flux de sortie lorsque le [smartflow](Glossaire.md#Smartflow) se termine sans erreur |
| 2 |  | string, number, date, time, datetime, boolean, so:, sys:, object | Le résultat retourné par le [smartflow](Glossaire.md#Smartflow) appelé |
| 3 | Erreur | flow | Flux de sortie lorsque le [smartflow](Glossaire.md#Smartflow) se termine avec erreur |
| 4 |  | number | Le code d'erreur renvoyé par le [smartflow](Glossaire.md#Smartflow) |
| 5 |  | string, object | Le message d'erreur renvoyé par le [smartflow](Glossaire.md#Smartflow) |

## Utilisation

### Studio

![[SN-CONNECTOR__studio.png]]

