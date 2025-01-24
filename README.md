# API de Prédiction de Défaut de Paiement

Ce projet consiste en une API FastAPI pour la prédiction de défaut de paiement d'un client. L'API utilise un modèle pré-entrainé pour effectuer ces prédictions. Les points d'extrémité (endpoints) disponibles dans cette API permettent de tester la fonctionnalité de base, d'envoyer des paramètres, de téléverser un fichier, et surtout, d'obtenir des prédictions de défaut de paiement.

## Configuration du Projet

Le projet est basé sur FastAPI, une bibliothèque Python pour le développement rapide d'API REST. Les principales librairies utilisées dans ce projet sont :

- `FastAPI` pour la création de l'API.
- `pydantic` pour la validation des données reçues.
- `uvicorn` pour le serveur ASGI.

Le modèle de prédiction utilisé est sauvegardé dans un fichier binaire `model.pkl`, qui est chargé au moment de la prédiction.

## Endpoints Disponibles

### 1. Endpoint Racine

- **GET** `/`
  - Description : Point de terminaison standard renvoyant un message "Hello World".
  - Exemple d'utilisation : `curl http://localhost:8000/`

### 2. Endpoint Hello You

- **GET** `/hello_you`
  - Description : Point de terminaison avec un paramètre `name` pour personnaliser le message de salutation.
  - Exemple d'utilisation : `curl http://localhost:8000/hello_you?name=John`

### 3. Endpoint Hello You avec Paramètre Optionnel

- **GET** `/hello_you/{name}`
  - Description : Point de terminaison similaire à `/hello_you`, mais avec un paramètre dans l'URL.
  - Exemple d'utilisation : `curl http://localhost:8000/hello_you/John`

### 4. Endpoint de Prédiction

- **POST** `/predict`
  - Description : Point de terminaison permettant de faire des prédictions de défaut de paiement en utilisant un modèle pré-entrainé.
  - Exemple d'utilisation :
    ```bash
    curl -X POST -H "Content-Type: application/json" -d '{"age": 30, "job": 1, "marital": 1, "education": 2, "default": 0, "balance": 2000, "housing": 1, "loan": 0, "campaign": 2, "pdays": 15, "previous": 1, "poutcome": 1}' http://localhost:8000/predict
    ```

### 5. Endpoint de Téléversement de Fichier

- **POST** `/uploadfile/`
  - Description : Point de terminaison permettant de téléverser un fichier. L'API renverra le nom du fichier téléversé.
  - Exemple d'utilisation :
    ```bash
    curl -X POST -F "file=@example.txt" http://localhost:8000/uploadfile/
    ```

## Exécution du Projet

Pour exécuter le projet, assurez-vous d'avoir FastAPI et Uvicorn installés. Exécutez ensuite le script Python :

```bash
python your_script_name.py
```

L'API sera accessible à l'adresse `http://localhost:8000/`.

N'oubliez pas de personnaliser le script selon vos besoins, en particulier le fichier du modèle pré-entrainé et les paramètres du modèle.`

Kevin Duranty
