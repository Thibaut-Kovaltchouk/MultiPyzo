@echo off

:: on se déplace vers le dossier de travail
echo Dossier de travail :
echo "%~dp0"
cd /d "%~dp0"

:: on charge l'environnement conda depuis environnement.yml
echo Verification de l'environnement environment.yml
call .\miniconda3-win\condabin\conda.bat env update --name base --file environment.yml --prune
echo Fin des installations

:: on lance pyzo
echo Demande d'ouverture de pyzo faite
.\miniconda3-win\pyzo-4.10.2\pyzo.exe
echo Fermeture de pyzo

:: sauvegarde de l'etat de conda dans le fichier environnement.yml
echo Remplacement en cours de environment.yml
.\miniconda3-win\condabin\conda.bat env export --name base > environment.yml
echo Fin d'ecriture de environment.yml
