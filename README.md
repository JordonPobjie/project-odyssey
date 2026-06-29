# Project Homelab

## Overview

Project Homelab is my personal infrastructure project, built to learn and practise Linux system administration, Docker, networking, monitoring, documentation, automation and DevOps principles.

The goal is not simply to run a media server, but to build and maintain a professional-quality infrastructure environment while understanding **how** each component works.

---

## Objectives

* Learn Linux administration
* Learn Docker and Docker Compose
* Understand networking and DNS
* Learn Git and Infrastructure as Code
* Build reliable backup and disaster recovery procedures
* Gain practical experience with technologies used in industry

---

## Current Infrastructure

### Operating System

* Debian 12 (Bookworm)

### Docker Services

* Jellyfin – Media server
* Immich – Photo management and backup
* Pi-hole – DNS and ad blocking
* Uptime Kuma – Service monitoring
* Portainer – Docker management
* Nginx Proxy Manager – Reverse proxy

### Networking

* Shared Docker bridge network (`homelab`)
* Container-to-container communication by container name

---

## Repository Structure

```text
Project-Homelab/
├── docker/
│   ├── jellyfin/
│   ├── immich/
│   ├── nginx-proxy-manager/
│   ├── pihole/
│   ├── portainer/
│   └── uptime-kuma/
│
├── docs/
│   ├── architecture/
│   ├── concepts/
│   ├── disaster-recovery/
│   ├── lessons/
│   └── operations/
│
├── scripts/
├── backups/
├── .gitignore
└── README.md
```

---

## Design Principles

Project Homelab follows a few simple principles:

* Containers should be disposable.
* Data should be persistent.
* Everything important should be documented.
* Infrastructure should be reproducible.
* Every significant change should be version controlled.
* Back up anything that cannot easily be recreated.

---

## Learning Philosophy

This project is intentionally built slowly.

Rather than only installing software, each new component is studied to understand:

1. What problem does it solve?
2. How does it work?
3. Why was this design chosen?
4. How would it be recovered after a failure?

The aim is to build practical engineering skills rather than simply following tutorials.

---

## Roadmap

### Phase 1 – Foundations ✅

* Debian
* SSH
* Docker
* Docker Compose
* Jellyfin
* Immich
* Pi-hole
* Portainer
* Uptime Kuma
* Nginx Proxy Manager
* Shared Docker networking

### Phase 2 – Professionalise Infrastructure 🚧

* Documentation
* Git
* Secrets management
* Disaster recovery
* Standardised project structure

### Phase 3 – Monitoring

* Prometheus
* Grafana
* Node Exporter

### Phase 4 – Automation

* Automated backups
* Health monitoring
* Update procedures

### Phase 5 – Cloud & DevOps

* GitHub
* GitHub Actions
* CI/CD
* AWS / Azure integration

---

## Status

Project currently under active development.

```
```
