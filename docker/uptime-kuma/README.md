# Uptime Kuma

## Purpose

Monitors services running on the homelab and alerts if they become unavailable.

## Why Uptime Kuma?

* Lightweight
* Open source
* Docker compatible
* Easy monitoring dashboard
* Supports HTTP, Ping, TCP and more

## Access

http://192.168.1.130:3001

Container URL:

http://uptime-kuma:3001

## Container

uptime-kuma

## Docker Image

louislam/uptime-kuma:latest

## Network

homelab

## Ports

| Host | Container |
| ---- | --------- |
| 3001 | 3001      |

## Volumes

Docker Volume:

* uptime-kuma

## Important Data

The Docker volume stores:

* Monitors
* History
* Notifications
* User accounts

## Start

```bash
cd ~/docker/uptime-kuma
docker compose up -d
```

## Stop

```bash
cd ~/docker/uptime-kuma
docker compose down
```

## Update

```bash
cd ~/docker/uptime-kuma
docker compose pull
docker compose up -d
```

## Logs

```bash
docker logs uptime-kuma
```

## Recovery

Restore the uptime-kuma Docker volume before starting the container.

## Things I Learned

* Containers should communicate over a shared Docker network.
* Docker volumes survive container deletion.
