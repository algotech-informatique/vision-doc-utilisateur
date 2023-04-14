---
{}
---
   
# Étape 4 - Créer sa logique   
   
> [!hint]    
> Retrouvez la documentation sur les smartflows [ici](../06%20-%20Smartflows%2C%20connecter%20vos%20apps/0%20-%20Le%20concept%20de%20smartflow.md) !   
   
C'est parti pour la création de la logique de l'application 😁 !   
   
Remettons-nous d'abord en tête les fonctionnalités de l'application :    
   
- Afficher les données météorologiques d'une ville choisie   
- Rechercher une ville française pour afficher sa météo   
- Choisir le système d'unités pour les données affichées   
- Enregistrer la dernière ville saisie pour la prochaine ouverture de l'application   
   
Pour afficher les données météorologiques nous devons récupérer les informations en provenance d'une API. Pour faire cela, nous allons créer ensemble un [smartflow](../_glossaire/Glossaire.md) qui utilisera l'API [Open Weather Map](https://openweathermap.org/).   
   
Pour changer de ville, nous utiliserons un [workflow](../_glossaire/Glossaire.md) qui nous sera doté d'un formulaire pour rechercher et saisir la ville.   
La liste des villes proviendra elle aussi d'un [smartflow](../_glossaire/Glossaire.md) qui utilisera l'API [Découpage administratif des communes](https://geo.api.gouv.fr/decoupage-administratif/communes).   
   
Un troisième [smartflow](../_glossaire/Glossaire.md) va être créé pour pouvoir mettre à jour le système d'unités utilisé pour l'affichage des données météo.   
   
Nous terminerons par un dernier [smartflow](../_glossaire/Glossaire.md) qui se lancera au lancement de l'application et qui permettra de récupérer notre [Smart Object](../_glossaire/Glossaire.md) en base de données ou de l'initialiser (si c'est la première fois que l'on accède à l'application).   
   
# L'API Météo   
   
> [!note]    
>Comme annoncé au dessus, nous utilisons une API [Open Weather Map](https://openweathermap.org/). Il va falloir tout d'abord créer un compte sur leur site internet pour récupérer une API Key qui va nous permettre d'accéder à leur API.   
   
Créons un premier [smartflow](../_glossaire/Glossaire.md) pour récupérer les données météorologiques d'une ville et appelons le *get_current_weather*.   
   
Ce [smartflow](../_glossaire/Glossaire.md) va prendre un paramètre d'entrée : un [Smart Object](../_glossaire/Glossaire.md) de type `Config Météo` (cf. [l'étape 2](../02%20-%20Cr%C3%A9er%20sa%20premi%C3%A8re%20application/%C3%89tape%202%20-%20Cr%C3%A9er%20ses%20mod%C3%A8les.md)).   
Nous appelons cet variable d'entrée: `config`.   
   
Ce [Smart Object](../_glossaire/Glossaire.md) sera mis à jour par le [smartflow](../_glossaire/Glossaire.md) avec les données récupérées par l'API.   
Pour le moment, nous ne nous soucions pas de la manière de récupérer ce [Smart Object](../_glossaire/Glossaire.md).   
   
![](../_assets/images/vue%20d%27ensemble/meteo_sf_var_config.png)   
   
Pour commencer, comme pour tout [smartflow](../_glossaire/Glossaire.md), nous ajoutons un [nœud Départ](../R%C3%A9f%C3%A9rences%20des%20noeuds/D%C3%89PART.md).   
   
## Récupérer les données météo   
   
Pour effectuer la requête à l'API, nous utiliserons le [nœud Service](../R%C3%A9f%C3%A9rences%20des%20noeuds/Service.md).   
   
Grâce à la [documentation Open Weather Map](https://openweathermap.org/current#geocoding), nous avons toutes les informations pour appeler correctement l'API.   
   
Voici la configuration de notre nœud :   
   
| Entrée          | Valeur                                          |   
| --------------- | ----------------------------------------------- |   
| Type            | Get                                             |   
| Type de réponse | Json                                            |   
| Url             | [https://api.openweathermap.org/data/2.5/weather](https://api.openweathermap.org/data/2.5/weather) |   
| Clé-Valeur      | Vrai                                            |   
   
Ensuite pour les paramètres :    
   
| Paramètre | Type                 | Description                                                                             |   
| --------- | -------------------- | --------------------------------------------------------------------------------------- |   
| appid     | chaîne de caractères | La clé api Open Weather Map. Pour le tutoriel, l'API key sera renseignée en tant que paramètres du connecteur Météo.                                                             |   
| lang      | chaîne de caractères | La langue retournée par l'api, nous choisirons fr pour avoir le résultat en français      |   
| q         | chaîne de caractères | La ville pour la météo, ici nous le lierons à la propriété `Ville` de notre variable `config` |   
| units     | chaîne de caractères | Le système d'unités, ici nous le lierons à la propriété `Units` de notre variable `config`                                                                     |   
   
![](../_assets/images/vue%20d%27ensemble/meteo_sf_service.png)   
   
Nous allons nous assurer que le [nœud Service](../R%C3%A9f%C3%A9rences%20des%20noeuds/Service.md) fonctionne en lançant l'aperçu... 😟   
   
Cela ne fonctionne pas pour le moment car nous n'avons pas encore de [Smart Object](../_glossaire/Glossaire.md) en base de données.   
Nous allons débrancher les paramètres `q` et `units` et remplir directement le nom d'une ville et mettre la valeur `metric` pour le système d'unités.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_sf_service_test.gif)   
   
Dans le débogueur, dans la section variables, nous retrouvons le résultat du [nœud Service](../R%C3%A9f%C3%A9rences%20des%20noeuds/Service.md).   
   
## Éditer un Smart Object   
   
Nous allons maintenant exploiter le résultat du [nœud Service](../R%C3%A9f%C3%A9rences%20des%20noeuds/Service.md) pour éditer notre variable *config*.   
   
Pour cela, nous utiliserons le [nœud Explorer un objet](../R%C3%A9f%C3%A9rences%20des%20noeuds/Explorer%20un%20objet.md) pour accéder aux champs de l'objet. Certaines données qui nous intéressent sont directement disponibles depuis le sous-objet `main` du résultat : la température, la température minimale, la température maximale, la pression atmosphérique, l'humidité et le ressenti.   
   
Nous pouvons ensuite utiliser le [nœud Éditer un Smart Object](../R%C3%A9f%C3%A9rences%20des%20noeuds/Editer%20un%20Smart%20Object.md) pour lier les données aux propriétés du [Smart Object](../_glossaire/Glossaire.md) `config`.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_sf_bind_data.png)   
   
> [!tip]    
> N'hésitez pas à tester votre [smartflow](../_glossaire/Glossaire.md) à chaque nouvelle modification pour vérifier que tout fonctionne 😉 !    
   
... ☹️ Oups ! Une erreur est survenue pendant la lecture du [workflow](../_glossaire/Glossaire.md) ?   
   
Pas d'inquiétude c'est normal !    
   
Nous essayons d'éditer un [Smart Object](../_glossaire/Glossaire.md) qui n'existe pas, forcément ça ne peut pas fonctionner ! Pour palier à ce petit problème pendant nos tests, nous allons créer un [Smart Object](../_glossaire/Glossaire.md) en amont du [smartflow](../_glossaire/Glossaire.md).   
Nous utiliserons le [nœud Créer un Smart Object](../R%C3%A9f%C3%A9rences%20des%20noeuds/Cr%C3%A9er%20un%20Smart%20Object.md) pour créer un [Smart Object](../_glossaire/Glossaire.md) de type `Config Météo` que nous nommerons `config_test`.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_sf_config_test.png)   
   
Lorsqu'on le donne en entrée du [nœud Éditer un Smart Object](../R%C3%A9f%C3%A9rences%20des%20noeuds/Editer%20un%20Smart%20Object.md) et qu'on lance l'aperçu du [smartflow](../_glossaire/Glossaire.md), ça fonctionne !   
   
Passons maintenant à la suite des données que nous souhaitons récupérer. Le nom de l'icône et la description de la météo se situent dans le premier élément du sous-objet tableau `weather`.    
   
Pour y accéder, nous allons ajouter à notre [nœud Explorer un objet](../R%C3%A9f%C3%A9rences%20des%20noeuds/Explorer%20un%20objet.md) le champ `weather` de type objet et multiple.   
Avec le [nœud Fonction sur Tableau](../R%C3%A9f%C3%A9rences%20des%20noeuds/Fonction%20sur%20Tableau.md), nous utiliserons la fonction *Item* pour accéder à l'élément 0 de `weather` (le premier élément du tableau).   
   
Nous intégrerons ce résultat à une variable à l'aide du [nœud Créer une variable](../R%C3%A9f%C3%A9rences%20des%20noeuds/Cr%C3%A9er%20une%20variable.md) pour pouvoir exploiter les champs string `icon` et `description` avec le [nœud Explorer un objet](../R%C3%A9f%C3%A9rences%20des%20noeuds/Explorer%20un%20objet.md).   
   
![](../_assets/images/vue%20d%27ensemble/meteo_sf_data_weather.png)   
   
Nous pouvons ajouter la donnée `icon` directement dans notre [nœud Éditer un Smart Object](../R%C3%A9f%C3%A9rences%20des%20noeuds/Editer%20un%20Smart%20Object.md).   
Pour la description, nous la formaterons grâce au [nœud Formule](../R%C3%A9f%C3%A9rences%20des%20noeuds/Formule.md) et la formule `PROPER()` qui permet de mettre en majuscule la première lettre de chaque chaîne de caractères.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_edit_config.png)   
   
