---
{}
---
   
# Étape 3 - Créer ses interfaces   
   
> [!hint]    
> Retrouvez la documentation sur l'UI Composer [ici](../04%20-%20Cr%C3%A9er%20votre%20UI/0%20-%20L%27UI%20Composer.md) !   
>    
> Cette étape vous décrit pas à pas comment parvenir au design de l'application météo. Mais il est tout à fait possible de ne pas suivre le design à la lettre, libre à vous de créer votre propre design 😉 !   
   
# L'application   
   
Passons à l'interface de l'application météo en ajoutant une nouvelle application web que nous appelons **Météo** sur l'[UI Composer](../_glossaire/Glossaire.md).   
   
Tout d'abord, nous allons associer notre application à une icône.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_icone.png)   
   
Utilisons comme thème de l'application le thème clair prédéfini.   
   
> [!info]    
> Plus d'informations sur les thèmes d'une application [ici](../04%20-%20Cr%C3%A9er%20votre%20UI/1%20-%20Les%20applications.md#thème-de-l'application).   
   
Nous allons maintenant nous occuper du design de l'application sans se soucier des données et des événements.   
   
# Le fond   
   
Pour le fond de l'application, la couleur utilisée est `#c7d7e6`.   
   
Nous y intégrerons un [widget Rectangle](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Rectangle.md) de `1075px` de largeur et `710px` de hauteur qui servira de conteneur global. Nous y ajouterons un radius à `30px` et une ombre externe en transparence avec la couleur `#00000035` et une estompe à `25px`.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_empty_design.png)   
   
# La barre latérale   
   
La barre latérale de notre application va intégrer plusieurs fonctionnalités :   
   
- L'adaptation de sa couleur de fond à la météo : clair pour le beau temps et sombre pour le mauvais temps   
- L'affichage des données météorologiques : le nom de la ville, l'icône représentant la météo, la température actuelle et la description de la météo actuelle   
- Des boutons de configuration : un pour rechercher une ville et un pour choisir le système d'unités météo    
   
## Le conteneur   
   
Pour la barre latérale, nous utiliserons un nouveau [widget Rectangle](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Rectangle.md) que nous placerons au dessus sur la gauche du rectangle du fond.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sidebar_empty.png)   
   
Pour l'intégrer correctement au conteneur du fond, il faut que le rectangle pour la barre latérale ait la même hauteur, soit `710px` et sa largeur est de `345px`.   
Il faut aussi lui donner le même radius que le conteneur du fond, `30px`, aux angles haut gauche et bas gauche.   
   
Pour la couleur, nous utiliserons une couleur bleu clair qui sera appliquée pour le beau temps : `#65b6ff`.   
Nous verrons dans une autre étape le conditionnement de cette couleur suivant la météo.   
   
## Les données météo   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_data_sidebar.png)   
   
Nous allons utiliser trois [widgets texte](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Texte.md) pour afficher le nom de la ville, la température actuelle et la description de la météo.   
Ils font tous `290px` de largeur et respectivement `50px`, `100px` et `120px` de hauteur.   
   
Les trois widgets sont centrés (disposition et texte), excepté la description qui aligne la disposition au début.   
   
La température étant la donnée clé que nous souhaitons mettre en avant ici, nous allons lui donner un style gras et lui donner une taille de texte de `60px`.   
Pour la ville, nous attribuerons une taille de texte de `35px` et `30px` pour la description.    
   
Pour faciliter l'alignement des données avec le fond de la barre latérale, nous allons grouper tous les widgets qui composent la barre latérale dans un même groupe.   
   
