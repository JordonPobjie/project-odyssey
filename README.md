# 🚀 Project Odyssey

> **A self-hosted homelab for learning Linux, Docker, networking, automation, cloud, and DevOps.**

Project Odyssey is my personal infrastructure lab where I design, build, document, and maintain self-hosted services while learning modern infrastructure and cloud technologies.

What started as a simple media server has evolved into a long-term project focused on developing practical systems administration and DevOps skills through real-world experience.

---

# 🎯 Objectives

* Learn Linux administration
* Build production-style Docker environments
* Understand networking and DNS
* Implement reverse proxies and SSL
* Create automated backups and disaster recovery
* Learn monitoring and observability
* Practice Infrastructure as Code
* Explore AWS and Azure
* Document everything for repeatability

---

# 🖥️ Current Infrastructure

| Service             | Purpose                 | Status |
| ------------------- | ----------------------- | :----: |
| Ubuntu Server       | Host operating system   |    ✅   |
| Docker              | Container platform      |    ✅   |
| Docker Compose      | Service orchestration   |    ✅   |
| Portainer           | Docker management       |    ✅   |
| Pi-hole             | Local DNS & ad blocking |    ✅   |
| Nginx Proxy Manager | Reverse proxy           |    ✅   |
| Uptime Kuma         | Monitoring              |    ✅   |
| Jellyfin            | Media server            |    ✅   |
| Immich              | Photo management        |    ✅   |

---

# 📁 Repository Structure

```text
project-odyssey/
│
├── docker/
│   ├── immich/
│   ├── jellyfin/
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
│
├── .env.example
├── .gitignore
└── README.md
```

---

# 📚 Documentation

## Architecture

* Service inventory
* Network design
* Docker networking
* Storage layout

## Operations

* Installation guides
* Update procedures
* Backup procedures
* Restore procedures

## Learning Notes

Every major lesson learned while building the homelab is documented.

Examples include:

* Docker networking
* Reverse proxies
* Linux commands
* DNS troubleshooting
* Container management

---

# 🔐 Security

Project Odyssey follows a few important principles:

* Secrets stored in `.env`
* `.env` excluded from Git
* `.env.example` provided
* Runtime application data excluded from Git
* Documentation kept separate from configuration

---

# 💾 Backup Strategy

Planned backup coverage includes:

* Docker Compose files
* Configuration files
* Application data
* Databases
* Documentation

Automated backup scripts will be added as the project grows.

---

# 📈 Roadmap

## Phase 1 – Core Homelab

* [x] Ubuntu Server
* [x] Docker
* [x] Docker Compose
* [x] Portainer
* [x] Pi-hole
* [x] Nginx Proxy Manager
* [x] Uptime Kuma
* [x] Jellyfin
* [x] Immich

---

## Phase 2 – Automation

* [ ] Automated backups
* [ ] Restore scripts
* [ ] Container update scripts
* [ ] Homepage dashboard
* [ ] Watchtower

---

## Phase 3 – Monitoring

* [ ] Prometheus
* [ ] Grafana
* [ ] Log aggregation
* [ ] Metrics dashboards

---

## Phase 4 – Infrastructure as Code

* [ ] Terraform
* [ ] Ansible
* [ ] GitHub Actions
* [ ] CI/CD pipelines

---

## Phase 5 – Cloud

* [ ] AWS
* [ ] Azure
* [ ] Hybrid networking
* [ ] VPN integration

---

## Phase 6 – Kubernetes

* [ ] k3s
* [ ] High Availability
* [ ] Multi-node cluster

---

# 🎓 Skills Being Developed

* Linux
* Docker
* Networking
* DNS
* Reverse Proxy
* Bash
* Git
* GitHub
* Infrastructure Documentation
* Automation
* Monitoring
* DevOps
* Cloud Computing

---

# 📜 License

This repository is intended as a personal learning project and portfolio demonstrating practical infrastructure and DevOps skills.