Lorsqu'on regarde les propriétés que l'on peut éditer dans notre [Smart Object](../_glossaire/Glossaire.md), il ne nous reste plus qu'à indiquer la propriété *Vent* (les propriétés *Ville* et *Units* sont renseignées par d'autres [smartflows](../_glossaire/Glossaire.md)).   
   
La [documentation Open Weather Map](https://openweathermap.org/current#geocoding) nous indique que cette donnée est envoyée en mètre/seconde lorsque le système d'unités est en métrique et en miles/heure lorsque le système d'unités est impériale.   
   
Avoir la vitesse du vent en mètre/seconde ne nous intéresse pas beaucoup, nous voulons l'afficher en km/heure pour que la donnée soit plus parlante.   
   
Pour cela, nous ajouterons au [nœud Explorer un objet](../R%C3%A9f%C3%A9rences%20des%20noeuds/Explorer%20un%20objet.md) le champ *wind* de type objet, que nous explorerons de nouveau pour accéder au champ *speed*.   
Nous transformerons ensuite cette vitesse avec deux [nœuds Formule](../R%C3%A9f%C3%A9rences%20des%20noeuds/Formule.md), le premier avec la formule `PRODUCT()` pour multiplier la vitesse par 3.6 pour passer en km/h et le second avec la formule `ROUNDUP()` pour arrondir le résultat.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_transform_data.png)   
   
