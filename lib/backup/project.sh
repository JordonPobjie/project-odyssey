#!/bin/bash

set -euo pipefail

PROJECT_DIR="$HOME/project-odyssey"
BACKUP_DIR="$PROJECT_DIR/backups/project"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/project-odyssey-project-$TIMESTAMP.tar.gz"
CHECKSUM_FILE="$BACKUP_FILE.sha256"

echo "========================================="
echo "Project Odyssey - Project Backup"
echo "========================================="

mkdir -p "$BACKUP_DIR"

cd "$PROJECT_DIR"

echo "Creating project backup..."

tar -czf "$BACKUP_FILE" \
  README.md \
  .gitignore \
  .env.example \
  docker/*/docker-compose.yml \
  docker/*/README.md \
  docker/*/.env.example \
  docs \
  scripts

echo "Verifying archive..."
gzip -t "$BACKUP_FILE"

echo "Creating checksum..."
sha256sum "$BACKUP_FILE" > "$CHECKSUM_FILE"

echo "Backup complete."
echo "Archive:  $BACKUP_FILE"
echo "Checksum: $CHECKSUM_FILE"
