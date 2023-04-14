# Formulaire

#workflow

## Description

La tâche **Formulaire** permet d'éditer un objet graphiquement via un formulaire.


Les champs du formulaire sont générés automatiquement en fonction du type de la propriété.
Si besoin, ceux-ci peuvent être personnalisés.

## Fonctionnement

![[SN-FORM__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Titre (texte affiché) | string | Le titre du formulaire |
| 2 | Smart Object | so: | Le [Smart Object](Glossaire.md#Smart%20Object) à éditer |
| 3 | Smart Model à configurer | string | Le [Smart Model](Glossaire.md#Smart%20Model) de l'objet à éditer.<br />Permet de paramétrer le formulaire pour les sous-objet sélectionné.<br /><br />Lorsque le modèle du [Smart Object](Glossaire.md#Smart%20Object) est inconnu, il est possible de créer plusieurs configurations.<br /> Lors de l'évaluation de la tâche, la configuration du modèle correspondant au [Smart Object](Glossaire.md#Smart%20Object) sera prise. |
| 4 | Champs | section | Sélectionne les champs de l'objet à afficher, par défaut tous les champs sont affichés dans le formulaire |
| 5 | Description | string | La description du formulaire |
| 6 | Lecture seule | boolean | Permet de rendre le formulaire non éditable |
| 7 | Activer le taggage | boolean | Permet d'ajouter des tags à l'objet édité |
| 8 | Modèles de tag | string | Indique la liste de tags à utiliser pour tagger l'objet lorsque le taggage est activé |

## Utilisation

> [!tip]
> Retrouvez plusieurs cas d'usages de l'utilisation de la tâche formulaire sur la documentation du [[Créer un formulaire|worflow typique pour créer un formulaire]].

### Studio

![[SN-FORM__studio.png]]

#### Configuration des champs

Chaque champ affiché par le formulaire peut être configuré depuis l'[[Glossaire#inspecteur|inspecteur]]. Les options de configuration dépendent du type du champ du [Smart Object](Glossaire.md#Smart%20Object).

##### Les conditions

Pour chaque champ, on retrouve une section qui permet de configurer des conditions d'affichage ou d'édition du champ.

![[conditions.png]]

La condition se base sur la valeur d'une des propriétés du [Smart Object](Glossaire.md#Smart%20Object), indépendamment du champ configuré.

- Une condition de type *Affichage* signifie que le champ sera affichée par le formulaire seulement si les conditions définies sont remplies.
- Une condition de type *Édition* signifie que le champ ne pourra être éditable depuis le formulaire seulement si les conditions définies sont remplies.

Plusieurs conditions peuvent être listées et le choix de l'opérateur (ET ou OU) peut être configuré.

##### Champ de type string 

| Paramètre           | Utilisation                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| ------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Affichage**       | **Texte simple :** Une saisie pour un texte court<br />**Zone de texte :** Une saisie pour un texte long qui peut s'étendre sur plusieurs lignes<br />**Liste prédéfinie :** Une liste prédéfinie de textes, la valeur doit obligatoirement se trouver dans la liste<br />**Liste prédictive :** Une liste de textes suggérée à l'utilisateur lorsqu'il saisit la donnée, mais la valeur n'est pas obligatoirement présente dans cette liste |
| **Caractères**      | **Minimum :** Le nombre minimum de caractères de la valeur saisie (par défaut 0)<br />**Maximum :** Le nombre maximum de caractères de la valeur saisie (par défaut pas de maximum)                                                                                                                                                                                                                                                          |
| **Valeur du champ** | **Défaut :** Permet de saisir une valeur par défaut au champ                                                                                                                                                                                                                                                                                                                                                                                                                                             |

##### Champ de type liste générique 

| Paramètre     | Utilisation                                                                                                                                                                                                                                       |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Affichage** | **Zone :**  ![[settings_glist_zone.png]]<br /><br />**Liste :** ![[settings_glist_list.png]]<br /><br />**Bulle :** ![[settings_glist_bulles.png]]                                                                          |
| **Liste tri** | **Par défaut :** la liste n'est pas triée<br />**Ascendant :** tri alphabétique et numérique croissant<br />**Descendant :** tri alphabétique et numérique décroissant<br />**Aléatoire :** Les éléments de la liste sont affichés aléatoirement |
| **Options**              | **Branchée :** Permet de brancher la liste générique (retrouvez [ici](Créer%20un%20formulaire#Liste%20prédéfinie) un cas d'usage)                                                                                                                                                                                                                                                   |

##### Champ de type booléen

| Paramètre | Utilisation |
| --------- | ----------- |
| **Affichage**          | **Switch :** ![[settings_bool_switch.png]]<br /><br />**Checkbox :** ![[settings_bool_checkbox.png]]<br /><br />**Oui/Non :** ![[settings_bool_yesno.png]]             |


##### Champ de type nombre

| Paramètre | Utilisation |
| --------- | ----------- |
| **Affichage**          |  L'affichage du nombre peut être par défaut, c'est-à-dire sans troncage, ou il peut être configurable pour afficher seulement des valeurs entières ou afficher 2 chiffres après la virgule           |

### Player

![[SN-FORM__player.gif]]