Cette transformation ne devant se faire que pour le système d'unités métrique, nous utiliserons le [nœud Conditions](../R%C3%A9f%C3%A9rences%20des%20noeuds/Conditions.md):   
   
   
- si la propriété `Units` de notre [Smart Object](../_glossaire/Glossaire.md) `config` est égale à `metric`, création d'une variable `wind_speed` avec le [nœud Créer une variable](../R%C3%A9f%C3%A9rences%20des%20noeuds/Cr%C3%A9er%20une%20variable.md) qui applique notre transformation   
- sinon, création de la variable `wind_speed` directement depuis la donnée `speed` récupérée de l'API sans transformation.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_wind_speed.png)   
   
> Pour tester facilement, nous pouvons remplacer le champ à comparer du [nœud Conditions](../R%C3%A9f%C3%A9rences%20des%20noeuds/Conditions.md) par un texte (avec les valeurs `metric` ou `imperial` grâce au [nœud Formule](../R%C3%A9f%C3%A9rences%20des%20noeuds/Formule.md)).   
   
La dernière étape consiste à ajouter le [nœud Résultat du smartflow](../R%C3%A9f%C3%A9rences%20des%20noeuds/R%C3%A9sultat%20du%20smartflow.md) pour qu'il renvoie notre [Smart Object](../_glossaire/Glossaire.md) `config` mis à jour, puis d'ajouter le [nœud Fin](../R%C3%A9f%C3%A9rences%20des%20noeuds/FIN.md) avec l'option *Sauvegarde* activée pour sauvegarder en base de données nos modifications.    
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_get_current_weather_result.png)   
   
