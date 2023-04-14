---
{}
---
   
# Les Smart Models   
   
Les données sont modélisées à la manière d'un modèle conceptuel de données simplifié.   
   
Un [Smart Model](../_glossaire/Glossaire.md) représente un modèle d'objet : il décrit les différents champs qui le définissent ainsi que les possibles associations avec d'autres modèles. Ce modèle agit comme un moule et va permettre de créer des objets, [ les Smart Objects](/not_created.md).   
   
# Le Data Modeler   
   
<iframe width="560" height="315" src="https://www.youtube.com/embed/3zHMH3G1TZo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>   
   
Le [Data Modeler](../_glossaire/Glossaire.md#data-modeler) est l'outil de Vision qui permet de modéliser les modèles. Chaque nœud du [Data Modeler](../_glossaire/Glossaire.md#data-modeler) correspond à un [Smart Model](../_glossaire/Glossaire.md).   
   
Pour créer un nouveau [Smart Model](../_glossaire/Glossaire.md), il suffit de sélectionner l'option *Ajouter un Smart Model* depuis le [menu contextuel](../_glossaire/Glossaire.md#menu-contextuel) ou depuis la [toolbar](../_glossaire/Glossaire.md#toolbar). Un nœud représentant le [Smart Model](../_glossaire/Glossaire.md) se crée, il faut lui renseigner un nom. Une section *Champs* permet d'ajouter et de lister les propriétés du modèle.   
   
Dans l'[inspecteur](../_glossaire/Glossaire.md#inspecteur) du [Smart Model](../_glossaire/Glossaire.md), on trouve plusieurs options à configurer : les propriétés du modèle, ses aptitudes et ses permissions.   
   
# Les propriétés du Smart Model   
   
## Les propriétés générales du modèle   
   
Cette section permet de définir le nom du [Smart Model](../_glossaire/Glossaire.md), sa clé, les clés uniques ainsi qu'une description.   
   
Les clés uniques sont sélectionnables parmi les champs ajoutés au modèle. Avoir un champ déclaré comme clé unique signifie que la valeur affectée à ce champ sur les instances du modèle sera unique, il ne peut pas y avoir deux instances possédant la même valeur pour ce champ.   
   
La description du modèle peut être utile aux concepteurs Vision mais aussi à la documentation [OpenAPI](../_glossaire/Glossaire.md#openapi) que l'on peut générer pour accéder aux [smartflows](../_glossaire/Glossaire.md).   
   
## Les aptitudes du modèle   
   
Les aptitudes sont des capacités spéciales que l'on peut accorder aux instances des [Smart Models](../_glossaire/Glossaire.md).    
   
| Aptitude        | Signification                                                                                       |   
| --------------- | --------------------------------------------------------------------------------------------------- |   
| Document        | Permet d'associer des documents aux instances du modèle                                             |   
| Géolocalisation | Permet d'associer une notion de localisation par coordonnées aux instances du modèle                |   
| Signature       | Permet d'attacher une signature numérique aux instances du modèle                                   |   
| Tag             | Permet de [taguer](../03%20-%20Mod%C3%A9liser%20vos%20donn%C3%A9es/4%20-%20Les%20tags%20et%20m%C3%A9tadonn%C3%A9es.md) les instances du modèle                |   
| Magnet          | Permet d'utiliser les instances du modèle dans le [Widget Board](../04%20-%20Cr%C3%A9er%20votre%20UI/La%20liste%20des%20widgets/Widget%20Board.md) de l'[UI Composer](../_glossaire/Glossaire.md) en tant que magnets |   
   
## Les permissions du modèle   
   
Les permissions du modèle définissent quels groupes de sécurités peuvent lire (R) et / ou éditer (W) les instances des modèles. Le bouton *Appliquer à tous les champs* permet de rapidement appliquer la même configuration de sécurité à tous les champs du modèle.   
   
# Les champs du Smart Model   
   
Lorsqu'on ajoute un champ au [Smart Model](../_glossaire/Glossaire.md), il faut d'abord saisir sa clé qui l'identifie. Ensuite le champ se configure depuis l'[inspecteur](../_glossaire/Glossaire.md#inspecteur).   
   
## Les propriétés générales   
   
Les propriétés générales permettent de configurer la clé, le nom, le type de champ ainsi qu'une description pour le concepteur ainsi que pour la documentation [OpenAPI](../_glossaire/Glossaire.md#openapi).   
   
Les types disponibles sont :   
   
- les types primitifs : string (chaîne de caractères), booléen, nombre, date, time, datetime   
- les type html   
- le type comment : utilisé pour stocker un commentaire (utilisateur, date et contenu)   
- les types objets : utilisé pour créer une liaison vers un sous-objet.   
   
> [!important]    
> Les champs de type objets peuvent ralentir le système de recherche et peuvent être plus compliqués à utiliser dans les [workflows](../_glossaire/Glossaire.md). Il est recommandé de les utiliser qu'en cas de nécessité, pour créer des associations (quand l'objet A peut être utilisé indépendamment de l'objet B et vice-versa).   
   
## Les propriétés du champ   
   
Cette section permet d'ajouter des options au champ.   
   
| Propriété             | Signification                                                                                             |   
| --------------------- | --------------------------------------------------------------------------------------------------------- |   
| Propriété obligatoire | Ce champ doit obligatoirement être renseigné lors de l'édition par l'utilisateur d'une instance de ce modèle |   
| Propriété cachée      | Ce champ sera toujours caché (ex: invisible dans un Formulaire)                                           |   
| Propriété multiple    | Ce champ représentera un tableau de valeurs (liste)                                                                       |   
   
## La valeur du champ   
   
La valeur du champ s'adaptera en fonction du type du champ.   
   
| Valeur | Signification                                                                                                           |   
| ------ | ----------------------------------------------------------------------------------------------------------------------- |   
| Défaut | La valeur par défaut du champ disponible pour les champs de type primitif                                               |   
| Liste  | Pour les champs de type string, la valeur du champ peut être limitée aux valeurs d'une [liste générique](../_glossaire/Glossaire.md) |   
|   Composition     | Pour les champs de type objets, la composition permet de préciser que l'objet composé n’existera que dans son parent                                                                                                                      |   
   
## Les permissions du champ   
   
Les permissions du champ définissent quels groupes de sécurités qui peuvent lire (R) et / ou éditer (W) le champ du modèle. Le bouton *Appliquer à tous les champs* permet de rapidement appliquer la même configuration de sécurité à tous les champs du modèle.