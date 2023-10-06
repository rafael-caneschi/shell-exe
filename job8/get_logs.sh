#!/bin/bash

# Chemin vers les fichiers de logs des connexions
LOG_FILE="/var/log/auth.log" 
 # Le chemin peut varier en fonction de la distribution Linux

# Nom du fichier de sortie
OUTPUT_FILE="number_connection-$(date +'%d-%m-%Y-%H:%M').txt"

# Comptage du nombre de connexions de lutilisateur (remplacez votre_utilisateur par le nom de l'utilisateur souhaité)
USER="rafaellll"
CONNECTIONS=$(grep "$USER" "$LOG_FILE" | grep "Accepted password\|session opened" | wc -l)

# Écriture du nombre de connexions dans le fichier de sortie
echo "Nombre de connexions de $USER : $CONNECTIONS" > "$OUTPUT_FILE"

# Archivage du fichier de sortie
tar -cvzf "Backup/$OUTPUT_FILE.tar.gz" "$OUTPUT_FILE"

# Suppression du fichier de sortie original
rm "$OUTPUT_FILE"