Il ne nous reste plus qu'à supprimer notre variable `config_test`, brancher correctement toutes les entrées avec les propriétés de la variable `config` et le tour est joué, notre [smartflow](../_glossaire/Glossaire.md) pour récupérer la météo est prêt à être publié ! 🤗   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_get_current_weather.gif)   
   
# La recherche de ville   
   
Passons maintenant au [workflow](../_glossaire/Glossaire.md) pour rechercher une ville.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_ville_wf_preview.gif)   
   
Pour fonctionner, ce [workflow](../_glossaire/Glossaire.md) s'appuie sur un [smartflow](../_glossaire/Glossaire.md) qui liste les communes françaises provenant d'une API.   
   
## Le Smartflow pour récupérer la liste des communes françaises   
   
Comme vous pouvez le remarquer, ce [smartflow](../_glossaire/Glossaire.md) est encore plus simple que celui utilisé pour récupérer la météo 😋 !   
   
![](../_assets/images/vue%20d%27ensemble/meteo_sf_city_search_parameters.gif)   
   
Créons donc un nouveau smarflow que nous nommerons *get_city*.   
Ce [smartflow](../_glossaire/Glossaire.md) aura en entrée une variable de type `Paramètres de recherche` pour pouvoir accéder à la recherche.   
   
> [!info]   
> Les paramètres de recherche sont utilisés en interne pour injecter les informations de recherche et de pagination d'un widget itérable (tableau, liste) ou d'une tâche itérable (Liste) à un [smartflow](../_glossaire/Glossaire.md).   
>    
> Plus d'informations sur l'utilisation des paramètres de recherche [ici](/not_created.md).   
   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_get_city_names.png)   
   
La première étape est la requête à l'[API Découpage administratif des communes](https://geo.api.gouv.fr/decoupage-administratif/communes#name) qui ne nécessite pas de clé API.   
Nous utiliserons le [nœud Service](../R%C3%A9f%C3%A9rences%20des%20noeuds/Service.md) que nous implémenterons grâce à la documentation :   
   
| Entrée          | Valeur                                          |   
| --------------- | ----------------------------------------------- |   
| Type            | Get                                             |   
| Type de réponse | Json                                            |   
| Url             | [https://geo.api.gouv.fr/communes](https://geo.api.gouv.fr/communes) |   
| Clé-Valeur      | Vrai                                            |   
   
Ensuite pour les paramètres :    
   
| Paramètre | Type                 | Description                                                                             |   
| --------- | -------------------- | --------------------------------------------------------------------------------------- |   
| nom     | chaîne de caractères | Nous utiliserons la propriété `search` de la variable `search-parameters`                                                             |   
| boost      | chaîne de caractères | Nous utiliserons `population` pour trier les résultats par population      |   
| limit     | chaîne de caractères | Nous mettrons une limite à `10` résultats par requête |   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_city_names_service.png)   
   
Maintenant, vous avez bien sûr suivi la recommandation plus haut et vous êtes en train de tester le [smartflow](../_glossaire/Glossaire.md) 😌 ! Vous remarquez donc que le résultat est bien un tableau d'objets comme mentionné dans la [documentation de l'API](https://geo.api.gouv.fr/decoupage-administratif/communes#name).   
   
Cependant, nous sommes intéressés seulement par le nom de la commune.   
C'est pour cela que nous utiliserons le [nœud Fonction sur Tableau](../R%C3%A9f%C3%A9rences%20des%20noeuds/Fonction%20sur%20Tableau.md) avec sa fonction `Map` pour récupérer un tableau de chaîne de caractères constitué uniquement de la propriété `nom`.   
   
Ce tableau alimentera ensuite le [nœud Résultat du smartflow](../R%C3%A9f%C3%A9rences%20des%20noeuds/R%C3%A9sultat%20du%20smartflow.md).   
   
## Le workflow avec le formulaire de recherche   
   
Le [smartflow](../_glossaire/Glossaire.md) réalisé, nous pouvons passer à la réalisation du [workflow](../_glossaire/Glossaire.md).   
Celui-ci prendra en entrée la variable `config` de type [Smart Object](../_glossaire/Glossaire.md) `Config Météo`.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_wf_city.gif)   
   
