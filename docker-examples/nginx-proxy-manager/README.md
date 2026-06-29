# Nginx Proxy Manager

## Purpose

Nginx Proxy Manager provides a web interface for managing reverse proxy rules.

It allows services to be accessed through friendly names instead of IP addresses and ports.

## Why Nginx Proxy Manager?

- Easier reverse proxy management
- Web interface
- SSL certificate support
- Docker compatible
- Useful for learning reverse proxy concepts

## Access

Admin URL:

http://192.168.1.130:81

Container URL:

http://nginx-proxy-manager:81

## Container

nginx-proxy-manager

## Docker Image

jc21/nginx-proxy-manager:latest

## Network

homelab

## Ports

| Host | Container | Purpose |
|---|---|---|
| 80 | 80 | HTTP |
| 81 | 81 | Admin interface |
| 443 | 443 | HTTPS |

## Volumes

| Host Path | Container Path | Purpose |
|---|---|---|
| /home/jordon/docker/nginx-proxy-manager/data | /data | Application data |
| /home/jordon/docker/nginx-proxy-manager/letsencrypt | /etc/letsencrypt | SSL certificates |

## Important Data

Important data is stored in:

```text
/home/jordon/docker/nginx-proxy-manager/data
/home/jordon/docker/nginx-proxy-manager/letsencrypt