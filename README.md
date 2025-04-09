<img src="https://github.com/user-attachments/assets/10c5ea5e-e767-4726-8d04-e899c3865864">

# 🚢 Introduction to Docker - Beginner-Friendly Guide

Welcome, everyone! 👋  
This guide is designed to help you understand Docker — what it is, why it's useful, and how to start using it.  
No prior experience needed!

---

## 🗺️ Presentation Plan

Here’s the flow we will follow during this presentation:


1. **What problem does Docker solve?**
2. **What is Docker?**
3. **Docker vs Virtual Machines**
4. **Why Developers Love Docker**
5. **Core Concepts** (Image, Container, Dockerfile, etc.)
6. **Setup a Node.js App**
7. **Writing a Dockerfile + Optimization Tips**
8. **Docker Hot Reload**
9. **Docker Volumes**
10. **Docker in Action**: Basic commands

---

## 🧠 What is `dockerd` and why is it important?

- `dockerd` stands for **Docker Daemon**.
- It is the **background service** that manages:
  - Containers
  - Images
  - Networks
  - Volumes
- It listens to Docker CLI commands (like `docker run`) and executes them.
- Think of it as the **brain** of Docker that does the heavy lifting.

> Without `dockerd`, Docker wouldn’t work. It’s like the engine of a car.

---

## 🔧 What problem does Docker solve?

Imagine you're a chef, and to cook a recipe, you always have to bring:
- Ingredients
- Oven
- Tools
- Gas...

What if you had a **magic box** that has everything you need to cook your dish — and it works anywhere?  
That’s what Docker does for developers.

---

## 🐳 What is Docker?

Docker is a platform that packages apps and everything they need (dependencies, configs) into **containers** that work the same on:
- Developer machines 🧑‍💻
- Testing environments 🧪
- Production servers 🚀

---

## ⚖️ Docker vs Virtual Machines

| Feature             | Virtual Machine                | Docker Container              |
|---------------------|--------------------------------|-------------------------------|
| Operating System     | Full OS (heavy)                | Shares host OS kernel         |
| Size                 | Large                          | Lightweight                   |
| Speed                | Slow startup                   | Fast startup                  |
| Performance          | More overhead                  | Very efficient                |
| Use Case             | Full system isolation          | App-level isolation           |

---

## ✅ Why Developers Use Docker

- ⚡ Fast and consistent development
- 📦 Easy to package and deploy
- 🛠️ Works the same everywhere
- 👥 Simplifies team collaboration

---

## 🧩 Core Docker Concepts

| Term            | Description                                                  |
|------------------|--------------------------------------------------------------|
| **Image**        | A template with your app and its dependencies                |
| **Container**    | A running version of an image                                |
| **Dockerfile**   | A script that builds an image                                |
| **Volume**       | External storage for your container                          |
| **Network**      | Allows containers to communicate                             |
| **Docker Hub**   | Cloud repository of ready-to-use images                      |
| **dockerd**      | Docker Daemon (background service that runs containers)      |

---

## 🛠️ Essential Docker Commands

```bash
docker run hello-world            # Run a test container
docker ps                         # List running containers
docker images                     # List downloaded images
docker build -t myapp .           # Build image from Dockerfile
docker exec -it container_id bash # Open a shell inside container
docker stop/start/restart id      # Manage container status
docker-compose up -d              # Launch multi-container app
