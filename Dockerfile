# Utiliser une image de base officielle Node.js
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier package.json et package-lock.json (si disponible)
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le reste du code source de l'application
COPY . .

# Exposer le port sur lequel l'application va écouter
EXPOSE 8080

# Commande pour démarrer l'application
CMD ["npm", "run", "serve"]
# CMD ["npm", "run", "serve", "--", "--host", "0.0.0.0"]