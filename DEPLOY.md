# Mise en ligne d'AstraéOS

## 1. Choisir le domaine

Avant publication, remplacez le domaine temporaire `https://astraeos.example` par le domaine réel :

```powershell
.\configure-site.ps1 -Domain "https://votre-domaine.fr"
```

Le script crée automatiquement des sauvegardes `.bak`.

## 2. GitHub Pages

1. Créer un dépôt public, par exemple `astraeos` ou `astraeos-project`.
2. Copier le contenu de ce dossier à la racine du dépôt.
3. Dans GitHub : Settings > Pages > Deploy from a branch > `main` / root.
4. Si vous possédez un domaine, ajoutez-le dans GitHub Pages puis configurez les DNS demandés par GitHub.

## 3. Indexation

Après mise en ligne :

- ajouter le domaine à Google Search Console ;
- soumettre `/sitemap.xml` ;
- demander l'indexation de la page d'accueil ;
- faire de même dans Bing Webmaster Tools ;
- ajouter le lien officiel au profil LinkedIn et aux publications AstraéOS.

## 4. Cohérence de marque

Toujours employer en priorité : **AstraéOS (AOS)**.
Utiliser `AstraeOS` seulement comme variante ASCII utile à la recherche.
Associer le nom à la formulation : **AI-native operating system** / **système d'exploitation AI-native**.
