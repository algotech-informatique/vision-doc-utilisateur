---
{}
---
   
# Étape 1 - Spécification de notre app   
   
> [!info]    
>🎯 L'objectif de ce tutoriel est de créer une application avec la plateforme Vision de A à Z pour vous permettre de prendre en main sur un même projet différents outils et aspects de la création d'applications.   
>   
>Dans ce tutoriel, nous utiliserons :   
>   
>- [Le Data Modeler](../_glossaire/Glossaire.md#data-modeler)   
>- [Le Workflow Editor](../_glossaire/Glossaire.md#workflow-editor)   
>- [Le Smartflow Editor](../_glossaire/Glossaire.md#smartflow-editor)   
>- [L'UI Composer](../_glossaire/Glossaire.md#ui-composer)   
   
# Le contexte   
   
Nous allons créer une application web de météo 🌞. Celle-ci permettra d'afficher la météo actuelle ainsi que des détails météorologiques supplémentaires qui proviennent d'une API ([API Current Weather Data de Open Weather Map](https://openweathermap.org/current)).    
   
# La réalisation finale   
   
![](../_assets/images/vue%20d%27ensemble/meteo_app.gif)   
   
L'application est composée d'une barre latérale qui contiendra la météo et du contenu qui la détaillera.   
   
La couleur de la barre latérale s'adapte à la météo, elle devient bleu clair lorsque le temps est bon et devient sombre lorsque le temps est mauvais.   
   
Un bouton de recherche dans la barre latérale permet de lancer un [workflow](../_glossaire/Glossaire.md) qui affiche un formulaire pour rechercher une ville française, la liste des villes étant fournie par une API ([API Découpage administratif des communes](https://geo.api.gouv.fr/decoupage-administratif/communes)).   
   
Un bouton de configuration dans la barre latérale permet de paramétrer les unités des données pour le système métrique ou impérial.   
   
Lorsque que l'on quitte l'application et que l'on y accède à nouveau, la ville et la préférence d'affichage des unités sont les mêmes qu'à la dernière session et la météo est actualisée.   
   
   
---   
   
Prochaine étape : [Étape 2 - Créer ses modèles](../02%20-%20Cr%C3%A9er%20sa%20premi%C3%A8re%20application/%C3%89tape%202%20-%20Cr%C3%A9er%20ses%20mod%C3%A8les.md)