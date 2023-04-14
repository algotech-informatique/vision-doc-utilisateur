# Créer un Smart Object

#smartflow #workflow

## Description

La tâche **Créer un Smart Object** permet de créer un nouveau [Smart Object](Glossaire.md#Smart%20Object) en base de données.



## Fonctionnement

![[SN-OBJECT-CREATION__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Sauvegarder dans... | so: | Emplacecment où l'objet sera enregistré, permet d'associer le [Smart Object](Glossaire.md#Smart%20Object) nouvellement crée à une propriété (association / composition) d'un [Smart Object](Glossaire.md#Smart%20Object) éxistant.<br /> Ce champ est facultatif, il n'empêche pas la sauvegarde du [Smart Object](Glossaire.md#Smart%20Object). |
| 2 | Smart Model | string | [Smart Model](Glossaire.md#Smart%20Model) de l'objet à créer |
| 3 | Propriétés | section | Liste des propriétés à assigner |
| 4 | Aptitudes | section | Liste des aptitudes à assigner |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | so: | [Smart Object](Glossaire.md#Smart%20Object) nouvellement créé |

## Utilisation

### Studio

![[SN-OBJECT-CREATION__studio.png]]

