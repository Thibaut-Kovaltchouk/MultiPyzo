#!/bin/bash

# on se déplace vers le dossier de travail
echo Dossier de travail :
echo "$(dirname "${0}")"
cd "$(dirname "${0}")"

# on charge l'environnement conda depuis environnement.yml
echo Vérification de l\'environnement environment.yml
./miniconda3-lnx/bin/conda env update --name base --file environment.yml --prune
echo Fin des installations

# on lance pyzo
echo Demande d\'ouverture de pyzo faite
eval ./miniconda3-lnx/pyzo-4.10.2/pyzo
echo Fermeture de pyzo

# sauvegarde de l'etat de conda dans le fichier environnement.yml
echo Remplacement en cours de environment.yml
./miniconda3-lnx/bin/conda env export --name base > environment.yml
echo Fin d\'ecriture de environment.yml
