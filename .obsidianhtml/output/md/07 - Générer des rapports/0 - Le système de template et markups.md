---
{}
---
   
# Le système de template et markups   
   
## Introduction   
   
La génération des rapports dans Vision se base sur un moteur de génération de fichier docx basée sur un moteur de template inspiré de [{{mustashe}}](http://mustache.github.io/)   
   
[{{mustashe}}](http://mustache.github.io/) est un langage de templating dit logic-less c'est à dire qui ne contient pas de fonction logique type :   
```
if..else
for...
while...
...
```
   
   
Son fonctionnement est assez simple. Pour pouvoir insérer de la données dans un template, notre moteur de génération de rapport utilise des balise qui permettent d'indiquer la données à insérer et l'emplacement dans le document.   
Prenant un exemple d'un document docx dans lequel je veux insérer le nom et le prénom d'une personne, mon fichier de "termplate.docx" peut contenir ces balises là   
   
```docx
nom: {nom}
prénom: {prenom}
```
   
   
En générant le fichier de rapport, notre moteur de génération va donc remplacer les balises "{nom}" et "{prenom}" par les données transmise en input de la tâche rapport de vision.   
   
Comme vous pouvez le voir, les balises dans le template sont identifiées par des moustaches "{" et "}", d'où le nom du langage de templating utilisée.   
   
## Tags   
   
un tag est identifié par une clé entouré de "{" et "}". il peux être accompagné par des balises pour les tags complexes. Il existe plusieurs type de  balises ou tags qu'on peut utiliser dans le moteur de génération de rapport :   
   
- simple   
- section   
- section inversée   
- condition   
- boucle   
- image   
   
> [!warning]    
> **NB il important de noter que les tags ne doivent absolument pas contenir: **   
> - des espaces   
> - des caractères spéciaux, sauf "\_"   
> - des accents   
> - exmeple:   
> 	- {prenom du user} X tag non valide   
> 	- {prénom/du-.user@è"$} X tag non valide   
> 	- {prenom_du_user} tag valide   
   
### Simple   
   
un tag simple est un tag qui permet d'insérer une valeur primitive de type:   
   
- string   
- number   
- date   
   
Pour utiliser un tag simple il suffit d'entourer le nom du tag par "{" et "}"   
```docx
template
Information sur le user:
nom: {nom} //string
age: {age} //number
date de naissance: {date} //datetime

input : { nom: 'choupette', age: 26, date: '12/12/1212 12:12:12'}

docx:
Information sur le user:
nom: choupette //string
age: 26 //number
date de naissance: 12/12/1212 12:12:12 //datetime
```
   
   
### Section   
   
Ce tag permet d'avoir en input des valeurs complexe (type Object) en mappant les propriété d'un objet pour les afficher dans le rapport.   
Si on reprend l'exemple précédent, on modélisant dans Vision un Modèle User qui a les propriété suivantes:   
   
<img src="../_assets/images/rapports/mod%C3%A8le_user.png" width="300" alt="" title="" />   
   
Pour pouvoir insérer les valeurs des propriété des Objets instanciés à partir de ce modèle le template se présente ainsi:   
```docx
template :
Information sur le user: {#user}
nom: {nom}
age: {age}
date de naissance: {date}{/user}

input : {user: { nom: 'choupette', age: 26, date: '12/12/1212 12:12:12'}}

docx:
Information sur le user:
nom: choupette
age: 26
date de naissance: 12/12/1212 12:12:12
```
   
   
dans ce template, on peut voir que les tags des valeurs primitives reste les même sauf que maintenant ils sont entouré par **"{#user}"** et **"{/user}"**   
   
   
- {#user} permet d'indiquer le début du tag de type section   
- {/user} permet d'indiquer la fin du tag de type section   
   
Ce tag est important parce qu'il permet d'envoyer en input de la tâche de génération de rapport un Smart Objet complet et le moteur de génération va faire un mapping entre les propréités du smart Objet et les tags simple utilisés dans le rapport   
   
> [!warning]    
> Pour être utilisé dans la tâche rapport les noms des propriété dans un [Smart Model](../_glossaire/Glossaire.md) doivent être les même que les clés des tags simple utilisé à l'intérieur du tag de type section   
> il ne doivent pas non plus contenir les caractères interdit par la tâche rapport   
   
### Section inversée   
la section inversé sert à définir le cas où l'objet passé en input de la tâche de génération de rapport a une valeur nulle, false ou "[ ]". ce tag est identifié avec un "^" devant la clé du tag.   
Si on reprend le même exemple au dessus :   
   
```docx
template :
Information sur le user: {#user}
nom: {nom}
age: {age}
date de naissance: {date}{/user}
{^user} pas de user défini{/user}

input : {user: null }

docx:
Information sur le user:
pas de user défini
```
   
   
### Condition   
Comme indiqué au début de ce document, mustashe est un langage logic-less, c'est à dire qu'il ne contient aucune instruction pour gérer les condition et les boucles.   
On peut malgré tout utiliser de la logique dans notre template en utlisant le tag condition.   
Ce tag comme son nom l'indique permet d'afficher ou non des valeur en fonction d'un boolean. ce tag à le même formalisme qu'une section, il et identifié par un "#".   
   
les valeurs possible pour la condition sont: true,/false ou  null/(value != null)   
   
```docx
template :
{#user_actif}
Information sur le user:
nom: {nom}
age: {age}
date de naissance: {date}
{/user_actif}
{#pas_de_user} pas de user défini {/pas_de_user} 

input : { pas_de_user: null, user_actif: true, nom: 'choupette', age: 26, date: '12/12/1212 12:12:12' }

docx:
Information sur le user:
nom: choupette
age: 26
date de naissance: 12/12/1212 12:12:12
```
   
   
### Boucle   
   
Cette section permet d'insérer un tableau de valeur dans le template, il est identifié de la même manière que la section, la seule différence va être sur le données en input.    
Si on reprend le même exemple mais pour afficher une liste d'information sur le user :   
   
```docx
template :
Information sur mes users: {#users}
user {index} :
    nom: {nom}
    age: {age}
    date de naissance: {date}{/users}

input : {users: [
					{ index: 1, nom: 'choupette', age: 26, date: '12/12/1212 12:12:12'},
					{ index: 2, nom: 'chiquita', age: 27, date: '11/11/1111 11:11:11'},
					{ index: 3, nom: 'chouquette', age: 50, date: '10/10/1010 10:10:10'},
					{ index: 4, nom: 'chicos', age: 18, date: '09/09/9999 09:09:09'}
				]
		}

docx:
Information sur mes users:
user 1 :
   nom: choupette
   age: 26
   date de naissance: 12/12/1212 12:12:12
user 2 :
   nom: chiquita
   age: 27
   date de naissance: 11/11/1111 11:11:11
user 3 :
   nom: chouquette
   age: 50
   date de naissance: 10/10/1010 10:10:10
user 4 :
   nom: chicos
   age: 18
   date de naissance: 09/09/9999 09:09:09
```
   
   
   
### Image   
le tag image, comme son nom l'indique permet d'insérer une image dans le rapport, il est identifié avec le caractère '%' devant la clé du tag   
   
```docx
template :
			{%mon_image}
```
   
   
> [!warning]    
> le tag {%image} n'est pas disponible sur la version community de vision, mais uniquement sur la version payante du produit