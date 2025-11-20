#!/bin/bash

# Script de déploiement automatique pour GitHub
# Usage: ./deploy.sh "Ton nom d'utilisateur GitHub"

echo "🚀 DÉPLOIEMENT EXCEL TO WHATSAPP"
echo "================================="
echo ""

# Vérifier si Git est installé
if ! command -v git &> /dev/null; then
    echo "❌ Git n'est pas installé. Installe-le d'abord :"
    echo "   https://git-scm.com/downloads"
    exit 1
fi

# Demander le nom d'utilisateur GitHub si non fourni
if [ -z "$1" ]; then
    echo "📝 Entre ton nom d'utilisateur GitHub :"
    read GITHUB_USERNAME
else
    GITHUB_USERNAME=$1
fi

echo ""
echo "✅ Nom d'utilisateur : $GITHUB_USERNAME"
echo ""

# Initialiser Git si pas déjà fait
if [ ! -d .git ]; then
    echo "📦 Initialisation de Git..."
    git init
    echo "✅ Git initialisé"
else
    echo "✅ Git déjà initialisé"
fi

# Configurer l'utilisateur Git si pas déjà fait
if [ -z "$(git config user.name)" ]; then
    echo ""
    echo "📝 Configure ton nom pour Git :"
    read GIT_NAME
    git config user.name "$GIT_NAME"
    
    echo "📝 Configure ton email pour Git :"
    read GIT_EMAIL
    git config user.email "$GIT_EMAIL"
fi

echo ""
echo "📦 Ajout des fichiers..."
git add .

echo "💾 Création du commit..."
git commit -m "Initial commit - Excel to WhatsApp Converter"

echo "🔗 Connexion au repository GitHub..."
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$GITHUB_USERNAME/excel-to-whatsapp.git"

echo "📤 Push vers GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "======================================"
echo "🎉 DÉPLOIEMENT GITHUB TERMINÉ !"
echo "======================================"
echo ""
echo "📍 Ton repository : https://github.com/$GITHUB_USERNAME/excel-to-whatsapp"
echo ""
echo "🌐 PROCHAINE ÉTAPE : Déployer sur Vercel"
echo "   1. Va sur https://vercel.com"
echo "   2. Connecte-toi avec GitHub"
echo "   3. Importe ton repository 'excel-to-whatsapp'"
echo "   4. Clique sur Deploy"
echo ""
echo "✅ C'est tout ! Ton app sera en ligne en 30 secondes !"
echo ""
