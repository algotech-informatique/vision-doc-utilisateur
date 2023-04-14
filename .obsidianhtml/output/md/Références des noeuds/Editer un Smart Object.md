# Editer un Smart Object

#smartflow #workflow

## Description

La tâche **Éditer un Smart Object** permet de modifier les propriétés ou les aptitudes d'un [Smart Object](Glossaire.md#Smart%20Object).


L'édition des propriétés et aptitudes du [Smart Object](Glossaire.md#Smart%20Object) remplacera les valeurs déjà existantes.

## Fonctionnement

![[SN-OBJECT-ASSIGNMENT__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Smart Object(s) | so: | [Smart Object](Glossaire.md#Smart%20Object) à éditer |
| 2 | Smart Model à configurer | string | [Smart Model](Glossaire.md#Smart%20Model) de l'objet à éditer.<br /> Lorsque le modèle du [Smart Object](Glossaire.md#Smart%20Object) est inconnu, il est possible de créer plusieurs configurations.<br /> Lors de l'évaluation de la tâche, la configuration du modèle correspondant au [Smart Object](Glossaire.md#Smart%20Object) sera prise. |
| 3 | Propriétés | section | Liste des propriétés à éditer |
| 4 | Aptitudes | section | Liste des aptitudes à éditer |
| 5 | Cumuler les valeurs | boolean | Cette propriété n'est valable que pour les propriétés (pas les aptitudes) multiples.<br /><br />	Si le champ est actif, les valeurs affectées aux propriétés multiple seront cumulées à leurs anciennes valeurs.<br /> Si le champ est inactif, l'affectation remplacera les anciennes valeurs. |

## Utilisation

### Studio

![[SN-OBJECT-ASSIGNMENT__studio.png]]

