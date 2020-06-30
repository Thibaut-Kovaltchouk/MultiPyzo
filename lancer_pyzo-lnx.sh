#!/bin/bash

# on se déplace vers le dossier de travail
echo "$(dirname "${0}")"
cd "$(dirname "${0}")"

# on lance conda
eval ./miniconda3-lnx/pyzo-4.10.2/pyzo
