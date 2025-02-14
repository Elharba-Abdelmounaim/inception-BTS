Inception
What is Docker?
Commands
image
container
Data Persistence
Volumes
Mount
The Difference between Volume and Mount
Data Persistence
Real-time Interaction
Docker Network
Type of Docker Networks
Bridge Network
Host Network
IP Address Assignment
Docker-Compose
Docker-Compose Commands
PID 1 (Process ID 1)
Inception
This project aims to broaden your knowledge of system administration by using Docker. You will virtualize several Docker images, creating them in your new personal virtual machine.

What is Docker?
Docker is a platform and tool designed to help developers, system administrators, and DevOps engineers create, deploy, and run applications in containers. Containers are lightweight and portable units that can package an application and its dependencies, including libraries and runtime, into a single image. Docker provides a way to automate the deployment of applications in a consistent and predictable manner, regardless of the environment they are running in.

Here are Docker's key components:

Docker Engine: This is the kernel of docker, it is responsible for building running, and managing containers.
Docker Image: A snapshot of a filesystem that includes all things we need to run an application, including the code, runtime environments, parent images, libs ...etc
Docker Container: An instance of a Docker image that can be run, started, stopped, moved, and deleted. Containers are isolated from each other and the host system.
Dockerfile: A text file that contains a set of instructions for building a Docker image. It defines the base image, adds application code, sets environment variables, and configures the container's behavior.
Docker Hub: A public cloud-based registry where Docker images can be stored, shared, and distributed. Docker Hub provides a vast repository of public images that can be used as a base for your containers.
Docker Compose: A tool for defining and running multi-container applications using a simple YAML file. It allows you to define the services, networks, and volumes for your application stack.
Docker Daemon: listens for Docker API requests and manages Docker objects such as images, containers, networks, and volumes
Docker namespaces: Docker uses a technology called namespaces to provide an isolated workspace called a container. when you run a container, Docker creates a set of namespaces for that container. These namespaces provide a layer of isolation namespace and its access is limited to that namespaces.
