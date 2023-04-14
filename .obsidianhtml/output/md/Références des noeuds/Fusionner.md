# Fusionner

#smartflow #workflow

## Description

La tâche **Fusionner** permet de fusionner une table de [Smart Objects](Glossaire.md#Smart%20Object) d'entrée avec des données présentes dans la base de données.


À partir d’un tableau d’entrée de [Smart Objects](Glossaire.md#Smart%20Object) et des paramètres de configuration, les éléments seront intégrés à la base de données
 - Si le [Smart Object](Glossaire.md#Smart%20Object) n’existe pas, un nouvel élément sera créé dans la base de données
 - Si le [Smart Object](Glossaire.md#Smart%20Object) existe, les propriétés de l’élément seront mises à jour avec la valeur d’entrée

## Fonctionnement

![[SN-MERGE__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Smart Model | string | [Smart Model](Glossaire.md#Smart%20Model) dans lequel la fusion sera effectuée |
| 2 | Smart Objects à fusionner | so:* | Tableau des [Smart Objects](Glossaire.md#Smart%20Object) à fusioner |
| 3 | Propriété de référence | string | Les propriétés qui permettent l'identification du [Smart Object](Glossaire.md#Smart%20Object) pour la recherche de l'existant dans la base de données |
| 4 | Propriétés à fusionner | string | Les propriétés à fusionner, à mettre à jour, du nouvel objet à l'objet existant.<br />Si aucune propriété n'est renseignée, toutes les propriétés du [Smart Object](Glossaire.md#Smart%20Object) seront fusionnées. |
| 5 | Sauvegarder sur l'API | boolean | Si la condition est vrai, les transactions de création et de modification seront effecuées en base de données |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | so:* | Tableau des [Smart Objects](Glossaire.md#Smart%20Object) ajoutés après le travail de fusion |
| 2 |  | so:* | Tableau des [Smart Objects](Glossaire.md#Smart%20Object) modifiés après le travail de fusion |

## Utilisation

### Studio

![[SN-MERGE__studio.png]]

