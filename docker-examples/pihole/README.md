# Pi-hole

## Purpose

Pi-hole provides DNS services for the homelab while blocking advertisements and known malicious domains across the network.

## Why Pi-hole?

* Network-wide ad blocking
* Local DNS records
* Improves privacy
* Docker compatible
* Easy to back up and restore

## Access

Local URL:

http://192.168.1.130:8081/admin

Container URL:

http://pihole/admin

## Container

pihole

## Docker Image

pihole/pihole:latest

## Network

homelab

## Ports

| Host   | Container | Purpose            |
| ------ | --------- | ------------------ |
| 53 TCP | 53        | DNS                |
| 53 UDP | 53        | DNS                |
| 8081   | 80        | Web Administration |

## Volumes

Docker Volumes:

* pihole_etc
* pihole_dnsmasq

## Important Data

The Docker volumes contain:

* DNS configuration
* Local DNS records
* Blocklists
* Settings

These volumes should be backed up.

## Start

```bash
cd ~/docker/pihole
docker compose up -d
```

## Stop

```bash
cd ~/docker/pihole
docker compose down
```

## Update

```bash
cd ~/docker/pihole
docker compose pull
docker compose up -d
```

## Logs

```bash
docker logs pihole
```

## Recovery

1. Restore Docker volumes.
2. Start container.
3. Verify DNS resolution.
4. Confirm local DNS records exist.

## Things I Learned

* Docker containers can provide DNS services.
* Pi-hole stores important configuration inside Docker volumes.
* Containers on the homelab network can communicate directly.
