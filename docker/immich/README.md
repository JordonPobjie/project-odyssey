# Immich

## Purpose

Immich is the photo and video backup service for Project Homelab.

It is used as a self-hosted alternative to cloud photo services.

## Why Immich?

- Self-hosted photo backup
- Mobile app support
- Timeline and album views
- Face recognition and search features
- Keeps personal photos under my control

## Access

Local URL:

http://192.168.1.130:2283

Container URL:

http://immich_server:2283

## Architecture

Immich uses multiple containers:

| Container | Purpose |
|---|---|
| immich_server | Main web application and API |
| immich_machine_learning | Machine learning features |
| immich_postgres | Database |
| immich_redis | Cache/queue service |

## Network

homelab

## Important Data

Important data is stored in:

```text
/home/jordon/media/Immich/Library
/home/jordon/media/Immich/Postgres