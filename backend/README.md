# Backend - Architecture proposée

Stack recommandé
- Node.js + Express
- PostgreSQL
- TypeScript (fortement recommandé)
- ORM : Prisma ou TypeORM
- Auth : JWT (bcrypt pour les mots de passe)
- Notifications : FCM (Firebase Admin SDK)

Principales routes (voir `openapi.yaml`)
- POST /auth/register
- POST /auth/login
- GET /users/me
- POST /collection_requests
- GET /collection_requests
- PATCH /collection_requests/{id}
- GET /payments
- POST /payments
- GET /employees
- POST /employees

Sécurité
- Endpoints protégés par JWT.
- Rôles : client, admin, employe (chacun avec permissions restreintes).

Démarrage rapide
1. Installer Node.js et PostgreSQL.
2. Configurer .env (DATABASE_URL, JWT_SECRET, FIREBASE_CREDENTIALS, FCM settings).
3. npm install && npm run dev

