#!/bin/bash

set -euo pipefail

PROJECT_DIR="$HOME/project-odyssey"
BACKUP_DIR="$HOME/project-odyssey-backups/project"

source "$PROJECT_DIR/lib/common.sh"

section "Project Odyssey Doctor"

heading "Host"

if ping -c 1 1.1.1.1 >/dev/null 2>&1; then
    pass "Internet reachable"
else
    fail "Internet not reachable"
fi

if systemctl is-active --quiet docker; then
    pass "Docker service running"
else
    fail "Docker service not running"
fi

if docker ps >/dev/null 2>&1; then
    pass "Docker command working"
else
    fail "Docker command failed"
fi

heading "Git"

cd "$PROJECT_DIR"

if git diff --quiet && git diff --cached --quiet; then
    pass "Git working tree clean"
else
    fail "Git has uncommitted changes"
fi

if git remote -v | grep -q "git@github.com:JordonPobjie/project-odyssey.git"; then
    pass "Git remote uses SSH"
else
    fail "Git remote is not using SSH"
fi

heading "Backups"

if ls "$BACKUP_DIR"/*.tar.gz >/dev/null 2>&1; then
    pass "Project backups found"
else
    fail "No project backups found"
fi

if ls "$BACKUP_DIR"/*.sha256 >/dev/null 2>&1; then
    pass "Backup checksums found"
else
    fail "No backup checksums found"
fi

heading "Containers"

for container in portainer pihole nginx-proxy-manager uptime-kuma jellyfin immich_server; do
    if docker ps --format '{{.Names}}' | grep -q "^${container}$"; then
        pass "$container running"
    else
        fail "$container not running"
    fi
done

echo
echo "Doctor check complete."
