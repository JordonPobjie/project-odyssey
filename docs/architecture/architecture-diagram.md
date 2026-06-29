# Architecture Diagram

This diagram shows the current Project Odyssey homelab layout.

```mermaid
flowchart TD
    Internet((Internet))
    Router[Home Router]
    Server[mediaserver<br/>Debian 12<br/>192.168.1.130]

    ClientDevices[Client Devices<br/>PC / Phone / TV / Console]

    Docker[Docker Engine]
    Network[Docker Network<br/>homelab]

    Pihole[Pi-hole<br/>DNS + Ad Blocking]
    NPM[Nginx Proxy Manager<br/>Reverse Proxy]
    Portainer[Portainer<br/>Docker Management]
    Kuma[Uptime Kuma<br/>Monitoring]
    Jellyfin[Jellyfin<br/>Media Streaming]
    Immich[Immich<br/>Photo Backup]

    Internet --> Router
    Router --> Server
    ClientDevices --> Router

    Server --> Docker
    Docker --> Network

    Network --> Pihole
    Network --> NPM
    Network --> Portainer
    Network --> Kuma
    Network --> Jellyfin
    Network --> Immich

    ClientDevices --> Pihole
    ClientDevices --> NPM

    NPM --> Jellyfin
    NPM --> Immich
    Kuma --> Jellyfin
    Kuma --> Immich
    Kuma --> Pihole
    Kuma --> NPM
```

## Notes

- `mediaserver` is the main Docker host.
- Docker services run on the shared `homelab` network.
- Pi-hole provides local DNS and ad blocking.
- Nginx Proxy Manager handles friendly service URLs and reverse proxying.
- Uptime Kuma monitors service availability.
- Jellyfin provides media streaming.
- Immich provides photo and video backup.
