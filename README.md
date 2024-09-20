# Gestion-commerciale-par-points-de-vente
Projet J2EE en utilisant Framework Spring et Hibernate

## Resume :
Nous parlerons du projet qui est en deux phases :
- Gestion de Vente :
  - Page d’afficher les informations de tous les produits
  - Page d’ajout d’une commande par produit .
  - Page creation et modification du compte de l’utilisateur.
- Gestion de Stock :
  - Page gestion des tables ‘’Produits_Stock’’
  - Page gestion des tables ‘’Produits_Approvisionnement’’

## Les outils :
Avant de parler des façades du projet ,Nous parlerons des moyens de créer le projet :
- Apache Maven Un outil de base logiciel pour la gestion de projet et l'automatisation de la construction.
- Spring : est un framework pour construire et définir l'infrastructure d'une projet web.
- Struts 2 :Framework pour developper a l’architecture MVC
- Hiberante / JPA : Java Persistence API pour organiser des donnees relationnelles dans le projet , Hibernate pour gérant la persistance des objets en base de donnees relationnelle .
- JQuery :pour faciliter l'écriture de scripts cote client .
- Bootsrap : pour design.
- JasperReports : pour convertir source code java reportiong in PDF HTML ,etc …

## Les interfaces Et Structure Generale du projet : 

### Gestion de Vente :
 
  - L’interface de Page d’accueil :
    - La page d’accueil contient quatre options principale : Produits(pour acheter les produits) ,Profile(pour modifier nom et mote de passe de User) ,Commande(liste des Commandes) ,Users(liste des Users).
    
  - L’interface de Login/Inscrire :
    - Le client doit saisir le nom d’utilisateur et le mot de passe pour se connecter. Si le client saisie le bon mot de passe il sera ramené a la page d’accueil de notre projet sinon il retourn la page login . Si le client est un nouveau utilisateur , il doit inscrire dans page Iscrire (le nom et mote de passe doivent être saisi) .
    
  - L’interface de Modifier Profile :
    - Pour modifier mot de passe(ou le nom), le mot de passe et le nom doivent être saisi. 

  - L’interface de Liste des Produits :
    - Dans cette page la liste des produits est affichée, et Il y a aussi la possibilité de rechercher par botton rechercher , et Il y a aussi la possibilité d'acheter par botton Acheter a panier.

  - L’interface de Commande :
    - Dans cette page web le client peut acheter leur produit, il selecte ligne dans la liste (page liste des produits) et select nombre de quantitie (entre 1 et 5) et clique le botton Save pour affecter la facture.

  - L’interface de Page de Facture et FacturePDF:
    - Cette page représente la facture acheté et il y a aussi imprimée sous format Pdf.
    
### Gestion de Stock : 

- L’interface de Page d’accueil :
  - La page d’accueil contient deux options principale : Produits et Approvisionnement .

- L’interface de Produits Stocks et Rapport PDF :
  - Dans cette page web, l’utilisateur peut effectuer tous les fonctionnements (annuler, ajouter, supprimer, rechercher, afficher) , ainsi imprimer liste des produits Stocks en PDF.
  
- L’interface de Produits Approvisionnement et Rapport PDF :
  - Dans cette page web, l’utilisateur peut effectuer tous les fonctionnements (annuler, ajouter, supprimer, rechercher, afficher) , ainsi imprimer liste des produits Approvisionnement en PDF .

