# Verrouiller un document

#smartflow #workflow

## Description

La tâche **Verrouiller un document** permet de bloquer instantanément toute actions sur ce(s) document(s) par un autre utilisateur.


Cette tâche permet également de déverrouiller le document.

Elle est utilisé notamment dans les mécanismes d'empreint / restitution pour effectuer des modifications.

## Fonctionnement

![[SN-DOCUMENT-LOCK__description.png]]

### Entrées

| ID | Nom | Type | Description |
|:-|:-|:-|:-|
| 1 | Smart Object | sk:atDocument | [Smart Object](Glossaire.md#Smart%20Object) contenant les documents à verrouiller |
| 2 | Document(s) | sys:file | Document(s) à verrouiller |
| 3 | Verrouillé | boolean | Vrai: Verrouillé<br />False: Déverrouillé |

