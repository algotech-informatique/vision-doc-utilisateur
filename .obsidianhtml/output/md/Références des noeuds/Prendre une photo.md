# Prendre une photo

#workflow

## Description

La tâche **Prendre une photo** permet d'utiliser le dispositif photo de l'appareil (ordinateur avec la webcam, mobile avec l’appareil photo).


Il est possible avec tâche de prendre plusieurs photos, de les noter et même de les taguer.

Il est également possible d'utiliser une image provenant du stockage de l'appareil.

## Fonctionnement

![[SN-CAMERA__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Titre (texte affiché) | string | Le titre affiché pour la tâche |
| 2 | Smart Object | sk:atDocument | [Smart Object](Glossaire.md#Smart%20Object) où la(les) photo(s) sera(ont) enregistrée(s) |
| 3 | Nom par défaut | string | Nom par défaut avec lequel où la(les) photo(s) sera(ont) enregistrée(s) |
| 4 | Autoriser plusieurs images | boolean | Permet la prise de plusieurs photos |
| 5 | Mémoire Interne | boolean | Permet l’accès aux images dans la mémoire interne de l'appareil (galerie d'images) |
| 6 | Editer les annotations | boolean | Autoriser la création d'annotations sur les photos |
| 7 | Activer le taggage | boolean | Autorises la création de tags sur les photos |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 |  | sys:file | Fichier(s) incluant(s) la(es) photo(s) créée(s) |

## Utilisation

### Studio

![[SN-CAMERA__studio.png]]

