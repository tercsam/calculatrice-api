# Image de base : Linux minimaliste avec Python 3.11 déjà installé
FROM python:3.11-slim

# Crée le dossier /app dans l'image et s'y place pour toutes les instructions suivantes
WORKDIR /app

# Copie uniquement requirements.txt en premier (séparé du reste du code)
# But : si seul le code change plus tard, Docker garde en cache l'étape pip install ci-dessous
COPY requirements.txt .

# Installe les dépendances Python listées dans requirements.txt (ici : flask)
RUN pip install -r requirements.txt

# Copie tout le reste du projet (app.py, etc.) dans l'image
# Placé APRÈS le pip install pour profiter du cache Docker (cf commentaire ci-dessus)
COPY . .

# Indique (information seulement, n'ouvre rien réellement) que l'app utilise le port 5000
EXPOSE 5000

# Commande exécutée automatiquement au démarrage du conteneur : lance le serveur Flask
CMD ["python3", "app.py"]