La première action consiste à vider la propriété `Ville` actuelle de notre variable `config`.   
Pour cela nous utiliserons le [nœud Éditer un Smart Object](../R%C3%A9f%C3%A9rences%20des%20noeuds/Editer%20un%20Smart%20Object.md) avec en entrée le [Smart Object](../_glossaire/Glossaire.md) `config`, nous attribuerons une chaîne de caractères vide à sa propriété `ville`.   
   
> Pour tester ce [workflow](../_glossaire/Glossaire.md) vous pouvez utiliser la même technique que pour le [smartflow](../_glossaire/Glossaire.md) *get_current_weather*, c'est-à-dire créer un [Smart Object](../_glossaire/Glossaire.md) `config_test` de type `Config Météo`.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_edit_so_city.png)   
   
Nous faisons cela pour pouvoir utiliser le [nœud Formulaire](../R%C3%A9f%C3%A9rences%20des%20noeuds/Formulaire.md) en ayant au préalable, assigné la valeur **Liste prédictive** dans l'[inspecteur](../_glossaire/Glossaire.md#inspecteur) du champ _VILLE_.   
   
![](../_assets/images/vue%20d%27ensemble/Ville-liste-predictive.png)   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_wf_form.png)   
   
Une fois que l'utilisateur de l'application aura choisi la ville, il faudra mettre à jour la météo associée...   
Pour se faire, nous appellerons notre [smartflow](../_glossaire/Glossaire.md) *get_current_weather* grâce au [nœud Appeler un smartflow](../R%C3%A9f%C3%A9rences%20des%20noeuds/Appeler%20un%20smartflow.md).   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_wf_call_sf.png)   
   
Si tout se passe bien et que le flow `Succès` du [nœud Appeler un smartflow](../R%C3%A9f%C3%A9rences%20des%20noeuds/Appeler%20un%20smartflow.md) est emprunté, nous pouvons directement terminer le [workflow](../_glossaire/Glossaire.md) avec le [nœud Fin](../R%C3%A9f%C3%A9rences%20des%20noeuds/FIN.md) (avec un toast *Météo mise à jour*).   
   
Mais dans le cas où l'utilisateur renseigne un mauvais nom de commune ou tout simplement que l'API de météo ne fonctionne pas pour la ville choisie, le [smartflow](../_glossaire/Glossaire.md) *get_current_weather* tombera en erreur.   
Dans ce cas là, nous allons alerter l'utilisateur que l'opération ne s'est pas bien produite grâce au [nœud Alerter](../R%C3%A9f%C3%A9rences%20des%20noeuds/Alerter.md) en choisissant le type d'alerte `erreur` et en renseignant un titre et un message d'erreur.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_wf_end.png)   
   
# Mettre à jour le système d'unités   
   
Ce [smartflow](../_glossaire/Glossaire.md), que nous appellerons *set_weather_units*, va nous permettre de mettre à jour le système d'unités grâce au bouton de l'application que nous avons créé précédemment (°C| °F).   
   
Ce [smartflow](../_glossaire/Glossaire.md) est simple et va prendre deux variables en entrée : un [Smart Object](../_glossaire/Glossaire.md) de type `Config Météo` et une string `units`. La variable `units` va définir le système d'unités et prendra la valeur `metric` ou `imperial`.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_update_units.png)   
   
Nous allons simplement utiliser le [nœud Éditer un Smart Object](../R%C3%A9f%C3%A9rences%20des%20noeuds/Editer%20un%20Smart%20Object.md) pour modifier la propriété `units` de la variable `config` par la variable d'entrée `units`. Ensuite, nous renverrons simplement l'objet `config` dans le [nœud Résultat du Smartflow](../R%C3%A9f%C3%A9rences%20des%20noeuds/R%C3%A9sultat%20du%20smartflow.md).   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_edit_so_units.png)   
   
# Récupérer le Smart Object Config Météo   
   
Il nous reste encore un dernier [smartflow](../_glossaire/Glossaire.md) à implémenter (oui oui le dernier 😇).   
C'est celui qui va permettre à l'application de récupérer notre [Smart Object](../_glossaire/Glossaire.md) `Config Météo` en base de données. Appelons donc ce dernier [smartflow](../_glossaire/Glossaire.md) *get_weather_config*.   
   
Le but est de récupérer en base de données notre [Smart Object](../_glossaire/Glossaire.md) `Config Météo` qui sera unique et que l'on viendra modifier lorsque que l'on charge la météo ou change la ville.   
   
