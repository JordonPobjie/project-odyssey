# Jellyfin

## Purpose

Jellyfin is the media streaming service for Project Homelab.

It is used to host and stream media from the server to devices on the local network.

## Access

Local URL:

http://192.168.1.130:8096

Container URL from inside Docker network:

http://jellyfin:8096

## Container

Container name:

jellyfin

## Docker Image

jellyfin/jellyfin:latest

## Network

Attached to shared Docker network:

homelab

## Ports

| Host Port | Container Port | Purpose |
|---|---|---|
| 8096 | 8096 | Jellyfin web interface |

## Volumes

| Host Path | Container Path | Purpose |
|---|---|---|
| /home/jordon/docker/jellyfin/config | /config | Jellyfin configuration and library data |
| /home/jordon/docker/jellyfin/cache | /cache | Jellyfin cache |
| /home/jordon/media | /media | Media library |

## Important Data

The most important data is stored in:

/home/jordon/docker/jellyfin/config

This should be backed up.

The media library is stored in:

/home/jordon/media

## Start

```bash
cd ~/docker/jellyfin
docker-compose up -d