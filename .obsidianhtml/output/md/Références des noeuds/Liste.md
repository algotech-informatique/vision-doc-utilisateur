# Liste

#workflow

## Description

La tâche **Liste** permet de lister graphiquement des objets.


Par défaut, l'utilisateur doit sélectionner un élément de la liste pour passer à la tâche suivante du [workflow](Glossaire.md#Workflow). La personnalisation du nœud grâce aux paramètres et modes peuvent modifier ce comportement.

## Fonctionnement

![[SN-LIST__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Titre (texte affiché) | string | Le titre de la liste |
| 2 | Items | so:, sys:user, sys:location, sys:schedule, sys:workflow | Le tableau d'objets à lister |
| 3 | Propriétés Affichées | string | Indique les propriétés du modèle à afficher pour chaque élément de la liste, au maximum 3. La clé primaire et secondaire sont affichées par défaut. |
| 4 | Selection multiple | boolean | Permet à l'utilisateurs de sélectionner plusieurs éléments de la liste pour passer à la tâche suivante |
| 5 | Liste paginée | boolean | Permet d'afficher les éléments de la liste par dizaine, un bouton à la suite permet de charger la dizaine suivante |
| 6 | Montrer barre de recherche | boolean | Permet d'afficher une barre de recherche en amont de la liste |
| 7 | Montrer barre de recherche | boolean | Permet d'insérer une recherche par défaut dans la barre lorsque celle-ci est affichée. La liste sera filtrée par rapport à cette recherche. |
| 8 | Mode Panier | boolean | Ce mode s'utilise en sélection multiple seulement, il permet d'ajouter un bouton en en-tête de la liste qui affichera la sélection en cours |
| 9 | Mode Boucle | boolean | Ce mode s'utilise en sélection unique seulement et permet de générer une transition de sortie de liste, en plus de la transition de sélection |
| 10 | Filtre par propriété | string | Permet de filtrer la liste par une propriété du modèle |
| 11 | Filtre actif | boolean | Permet d'activer le filtre par défaut |
| 12 | Smart Objects à exclure | so: | Objet(s) qui seront retiré(s) de la liste |

### Sorties

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | select | flow | Flux de sortie à la sélection d'un item |
| 2 |  | so: | Objet(s) sélectionné(s) |
| 3 | Sortir | flow | En mode boucle, flux de sortie de la tâche liste |

## Utilisation

### Studio

![[SN-LIST__studio.png]]

### Player

![[SN-LIST__player.gif]]

