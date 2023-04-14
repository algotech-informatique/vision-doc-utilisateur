---
{}
---
   
# Étape 5 - Établir les connexions   
   
Maintenant que la partie sur la logique est terminée, il nous reste à connecter tous nos [smartflows](../_glossaire/Glossaire.md) et [workflows](../_glossaire/Glossaire.md) sur l'application *Météo*. Pour cela, rendez-vous sur l'[UI Composer](../_glossaire/Glossaire.md) avec l'application *Météo*.   
   
# Charger la météo   
   
La première étape pour charger la météo est de charger dans l'application le [Smart Object](../_glossaire/Glossaire.md) de type `Config météo`, pour cela nous allons utiliser notre [smartflow](../_glossaire/Glossaire.md) [[Étape 4 - Créer sa logique#Récupérer le [Smart Object](../_glossaire/Glossaire.md) Config Météo|get_weather_config]].   
Nous l'ajouterons aux *Source de données* de notre page *Météo* et la nommerons `meteo`.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_datasource.png)   
   
Grâce à cette source de données, il est maintenant possible de connecter toutes les propriétés des widgets qui affichent des données sur notre page.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_widget_datasource.gif)   
   
C'est le cas de l'icône de la météo, la température et la description dans la barre latérale mais aussi des différentes données dans les cartes.   
   
> Pour l'URL de l'icône : `https://openweathermap.org/img/wn/{{datasource.meteo.ICON}}@4x.png`   
   
Si tout s'est bien passé, en lançant l'aperçu vous devriez voir toutes les données météo affichées dans l'application ! 🤗   
   
## Conditionner la couleur de la barre latérale   
   
Actuellement la couleur de fond de la barre latéral est bleu ciel. Nous allons ajouter des conditions pour que la couleur se modifie en fonction de la météo.   
   
> [!info]   
> Plus d'informations sur les conditions des widgets [ici](../04%20-%20Cr%C3%A9er%20votre%20UI/3%20-%20Les%20widgets.md#conditions-des-widgets) !   
   
Pour cela nous allons créer deux conditions sur le [widget Rectangle](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Rectangle.md) qui constitue le fond de la barre latérale : la règle *Couvert* et la règle *Très couvert*.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sidebar_rules.png)   
   
Pour la première règle *Couvert*, elle est active lorsque la propriété `icon` de notre variable `meteo` est égale à 50d, 13d, 04d ou encore 10d.   
La règle a donc comme opérateur l'opérateur `ou` et possède 4 conditions avec le critère `égal à`.   
Lorsque la règle sera activée, nous modifierons la couleur du fond en gris clair `#a9baca`.   
   
Pour la règle *Très couvert*, elle est active lorsque la propriété `icon` de notre variable `meteo` est égale à 09d ou 11d.   
Comme précédemment, nous utiliserons l'opérateur `ou` et nous ajouterons les 2 conditions avec le critère `égal à`.   
Lorsque la règle sera activée, nous modifierons la couleur du fond en un gris plus sombre `#353535`.   
   
# Rechercher une ville   
   
> [!info]   
> Plus d'informations sur les actions au clic des widgets [ici](../04%20-%20Cr%C3%A9er%20votre%20UI/3%20-%20Les%20widgets.md#actions-au-clic) !   
   
Nous passons maintenant à l'implémentation du bouton pour rechercher une ville.   
Il suffit simplement de sélectionner le [widget bouton](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Bouton.md), dans la section *Actions au clic* et d'y ajouter le [workflow](../_glossaire/Glossaire.md) *Rechercher une ville* qui a été créé dans l'étape précédente.   
   
Nous lui donnerons en entrée la source de données `meteo`.   
En profil, nous associerons les groupes de sécurité que nous souhaitons (ceux qui auront accès à l"application plus tard).   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_search_button_action.png)   
   
Testons l'application... 🤩 La mise à jour de la météo et de la couleur de la barre latérale fonctionnent !   
   
# Modifier l'unité   
   
La dernière fonctionnalité à implémenter est le bouton pour modifier les unités à afficher.   
   
Pour cela nous allons commencer par associer le [smartflow](../_glossaire/Glossaire.md) *set_weather_units* aux deux boutons, le premier (°C) enverra la valeur `metric` dans l'entrée en plus de la source de données `meteo`. Le second bouton (°F) enverra quant à lui la valeur `imperial`.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_units_button_action.png)   
   
Nous allons aussi ajouter une règle sur chacun des boutons.   
Cette règle prend en condition la valeur de la propriété `units` de la source de données `meteo`.   
Pour le bouton (°C), si cette valeur est égale à `metric`, nous mettrons notre widget en gras.   
Pour le bouton (°F), si cette valeur est égale à `imperial`, nous mettrons notre widget en gras.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_units_condition.png)   
   
Pour que le bouton se mette à jour au clic, il va falloir ajouter une seconde action dans la section *Actions au clic* des boutons.   
Nous y ajouterons l'action *Rechargement* qui rechargera le bouton pour prendre en compte la modification de l'unité sur la source de données.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_unit_button_chain_actions.png)   
   
En testant, nous pouvons remarquer que le bouton passe en gras lorsque nous cliquons dessus... Mais il reste encore à modifier l'affichage des unités de nos données 😯 !   
   
Pour faire cela nous allons devoir ajouter la même règle sur chaque widget qui affiche une donnée avec une unité qui sera différente suivant le système d'unités (°C en °F et km/h en mph).   
Cette règle modifiera le texte affichée avec la bonne unité lorsque la propriété `units` est égale à `imperial`.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_data_conditions.png)   
   
Testons une dernière fois l'application, tout devrait fonctionner correctement !   
   
C'est enfin fini pour cette partie des connexions ! 😃   
   
   
---   
   
Prochaine étape : [Étape 6 - Publier son application](../02%20-%20Cr%C3%A9er%20sa%20premi%C3%A8re%20application/%C3%89tape%206%20-%20Publier%20son%20application.md)