---
{}
---
   
# Créer une API   
   
Les [smartflows](../_glossaire/Glossaire.md) peuvent être utilisés indépendamment de Vision pour constituer une API.   
   
Les connecteurs permettent de regrouper plusieurs [smartflows](../_glossaire/Glossaire.md) dans un répertoire, ils permettent également de partager des paramètres (clés / valeurs) communs aux différents [smartflows](../_glossaire/Glossaire.md).   
   
Pour créer une API, il faut donc créer le connecteur et lui associer autant de [smartflows](../_glossaire/Glossaire.md) qu'il y aura de routes à exposer.   
   
Une fois les [smartflows](../_glossaire/Glossaire.md) créés, il faudra configurer les signatures des routes.   
   
>[!rappel]   
>Les [smartflows](../_glossaire/Glossaire.md) créés pour de l'usage interne exposent également une route, le mécanisme de création reste le même.   
   
# Les connecteurs   
   
Pour créer un connecteur, il suffit  de faire un clic droit sur l'onglet **Connecteurs** situé dans l'onglet **APIsation** de l'explorateur du Studio et choisir l'option *Ajouter un connecteur*.   
   
Une fois le connecteur créé, il est possible d'y ajouter des [smartflows](../_glossaire/Glossaire.md) (clic droit sur le connecteur et choisir _Ajouter un smartflow_).   
   
## Paramètres du connecteur   
   
Il est également possible d'éditer les paramètres du connecteur qui seront présents dans tous les [smartflows](../_glossaire/Glossaire.md) associés (clic droit sur le connecteur et choisir _Editer les paramètres_).   
   
![](../_assets/images/smartflows/connecteur-parametres.png)   
   
**Utilisation dans les smartflows**   
   
![](../_assets/images/smartflows/connecteur-parametres-usage.png)   
   
# Signature de la route   
   
Pour exposer la route, certains paramètres doivent être renseignés, ces paramètres sont présents dans l'onglet [Inspecteur](../_glossaire/Glossaire.md#inspecteur) du [smartflow](../_glossaire/Glossaire.md).   
   
## URL, Verbe et Paramètre de PATH   
   
Le paramétrage de l'URL contient 3 parties:   
   
   
- Le Nom de la route qui sera présente après l'URL du serveur   
- Le Verbe (GET / POST / PUT / PATH / DELETE) pour paramétrer la méthode HTTP.   
- Les paramètres de path qui permettront de venir compléter le path de l'URL avec des valeurs dynamiques, ces paramètres seront exploitables dans le [smartflow](../_glossaire/Glossaire.md).   
`   
>[!example]   
>```   
>curl --location 'url/api/connectors/Lister_les_voitures/Tesla'   
>```   
>   
>![](../_assets/images/smartflows/url-example-01.png)   
>   
>![](../_assets/images/smartflows/url-example-02.png)   
   
## Paramètres de requête   
   
Les paramètres de requête permettront de venir compléter l'URL avec des valeurs dynamiques, ces paramètres seront exploitable dans le [smartflow](../_glossaire/Glossaire.md).   
   
>[!example]   
>```   
>curl --location 'url/api/connectors/Lister_les_voitures/Tesla?output=voiture'   
>```   
>   
>![](../_assets/images/smartflows/parametres-requete-exemple-01.png)   
>   
>![](../_assets/images/smartflows/parametres-requete-exemple-02.png)   
   
## Body   
   
Le body va permettre de renseigner le corps de la requête.   
Il peut être composé de différentes manières.   
   
**Body avec un seul objet**   
   
Permet d'injecter un objet (de type [Smart Object](../_glossaire/Glossaire.md)).   
   
>[!example]   
>```   
>curl --location 'url/api/connectors/Creer_une_voiture' \   
>--header 'Content-Type: application/json' \   
>--data '{   
>"Nom": "Tesla"   
>}'   
>```   
>   
>![](../_assets/images/smartflows/body-exemple-01.png)   
>   
>![](../_assets/images/smartflows/body-exemple-02.png)   
   
**Body avec plusieurs variables**   
   
Permet d'injecter un objet composé dynamiquement par un système de clés / valeurs   
   
>[!example]   
>```   
>curl --location 'url/api/connectors/Creer_une_voiture' \   
>--header 'Content-Type: application/json' \   
>--data '{   
>"Nom": "Tesla",   
>"VerifierDoublon": true   
>}'   
>```   
>   
>![](../_assets/images/smartflows/body-exemple-03.png)   
>   
>![](../_assets/images/smartflows/body-exemple-04.png)   
   
**body avec variables form-data**   
   
Permet d'uploader un fichier et exploiter ce fichier dans le [smartflow](../_glossaire/Glossaire.md).   
   
>[!example]   
>```   
>curl --location 'url/api/connectors/Importer_des_voitures' \   
>--form 'csv=@"/home/user/Bureau/voitures.csv"'   
>```   
>   
>![](../_assets/images/smartflows/body-exemple-05.png)   
>   
>![](../_assets/images/smartflows/body-exemple-06.png)   
   
## Headers   
   
Les headers vont permettre de renseigner l'en-tête de la requête via un système de clés / valeurs.   
Ces valeurs seront accessibles dans le [smartflow](../_glossaire/Glossaire.md).   
   
>[!example]   
>```   
>curl --location 'url/api/connectors/Lister_mes_voitures' \   
>--header 'UserID: cb775aae-dd85-4b8b-8ca6-e6576fdb5d4a'   
>```   
>   
>![](../_assets/images/smartflows/headers-exemple-01.png)   
>   
>![](../_assets/images/smartflows/headers-exemple-02.png)   
   
## Authentifications et autorisations   
   
Il existe deux façons de sécuriser les routes.   
   
**Utiliser l'authentification intégrée avec JWT**   
   
Cette méthode utilise le système d'authentification interne à Vision [KeyCloak](../08%20-%20Authentification%20et%20autorisation/0%20-%20Les%20principes%20de%20base.md), un jeton devra être injecté dans les headers de la requête, jeton récupéré via la route d'authentification.   
   
Il est possible de restreindre les autorisations avec les groupes de sécurité.   
   
![](../_assets/images/smartflows/jwt-authent.png)   
   
>[!example]   
>   
>  Appel de la route d'authentification KeyCloak   
>   
>![](../_assets/images/smartflows/keycloak-authent.png)   
>   
>Appel de la  route avec injection du jwt dans les headers   
>   
>```   
>curl --location 'url/api/connectors/Lister_les_voitures/Tesla' \   
>--header 'Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJCbzA2dTVPV004MmViaFM5N2lZVGRWbXpvOW5RVS04aX...   
>```   
   
**Utiliser l'authentification webhook**   
   
Cette méthode permet de bypasser le système d'authentification interne à Vision et de sécuriser la route via l'injection d'un token dans les headers qui sera définie directement dans le [smartflow](../_glossaire/Glossaire.md).   
   
![](../_assets/images/smartflows/webhook.png)   
   
>[!example]   
>   
>  Appel de la  route avec injection du token dans les headers   
>     
>```   
>curl --location 'url/api/connectors/Lister_les_voitures/Tesla' \   
>--header 'X-API-TOKEN: token_value'   
>```