Nous utiliserons le [nœud Recherche](../R%C3%A9f%C3%A9rences%20des%20noeuds/Recherche.md) en le configurant sur le [Smart Model](../_glossaire/Glossaire.md) `Config Météo`.   
Nous brancherons ensuite au résultat le [nœud Fonction sur Tableau](../R%C3%A9f%C3%A9rences%20des%20noeuds/Fonction%20sur%20Tableau.md) pour récupérer le premier item trouvé (_item en position 0_).   
   
Une fois le [Smart Object](../_glossaire/Glossaire.md) récupéré, nous pouvons utiliser le [nœud Appeler un Smartflow](../R%C3%A9f%C3%A9rences%20des%20noeuds/Appeler%20un%20smartflow.md) pour appeler le [smartflow](../_glossaire/Glossaire.md) *get_current_weather* et mettre à jour notre objet récupéré.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_object_db.png)   
   
Et bien sûr nous lançons l'aperçu... et ça ne fonctionne pas 😬. Forcément, sans objet en base, ça ne peut pas fonctionner.   
   
Pour cela, nous ajouterons une condition.   
Dans le cas où l'application *Météo* est chargée pour la première fois, le [Smart Object](../_glossaire/Glossaire.md) `Config Météo` sera créé en base de données.   
   
Commençons par créer notre condition.   
Pour cela nous allons brancher sur le résultat du [nœud Recherche](../R%C3%A9f%C3%A9rences%20des%20noeuds/Recherche.md), le [nœud Fonction sur Tableau](../R%C3%A9f%C3%A9rences%20des%20noeuds/Fonction%20sur%20Tableau.md) auquel on applique la fonction `Length` pour connaître la longueur du tableau.   
   
Nous branchons le résultat sur le champ à comparer du [nœud Conditions](../R%C3%A9f%C3%A9rences%20des%20noeuds/Conditions.md) auquel nous ajoutons un critère pour vérifier si la longueur du tableau est égale à 0.    
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_condition.png)   
   
Si la longueur de tableau est égale à 0, cela signifie qu'il n'y a pas d'objets en base de données de type `Config Météo`.   
   
Nous bronchons sur le flux _Vrai_ de la condition, le [nœud Créer un Smart Object](../R%C3%A9f%C3%A9rences%20des%20noeuds/Cr%C3%A9er%20un%20Smart%20Object.md) qui sera initialisé avec les propriétés `units` et `ville` renseignées pour faire fonctionner le [smartflow](../_glossaire/Glossaire.md) *get_current_weather*).   
   
Nous appellerons le [smartflow](../_glossaire/Glossaire.md) _get_current_weather_ (grâce au [nœud Appeler un Smartflow](../R%C3%A9f%C3%A9rences%20des%20noeuds/Appeler%20un%20smartflow.md)) pour mettre à jour la météo dans notre [Smart Object](../_glossaire/Glossaire.md) ([Smart Object](../_glossaire/Glossaire.md) que nous nommerons `config`).   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_create_so.png)   
   
Si la condition est fausse et que l'objet est bien présent en base de données, nous appellerons directement le [smartflow](../_glossaire/Glossaire.md) _get_current_weather_ avec l'objet retourné par la recherche (en n'oubliant pas de nommer le résultat de l'appel du [smartflow](../_glossaire/Glossaire.md) `config`).   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_condition_get_db.png)   
   
Finalement, il ne nous reste plus qu'à renvoyer notre [Smart Object](../_glossaire/Glossaire.md) _config_ mis à jour.   
Il suffit pour cela de joindre les deux chemins sur le même nœud [Résultat du smartflow](../R%C3%A9f%C3%A9rences%20des%20noeuds/R%C3%A9sultat%20du%20smartflow.md) et d'y brancher le noeud config.   
   
Nous terminerons avec le nœud Fin.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app_sf_end_get_weather_config.png)   
   
Félicitations 👏 ! Vous êtes venu à bout de la logique !   
   
   
---   
   
Prochaine étape : [Étape 5 - Établir les connexions](../02%20-%20Cr%C3%A9er%20sa%20premi%C3%A8re%20application/%C3%89tape%205%20-%20%C3%89tablir%20les%20connexions.md)