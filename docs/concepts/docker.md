# Docker

## What is Docker?

Docker is a platform that allows you to run applications inside **containers**. I think of a container as a "mini-lab" where each application has its own isolated environment. This means one application is much less likely to interfere with another, even though they are all running on the same computer.

Docker manages these containers and makes it easy to create, remove and recreate them whenever needed.

---

## Why do we use Docker?

We use Docker because it makes applications:

* Easy to install
* Easy to move to another computer
* Easy to rebuild if something goes wrong
* Easier to keep separated from other applications
* Consistent, so they behave the same on different computers

Instead of spending hours installing software manually, Docker can rebuild an application in minutes using a Docker Compose file.

---

## Advantages

* Makes rebuilding applications quick and easy.
* Keeps applications isolated from one another.
* Makes moving applications between computers simple.
* Makes updating applications easier.
* Configuration can be stored as code (Docker Compose), making recovery much easier.

---

## Disadvantages

* There is a learning curve.
* You need to understand concepts like images, containers, volumes and networking.
* Applications still need their data backed up separately.

---

## Important Concepts

### Container

A running instance of an application. Containers are designed to be temporary and can be deleted and recreated.

**Example:** Jellyfin, Immich and Pi-hole are all running as containers on my server.

---

### Image

The blueprint used to create a container.

If a container is like a house, the image is the architectural plan.

Docker downloads images from Docker Hub (or another registry).

---

### Volume

A Docker-managed storage location used to keep important data.

Volumes continue to exist even if the container is deleted.

Example:

If I delete the Uptime Kuma container, all my monitors still exist because they are stored in a Docker volume.

---

### Bind Mount

A folder on the host computer that is linked directly into the container.

Example:

/home/jordon/media

exists on Debian but is made available inside Jellyfin.

---

### Docker Compose

A YAML file that describes how Docker should build and run an application.

It contains things like:

* Image
* Ports
* Networks
* Volumes
* Environment variables

I think of it as the recipe for rebuilding an application.

---

### Network

A virtual network that allows containers to communicate.

Containers on the same Docker network can communicate using their container names instead of IP addresses.

Example:

http://jellyfin:8096

works because Jellyfin and Uptime Kuma are on the same Docker network.

---

## Things I Learned

* Containers are designed to be disposable.
* Data should be stored outside the container.
* Docker Compose is both documentation and a rebuild recipe.
* A shared Docker network allows containers to communicate directly.
* Docker provides its own internal DNS for containers on the same network.
* Containers can usually be recreated in minutes, but data cannot.