> [!info]    
> Retrouvez comment créer un groupe de widgets [ici](../04%20-%20Cr%C3%A9er%20votre%20UI/3%20-%20Les%20widgets.md#grouper-un-widget)   
   
Pour le moment, nous ne nous occupons pas de lier les propriétés de notre [Smart Model](../_glossaire/Glossaire.md) avec l'affichage, nous mettrons des données de test dans la partie aperçu du texte des widgets.    
   
> [!info]    
> Retrouvez comment renseigner l'aperçu du widget texte [ici](../04%20-%20Cr%C3%A9er%20votre%20UI/3%20-%20Les%20widgets.md#la-saisie-de-texte)   
   
Pour l'icône, de la météo, nous utiliserons un [widget image](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Image.md) d'une largeur et hauteur de `180px` que nous ajouterons au groupe (centré à la barre latérale).   
Nous le configurons pour qu'il prenne en source une URL (que nous renseignerons plus tard) et nous allons changer son fond en un fond transparent.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sidebar_image.png)   
   
## Les boutons de configuration   
   
### Le bouton de recherche   
   
Pour la recherche de ville, nous allons simplement utiliser un [widget bouton](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Bouton.md) composé d'une icône de `70px` de hauteur et largeur.   
Pour le style, l'icône a une taille de `25px`, elle est de couleur primaire (couleur du thème) et le fond est blanc avec une ombre externe en transparence de couleur `#00000033`, avec `8px` d'estompe et décalé de `7px` sur l'axe y.   
   
### Le bouton de configuration du système d'unités   
   
Ce bouton est en fait un assemblement de trois widgets : deux [widgets bouton](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Bouton.md) pour sélectionner l'unité et un [widget polygone](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Polyligne.md) pour les séparer.   
   
Nous commençons d'abord par créer un premier bouton composé seulement d'un texte en blanc de `18px` sur un fond transparent et de taille carré de `50px`.   
   
> [!important]    
> Jusqu'ici on utilisait [l'aperçu](../04%20-%20Cr%C3%A9er%20votre%20UI/3%20-%20Les%20widgets.md#la-saisie-de-texte) pour renseigner le texte des [widgets texte](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Texte.md). Cependant dans le cas de ce bouton et pour tous les autres titres statiques (qui ne sont pas des variables), il ne faudra pas renseigner le texte dans [l'aperçu](../04%20-%20Cr%C3%A9er%20votre%20UI/3%20-%20Les%20widgets.md#la-saisie-de-texte).   
   
![](../_assets/images/vue%20d%27ensemble/meteo_button_units_polyligne.gif)   
   
Copions notre premier bouton pour le coller juste à côté. Nous le laissons de côté.   
Ensuite, utilisons l'outil de création de [widget polyligne](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Polyligne.md) pour créer une ligne de séparation entre les deux boutons.   
   
Il reste à modifier le texte du second bouton en *°F* et à améliorer le rendu de notre ligne : nous modifions l'épaisseur de cette ligne à `1px` et changeons sa couleur en blanc.   
   
Ça y est, le design de la barre latérale est terminé 👌 !   
   
Si vous avez bien suivi toutes les étapes normalement vous devriez arriver à ce résultat :   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sidebar_design.png)   
   
# Le contenu   
   
Passons maintenant au contenu du conteneur qui affiche le détail des données météo. Les détails sont affichés sous forme de cartes, chaque carte présentant une information différente.   
   
## La carte de détail   
   
Nous allons pour cela d'abord créer une carte : la carte qui affiche la température minimale.   
   
Pour cela, nous utiliserons un [widget rectangle](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Rectangle.md) pour définir le conteneur de la carte.   
Nous lui attribuons une largeur de `195px`, une hauteur de `200px`, une couleur de fond blanche et un radius de `25px`.     
   
Ensuite, nous allons pouvoir grouper avec ce widget, un [widget image](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Image.md) pour illustrer la donnée, et deux [widgets texte](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Texte.md), un pour le titre et un pour le résultat.   
   
> [!info]    
> Pour toutes les images des cartes, nous allons utiliser la bibliothèque [Material Symbols](https://fonts.google.com/icons) customisée avec la propriété *Weight* à la valeur `100` pour télécharger les symboles qui nous intéressent en format PNG.   
> Les symboles utiilsés sont : *Arrow Downward*, *Arrow Upward*, *Emoji People*, *Air*, *Humidity Low* et *Compress*   
   
Pour la carte que nous sommes en train de créer, la température minimale, utilisons l'icône *Arrow Downward* que nous donnons en source à notre [widget image](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Image.md) auquel nous pouvons attribuer une taille de `40px` de largeur et de hauteur.   
   
Pour les [widgets texte](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Texte.md), nous leur donnerons une largeur de `160px` et nous les centrerons par rapport au conteneur de la carte.   
   
Le premier [widget texte](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Texte.md) représentant le titre de la donnée, configurons la taille du texte à `20px` puis alignons le à gauche, et pour finir, attribuons lui la couleur secondaire du thème.   
   
Pour le second [widget texte](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Texte.md), configurons sa taille à `30px`, alignons le à droite et attribuons lui la couleur primaire du thème.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_card.png)   
   
## Partager la carte   
   
Notre première carte terminée, nous allons ajouter son modèle aux composants partagés pour pouvoir facilement le réutiliser pour les autres données à afficher.   
   
> [!info]    
> Plus d'informations sur les composants partagés [ici](../04%20-%20Cr%C3%A9er%20votre%20UI/3%20-%20Les%20widgets.md#les-composants-partagés).   
   
Commençons d'abord par ajouter notre groupe de widgets représentant la carte aux composants partagés.   
   
Ensuite, nous nous occuperons d'abord de verrouiller les éléments qui sont propres aux cartes (au cas où l'on voudrait modifier la carte dans le futur et ne pas tout écraser) : la position de la carte, la source de l'image et les textes.   
   
![](../_assets/images/vue%20d%27ensemble/metep_app_card_shared_lock.gif)   
   
Il est maintenant temps d'ajouter les modèles 5 fois pour les 5 autres données que nous souhaitons afficher : la température minimale, la température ressentie, la vitesse du vent, l'humidité et la pression atmosphérique.   
   
Modifions simplement les textes et les images pour les cartes que l'on vient de déposer et le tour est joué, le design de l'application est enfin terminé ! 🥳   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_design.png)   
   
   
---   
   
Prochaine étape : [Étape 4 - Créer sa logique](../02%20-%20Cr%C3%A9er%20sa%20premi%C3%A8re%20application/%C3%89tape%204%20-%20Cr%C3%A9er%20sa%20logique.md)