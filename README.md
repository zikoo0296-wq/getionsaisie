# 📱 Excel vers WhatsApp - Convertisseur

Application web pour convertir des fichiers Excel en messages WhatsApp formatés.

## 🎯 Fonctionnalités

- ✅ Import de fichiers Excel (.xlsx, .xls)
- ✅ Groupement intelligent par Client + Statut + Mode de paiement
- ✅ Sous-totaux par mode de paiement (Espèces, CIH Y, Crédit)
- ✅ Groupement des produits identiques (même prix)
- ✅ Récapitulatif général avec totaux
- ✅ Téléchargement individuel ou en ZIP
- ✅ Copier vers WhatsApp en un clic
- ✅ Gestion des produits et modes de paiement vides

## 📊 Structure Excel attendue

| Date | Nom | Produit | Prix | Qte | Montant | Paiement | Type P | Statut |
|------|-----|---------|------|-----|---------|----------|--------|--------|
| Date | Client | Nom produit | Prix unitaire | Quantité | (calculé) | Payée/Crédit | Espèces/CIH Y | Localisation |

## 🚀 Utilisation

1. Ouvrez l'application : [Lien Vercel]
2. Glissez votre fichier Excel ou cliquez pour le sélectionner
3. Cliquez sur "🔄 Générer les messages"
4. Copiez les messages ou téléchargez-les individuellement/en ZIP

## 💻 Installation locale

```bash
# Cloner le repository
git clone https://github.com/[votre-username]/excel-to-whatsapp.git

# Ouvrir le fichier
cd excel-to-whatsapp
open index.html
```

## 📦 Technologies utilisées

- HTML5
- JavaScript (Vanilla)
- SheetJS (XLSX) - Lecture de fichiers Excel
- JSZip - Création de fichiers ZIP
- CSS3 - Design responsive

## 📝 License

MIT License - Libre d'utilisation

## 👨‍💻 Auteur

Créé par Zack
