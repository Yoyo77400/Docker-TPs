#!/bin/bash

# Vérifier si Docker est installé
if ! command -v docker &> /dev/null
then
    echo "Docker n'est pas installé. Veuillez l'installer avant de continuer."
    exit 1
fi

# Télécharger l'image nginx depuis Docker Hub
echo "Téléchargement de l'image nginx..."
docker pull nginx
if [ $? -ne 0 ]; then
    echo "Échec du téléchargement de l'image nginx."
    exit 1
fi

# Exécuter un conteneur nginx nommé 'docker'
echo "Démarrage du conteneur nginx..."
docker run --name docker -p 8080:80 -d nginx
if [ $? -ne 0 ]; then
    echo "Échec du démarrage du conteneur nginx."
    exit 1
fi

echo "Le conteneur nginx est en cours d'exécution sur http://localhost:8080."
