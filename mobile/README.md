# Mobile (Flutter) - PWOP

Choix technique
- Flutter (Dart) pour une application Android moderne et performante.
- Firebase Cloud Messaging (FCM) pour les notifications push Android.
- Authentification via JWT (back-end), avec rafraîchissement si nécessaire.

Écrans principaux
1. Écran d'accueil - aperçu des collectes à venir et bouton rapide "Demander une collecte".
2. Inscription / Connexion.
3. Formulaire "Demander une collecte" (type de déchets, adresse, date/heure souhaitée, photo optionnelle).
4. Mes demandes - liste + statut (Demandée, Acceptée, En cours, Terminée, Annulée).
5. Paiements - historique et statut (Payé / En attente / En retard).
6. Profil - informations client, méthode de paiement préférée.
7. Notifications - liste des notifications push reçues.

Integration initiale
- Ajouter la configuration pour FCM.
- Appeler l'API backend pour toutes les opérations (OpenAPI définie dans `/openapi.yaml`).

Démarrage local (une fois Flutter installé)
- flutter pub get
- flutter run --release (ou `flutter run` pour debug)

Notes
- Pour la monétisation/paiements : la solution inclura des enregistrements de paiements. L'intégration en production dépendra des moyens de paiement disponibles en Haïti (Stripe peut ne pas être disponible) ; prévoir une gestion manuelle (collecte cash) et marquage par l'admin.
