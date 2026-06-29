# Service Inventory

## Server

Hostname: mediaserver  
Operating System: Debian 12 Bookworm  
LAN IP: 192.168.1.130  

## Shared Docker Network

Network name: homelab

## Services

| Service | Container Name | URL | Purpose |
|---|---|---|---|
| Jellyfin | jellyfin | http://192.168.1.130:8096 | Media streaming |
| Immich | immich_server | http://192.168.1.130:2283 | Photo backup and gallery |
| Pi-hole | pihole | http://192.168.1.130:8081/admin | DNS and ad blocking |
| Uptime Kuma | uptime-kuma | http://192.168.1.130:3001 | Service monitoring |
| Portainer | portainer | https://192.168.1.130:9443 | Docker management |
| Nginx Proxy Manager | nginx-proxy-manager | http://192.168.1.130:81 | Reverse proxy |
