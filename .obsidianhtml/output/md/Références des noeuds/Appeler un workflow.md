# Appeler un workflow

#workflow

## Description

La tâche **Appeler un workflow** permet de lancer un [workflow](Glossaire.md#Workflow) depuis un autre [workflow](Glossaire.md#Workflow).


Cette tâche permet d'organiser et simplifier les [workflows](Glossaire.md#Workflow).
Certains [workflows](Glossaire.md#Workflow) peuvent ainsi être défini en tant que *sous-workflow* et auront pour vocation seulement d'être appelés par d'autres [workflows](Glossaire.md#Workflow).

## Fonctionnement

![[SN-SUB-WORKFLOW__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Sélection du workflow | string | Le [workflow](Glossaire.md#Workflow) à appeler |
| 2 | Entrées du workflow | section | Cette section liste les différentes variables d'entrées du [workflow](Glossaire.md#Workflow) sélectionné.<br />Si celui-ci n'en possède pas, cette section n'est pas affichée. |
| 3 | Profils du workflow | section | Cette section liste les différent profils du [workflow](Glossaire.md#Workflow) appelé.<br />Si celui-ci n'en possède pas, cette section n'est pas affichée. |

## Utilisation

### Studio

![[SN-SUB-WORKFLOW__studio.png]]

