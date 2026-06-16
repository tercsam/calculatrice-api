# 🧮 Calculatrice API

Une API REST simple développée avec Flask, permettant d'effectuer des opérations mathématiques de base (addition, soustraction, multiplication, division). Le projet est entièrement conteneurisé avec Docker.

Ce projet a été réalisé dans le cadre de mon apprentissage de Docker, en vue d'évoluer vers un poste DevOps junior.

## 🛠️ Stack technique

- **Python 3.11**
- **Flask** — micro-framework web
- **Docker** — conteneurisation

## 📡 Endpoints disponibles

| Méthode | Route | Description | Exemple |
|---------|-------|-------------|---------|
| GET | `/add` | Addition de deux nombres | `/add?a=5&b=3` → `8` |
| GET | `/sub` | Soustraction de deux nombres | `/sub?a=5&b=3` → `2` |
| GET | `/mul` | Multiplication de deux nombres | `/mul?a=5&b=3` → `15` |
| GET | `/div` | Division de deux nombres | `/div?a=6&b=3` → `2.0` |

## 🚀 Lancer le projet avec Docker

### Prérequis

- [Docker](https://docs.docker.com/get-docker/) installé sur la machine

### 1. Cloner le projet

```bash
git clone https://github.com/tercsam/calculatrice-api.git
cd calculatrice-api
```

### 2. Construire l'image Docker

```bash
docker build -t calculatrice-api .
```

### 3. Lancer le conteneur

```bash
docker run -p 5000:5000 calculatrice-api
```

### 4. Tester l'API

Rendez-vous dans un navigateur ou via `curl` :

```bash
curl "http://localhost:5000/add?a=5&b=3"
```

## 📁 Structure du projet

```
calculatrice-api/
├── app.py              # Code source de l'API Flask
├── requirements.txt    # Dépendances Python
├── Dockerfile           # Instructions de construction de l'image Docker
├── .dockerignore        # Fichiers exclus de l'image Docker
└── README.md
```

## 💡 Ce que j'ai appris sur ce projet

- Différence entre une image et un conteneur Docker
- Fonctionnement du cache de build Docker, et pourquoi l'ordre des instructions dans un Dockerfile a un réel impact sur les performances de build
- Isolation réseau d'un conteneur, et mapping de ports avec `-p`
- Différence entre un environnement virtuel Python (`venv`) et l'isolation complète apportée par Docker
- Création d'une API REST simple avec Flask (routes, récupération de paramètres GET)

## ⚠️ Limitations connues

- Pas de gestion d'erreur sur la division par zéro (`/div?a=5&b=0` provoque une erreur serveur)
- Pas de validation des paramètres d'entrée (si `a` ou `b` ne sont pas des nombres, l'API plante)
- Usage du serveur de développement Flask (non destiné à un environnement de production)

## 👤 Auteur

**Clément** — [github.com/tercsam](https://github.com/tercsam)
