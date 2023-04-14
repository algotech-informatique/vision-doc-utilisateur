---
{}
---
   
# Étape 2 - Créer ses modèles   
   
> [!hint]    
> Retrouvez la documentation sur le Data Modeler [ici](../03%20-%20Mod%C3%A9liser%20vos%20donn%C3%A9es/1%20-%20Les%20Smart%20Models.md) !   
   
Commençons la création de l'application mobile par la modélisation de nos modèles et accédons au **[Data Modeler](../_glossaire/Glossaire.md#data-modeler)**.   
   
## Le modèle   
   
Comme expliqué dans la documentation sur les [Smart Models](../03%20-%20Mod%C3%A9liser%20vos%20donn%C3%A9es/1%20-%20Les%20Smart%20Models.md), l'utilisation de [Smart Models](../_glossaire/Glossaire.md) est incontournable sur Vision et même absolument nécessaire pour les applications qui affichent et utilisent des données en base de données.   
   
Pour l'application météo, nous avons besoin d'un seul modèle que nous appelons **Config Météo**. Ce modèle possède plusieurs propriétés qui vont nous permettre d'afficher la météo.   
   
## Les propriétés du modèle   
   
Pour compléter ce modèle, nous nous appuyons sur les différentes données que l'on peut récupérer depuis l'[API Current Weather Data de Open Weather Map](https://openweathermap.org/current) et celles que l'on souhaite afficher sur l'application.   
   
![](../_assets/images/vue%20d%27ensemble/modele_config_meteo.png)   
   
| Propriété       | Type                 | Description                             |   
| --------------- | -------------------- | --------------------------------------- |   
| Température     | Numérique            | La température actuelle                 |   
| Température min | Numérique            | La température minimale                 |   
| Température max | Numérique            | La température maximale                 |   
| Icône           | Chaîne de caractères | Le nom de l'icône représentant la météo |   
| Description     | Chaîne de caractères | La description de la météo              |   
| Ville           | Chaîne de caractères | La ville de la météo                    |   
| Vent            | Nombre               | La vitesse du vent                      |   
| Pression        | Numérique            | La pression atmosphérique               |   
| Humidité        | Numérique            | Le pourcentage d'humidité               |   
| Ressenti        | Numérique            | La température ressentie                |   
| Units           | Chaîne de caractères | Le système d'unités                                        |   
   
## Les permissions du modèle   
   
Nous voulons laisser n'importe quel type d'utilisateur accéder et utiliser l'application, ce qui implique une modification de notre objet **Config Météo** car comme expliqué, nous sauvegardons les réglages de la météo.   
   
Nous allons donc choisir de donner les droits en lecture et écriture à tous les groupes de sécurité.   
   
![](../_assets/images/vue%20d%27ensemble/meteo_model_permissions.gif)   
   
   
---   
   
Prochaine étape : [Étape 3 - Créer ses interfaces](../02%20-%20Cr%C3%A9er%20sa%20premi%C3%A8re%20application/%C3%89tape%203%20-%20Cr%C3%A9er%20ses%20interfaces.md)