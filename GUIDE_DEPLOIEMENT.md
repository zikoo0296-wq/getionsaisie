# 🚀 GUIDE COMPLET : Déploiement sur GitHub & Vercel

Ce guide te montre **étape par étape** comment mettre ton application en ligne gratuitement.

---

## 📋 CE DONT TU AS BESOIN

✅ Un compte GitHub (gratuit) : https://github.com/signup
✅ Un compte Vercel (gratuit) : https://vercel.com/signup
✅ Git installé sur ton ordinateur

---

## 🔧 ÉTAPE 1 : Installer Git (si pas déjà fait)

### Sur Windows :
1. Télécharge Git : https://git-scm.com/download/win
2. Installe avec les paramètres par défaut
3. Ouvre "Git Bash" depuis le menu démarrer

### Sur Mac :
```bash
# Ouvre le Terminal et tape :
git --version
# Si Git n'est pas installé, il te proposera de l'installer
```

### Sur Linux :
```bash
sudo apt-get install git
```

---

## 📁 ÉTAPE 2 : Préparer tes fichiers

Tu as déjà tous les fichiers nécessaires :
```
excel-to-whatsapp/
├── index.html          ← Ton application
├── README.md           ← Description du projet
├── vercel.json         ← Configuration Vercel
└── .gitignore          ← Fichiers à ignorer
```

---

## 🐙 ÉTAPE 3 : Créer un repository sur GitHub

1. **Va sur GitHub** : https://github.com
2. **Connecte-toi** à ton compte
3. **Clique sur le bouton vert "New"** (ou "+") en haut à droite
4. **Remplis les informations :**
   - Repository name : `excel-to-whatsapp`
   - Description : `Convertisseur Excel vers WhatsApp`
   - Choisis : **Public** (pour déployer gratuitement sur Vercel)
   - ❌ **NE COCHE PAS** "Add a README file" (on en a déjà un)
5. **Clique sur "Create repository"**

---

## 💻 ÉTAPE 4 : Pousser ton code sur GitHub

### Méthode 1 : Ligne de commande (recommandée)

1. **Ouvre le Terminal** (ou Git Bash sur Windows)
2. **Va dans le dossier où sont tes fichiers :**
```bash
cd chemin/vers/ton/dossier
```

3. **Initialise Git :**
```bash
git init
```

4. **Ajoute tous les fichiers :**
```bash
git add .
```

5. **Crée ton premier commit :**
```bash
git commit -m "Premier commit - Application Excel vers WhatsApp"
```

6. **Connecte ton dossier à GitHub :**
```bash
git remote add origin https://github.com/TON-USERNAME/excel-to-whatsapp.git
```
⚠️ **REMPLACE** `TON-USERNAME` par ton nom d'utilisateur GitHub !

7. **Pousse ton code sur GitHub :**
```bash
git branch -M main
git push -u origin main
```

8. **Entre tes identifiants GitHub** si demandé

✅ **C'est fait !** Rafraîchis la page GitHub, tu verras ton code !

---

### Méthode 2 : GitHub Desktop (plus facile pour les débutants)

1. **Télécharge GitHub Desktop** : https://desktop.github.com/
2. **Installe et connecte-toi**
3. **File → Add Local Repository**
4. **Choisis ton dossier** `excel-to-whatsapp`
5. **Clique sur "Publish repository"**
6. **Choisis "Public"** et clique sur "Publish"

✅ **C'est fait !**

---

## 🌐 ÉTAPE 5 : Déployer sur Vercel

### Option A : Via le site Vercel (RECOMMANDÉ - le plus simple)

1. **Va sur Vercel** : https://vercel.com
2. **Clique sur "Sign Up" ou "Login"**
3. **Connecte-toi avec GitHub** (clique sur "Continue with GitHub")
4. **Autorise Vercel** à accéder à tes repositories
5. **Clique sur "New Project"** ou "Add New..." → "Project"
6. **Trouve ton repository** `excel-to-whatsapp` dans la liste
7. **Clique sur "Import"**
8. **Configure le projet :**
   - Project Name : `excel-to-whatsapp` (ou ce que tu veux)
   - Framework Preset : **Other** (laisser par défaut)
   - Root Directory : `./` (laisser par défaut)
9. **Clique sur "Deploy"**
10. **Attends 30 secondes... 🎉 C'EST EN LIGNE !**

Tu verras une page avec :
```
🎉 Congratulations!
Your project is live at:
https://excel-to-whatsapp-xxx.vercel.app
```

✅ **TON APPLICATION EST EN LIGNE !**

---

### Option B : Via la ligne de commande (avancé)

1. **Installe Vercel CLI :**
```bash
npm install -g vercel
```

2. **Dans ton dossier, lance :**
```bash
vercel
```

3. **Suis les instructions :**
   - Login avec GitHub
   - Set up and deploy : Yes
   - Which scope : Ton compte
   - Link to existing project : No
   - Project name : excel-to-whatsapp
   - In which directory : ./ (appuie sur Entrée)
   - Override settings : No

4. **Ton app est déployée !** Tu reçois l'URL.

---

## 🔄 METTRE À JOUR TON APPLICATION

### Quand tu modifies ton code :

1. **Sauvegarde tes modifications**
2. **Dans le terminal :**
```bash
git add .
git commit -m "Description de tes modifications"
git push
```

3. **Vercel détecte automatiquement** et redéploie en 30 secondes !

✅ **C'est automatique !**

---

## 🎯 URLs IMPORTANTES

Après le déploiement, tu auras :

- **URL de production** : `https://excel-to-whatsapp.vercel.app`
- **Dashboard Vercel** : https://vercel.com/dashboard
- **Repository GitHub** : `https://github.com/TON-USERNAME/excel-to-whatsapp`

---

## 🆓 DOMAINE PERSONNALISÉ (optionnel)

Si tu veux un domaine personnalisé (exemple : `monapp.com`) :

1. **Achète un domaine** (ex: Namecheap, GoDaddy, OVH)
2. **Dans Vercel Dashboard** :
   - Va dans ton projet
   - Settings → Domains
   - Add Domain
   - Suis les instructions pour configurer le DNS

---

## ❓ PROBLÈMES COURANTS

### Problème : "Permission denied"
**Solution :** Configure Git :
```bash
git config --global user.name "Ton Nom"
git config --global user.email "ton@email.com"
```

### Problème : "Repository not found"
**Solution :** Vérifie l'URL du repository :
```bash
git remote -v
```
Si incorrecte :
```bash
git remote set-url origin https://github.com/TON-USERNAME/excel-to-whatsapp.git
```

### Problème : "Build failed" sur Vercel
**Solution :** Vérifie que tu as bien le fichier `index.html` à la racine

---

## 📞 SUPPORT

Si tu as des problèmes :
- GitHub : https://docs.github.com
- Vercel : https://vercel.com/docs
- Stack Overflow : https://stackoverflow.com

---

## 🎉 FÉLICITATIONS !

Ton application est maintenant en ligne et accessible partout dans le monde ! 🌍

Partage le lien avec tes collègues :
`https://excel-to-whatsapp-xxx.vercel.app`

---

**Créé par Zack** 🚀
