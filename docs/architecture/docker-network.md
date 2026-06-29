# Docker Network

## Network Name

homelab

## Purpose

The homelab network is a shared external Docker bridge network.

It allows containers from separate Docker Compose stacks to communicate with each other using container names.

## Examples

Uptime Kuma can reach services using:

- http://jellyfin:8096
- http://immich_server:2283
- http://pihole/admin/
- https://portainer:9443
- http://nginx-proxy-manager:81

## Why This Matters

Before the shared network, each Compose stack had its own isolated network.

This caused Uptime Kuma to have trouble resolving services like media.home.

The shared homelab network allows direct container-to-container communication without relying on LAN DNS.
