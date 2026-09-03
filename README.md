# PWOP - Application mobile et espace administrateur

Ce dépôt contient le scaffold et la conception initiale pour l'application mobile et l'espace administrateur de PWOP, une entreprise de collecte de déchets à Cap-Haïtien, Haïti.

Objectifs
- Application mobile Android (Flutter) pour les clients : inscription, demander une collecte, consulter paiements, recevoir notifications.
- API backend (Node.js/Express + PostgreSQL) : authentification, gestion des demandes de collecte, paiements, utilisateurs, employés, notifications (via FCM).
- Espace administrateur web pour gérer clients, collectes, paiements et employés.

Branche de développement initiale: `initial-scaffold`

Prochaines étapes proposées
1. Valider la stack technique (Flutter + Node/Express + PostgreSQL + FCM).
2. Implémenter l'API et la base de données minimale.
3. Développer l'application Flutter avec écrans principaux et intégration FCM.
4. Développer l'admin web (React) pour les opérations back-office.

Voir dossiers `mobile/`, `backend/` et `admin/` pour les détails.
