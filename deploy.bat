@echo off
REM Script de déploiement automatique pour GitHub (Windows)
REM Usage: deploy.bat "Ton nom d'utilisateur GitHub"

echo ========================================
echo 🚀 DEPLOIEMENT EXCEL TO WHATSAPP
echo ========================================
echo.

REM Vérifier si Git est installé
git --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Git n'est pas installé. Installe-le d'abord :
    echo    https://git-scm.com/downloads
    pause
    exit /b 1
)

REM Demander le nom d'utilisateur GitHub
set /p GITHUB_USERNAME="📝 Entre ton nom d'utilisateur GitHub : "

echo.
echo ✅ Nom d'utilisateur : %GITHUB_USERNAME%
echo.

REM Initialiser Git si pas déjà fait
if not exist .git (
    echo 📦 Initialisation de Git...
    git init
    echo ✅ Git initialisé
) else (
    echo ✅ Git déjà initialisé
)

REM Configurer Git si nécessaire
git config user.name >nul 2>&1
if errorlevel 1 (
    set /p GIT_NAME="📝 Entre ton nom pour Git : "
    git config user.name "%GIT_NAME%"
    
    set /p GIT_EMAIL="📝 Entre ton email pour Git : "
    git config user.email "%GIT_EMAIL%"
)

echo.
echo 📦 Ajout des fichiers...
git add .

echo 💾 Création du commit...
git commit -m "Initial commit - Excel to WhatsApp Converter"

echo 🔗 Connexion au repository GitHub...
git remote remove origin 2>nul
git remote add origin "https://github.com/%GITHUB_USERNAME%/excel-to-whatsapp.git"

echo 📤 Push vers GitHub...
git branch -M main
git push -u origin main

echo.
echo ========================================
echo 🎉 DEPLOIEMENT GITHUB TERMINÉ !
echo ========================================
echo.
echo 📍 Ton repository : https://github.com/%GITHUB_USERNAME%/excel-to-whatsapp
echo.
echo 🌐 PROCHAINE ÉTAPE : Déployer sur Vercel
echo    1. Va sur https://vercel.com
echo    2. Connecte-toi avec GitHub
echo    3. Importe ton repository 'excel-to-whatsapp'
echo    4. Clique sur Deploy
echo.
echo ✅ C'est tout ! Ton app sera en ligne en 30 secondes !
echo.
pause
