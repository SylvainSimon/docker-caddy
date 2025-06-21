#!/bin/bash

docker-compose up --detach --force-recreate

PROJECTS_DIR="./projects"

for dir in "$PROJECTS_DIR"/*/; do
  if [ -f "$dir/compose.yaml" ]; then
    echo "Lancement de docker-compose dans le dossier : $dir"
    (cd "$dir" && docker-compose up --detach --force-recreate)
  fi
done